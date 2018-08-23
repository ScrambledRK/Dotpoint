package at.dotpoint.processor;

import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.processor.task.ITask;
import at.dotpoint.processor.task.ATask;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
class AsyncProcessor extends ATask
{

	/**
	 * queue of actions to execute one by one
	 */
	@:isVar public var tasks(get, set):Array<ITask>;

	/**
	 * index to currently executing action
	 */
	public var current(default, null):Int;

	/**
	 * return true if error should be ignored and execution should continue
	 */
	public var errorHandler:ErrorEvent->Bool;

	/**
	 * return true if stop should be ignored and execution should continue
	 */
	public var stoppedHandler:StatusEvent->Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher )
	{
		super( proxy );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	//
	public function get_tasks( ):Array<ITask>
	{
		return this.tasks;
	}

	//
	public function set_tasks( tasks:Array<ITask> ):Array<ITask>
	{
		if( this.isProcessing )
			throw "cannot replace tasks while processing";

		return this.tasks = tasks;
	}

	// ************************************************************************ //
	// Process
	// ************************************************************************ //

	/**
	 *
	 */
	override public function start( ):Void
	{
		if( this.tasks == null )
			throw "task list is null, cannot process";

		// -------------- //

		var total:Float = 0;

		for( task in this.tasks )
			total += task.weight;

		for( task in this.tasks )
			task.weight /= total;

		// -------------- //
		//

		this.current = -1;
		this.setStatus( StatusEvent.STARTED, true );

		this.next();
	}

	/**
	 *
	 */
	override public function stop():Void
	{
		if( this.isProcessing )
		{
			var task:ITask = this.tasks[ this.current ];
				task.removeListener( StatusEvent.STOPPED,   this.onTaskEvent );
				task.removeListener( StatusEvent.COMPLETE,  this.onTaskEvent );
				task.removeListener( ErrorEvent.ERROR,      this.onTaskEvent );

			if( task.isProcessing )
				task.stop();
		}

		//
		this.current = -1;
		this.setStatus( StatusEvent.STOPPED, true );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 *
	 */
	private function next( ):Void
	{
		this.current++;
		this.onProgress( null );

		//
		if( this.current >= this.tasks.length )
		{
			this.setStatus( StatusEvent.COMPLETE, true );
		}
		else
		{
			var task:ITask = this.tasks[ this.current ];
				task.addListener( ProgressEvent.PROGRESS, this.onProgress  );
				task.addListener( StatusEvent.STOPPED,    this.onTaskEvent );
				task.addListener( StatusEvent.COMPLETE,   this.onTaskEvent );
				task.addListener( ErrorEvent.ERROR,       this.onError );
				task.start();
		}
	}

	/**
	 *
	 * @param	event
	 */
	private function onTaskEvent( event:StatusEvent ):Void
	{
		var task:ITask = this.tasks[ this.current ];
			task.removeListener( ProgressEvent.PROGRESS, this.onProgress  );
			task.removeListener( StatusEvent.STOPPED,    this.onTaskEvent );
			task.removeListener( StatusEvent.COMPLETE,   this.onTaskEvent );
			task.removeListener( ErrorEvent.ERROR,       this.onError );

		// ------------- //

		switch( event.type )
		{
			case StatusEvent.COMPLETE:
				this.next();

			//
			case StatusEvent.STOPPED:
				this.processStop( event );

			//
			default:
				throw "unexpected task event: " + event.type;
		}
	}

	/**
	 *
	 * @param	event
	 */
	private function onError( event:ErrorEvent ):Void
	{
		var task:ITask = this.tasks[ this.current ];
			task.removeListener( ProgressEvent.PROGRESS, this.onProgress  );
			task.removeListener( StatusEvent.STOPPED,    this.onTaskEvent );
			task.removeListener( StatusEvent.COMPLETE,   this.onTaskEvent );
			task.removeListener( ErrorEvent.ERROR,       this.onError );

		// ------------- //

		this.processError( event );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	//

	//
	private function processStop( event ):Void
	{
		if( this.stoppedHandler == null )
			this.stop();

		//
		var proceed:Bool = this.stoppedHandler( cast( event, StatusEvent ) );

		if( proceed )  this.next();
		else           this.stop();
	}

	//
	private function processError( event ):Void
	{
		if( this.errorHandler == null )
			this.stop();

		//
		var proceed:Bool = this.errorHandler( cast( event, ErrorEvent ) );

		if( proceed )  this.next();
		else           this.stop();
	}

	//
	private function onProgress( parent:ProgressEvent ):Void
	{
		var current:Float = 0;

		for( j in 0...this.current )
			current += this.tasks[j].weight;

		var event:ProgressEvent = new ProgressEvent();
			event.current = current;
			event.total = 1;

		if( parent != null )
			event.current += parent.getRatio( ) * cast( parent.target, ITask ).weight;

		//
		this.dispatch( ProgressEvent.PROGRESS, event );
	}
}