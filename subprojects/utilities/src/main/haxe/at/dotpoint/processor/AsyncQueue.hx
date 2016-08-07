package haxe.at.dotpoint.processor;

import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.processor.event.ProcessEvent;

/**
 * ...
 * @author RK
 */
class AsyncQueue extends EventDispatcher
{

	/**
	 * queue of actions to execute one by one
	 */
	public var taskList(default,null):Array<ITask>;

	/**
	 * currently executing action
	 */
	public var currentTask(default,null):ITask;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
		this.taskList = new Array<ITask>();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function isProcessing():Bool
	{
		return this.currentTask != null;
	}

	/**
	 *
	 * @param	task
	 */
	public function addTask( task:ITask):Void
	{
		this.taskList.push( task );
	}

	// ************************************************************************ //
	// Process
	// ************************************************************************ //

	/**
	 *
	 */
	public function process():Void
	{
		if( this.isProcessing() )
			throw "already processing: " + this.currentTask;

		this.executeNext();
		this.dispatch( new ProcessEvent( ProcessEvent.PROCESS_STARTED ) );
	}

	/**
	 *
	 */
	private function executeNext():Void
	{
		if( this.taskList.length != 0 )
		{
			this.currentTask = this.taskList.shift();

			this.currentTask.addListener( ProcessEvent.TASK_STARTED, this.dispatch );
			this.currentTask.addListener( ProcessEvent.TASK_COMPLETE, this.onTaskComplete );
			this.currentTask.execute();
		}
		else
		{
			this.currentTask = null;
			this.dispatch( new ProcessEvent( ProcessEvent.PROCESS_COMPLETE ) );
		}
	}

	/**
	 *
	 * @param	event
	 */
	private function onTaskComplete( event:Event ):Void
	{
		this.dispatch( event );

		this.currentTask.removeListener( ProcessEvent.TASK_STARTED, this.dispatch );
		this.currentTask.removeListener( ProcessEvent.TASK_COMPLETE, this.onTaskComplete );

		this.executeNext();
	}

	/**
	 *
	 * @param	value
	 * @return
	 */
	public override function dispatch(value:Event):Bool
	{
		if( Std.is( value, ProcessEvent ) )
		{
			var event:ProcessEvent = cast value;

			if( event.task == null )
				event.task = this.currentTask;
		}

		return super.dispatch( value );
	}
}