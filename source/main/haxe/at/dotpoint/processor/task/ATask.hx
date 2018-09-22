package at.dotpoint.processor.task;

//
import at.dotpoint.dispatcher.StatusPromise;
import at.dotpoint.dispatcher.event.EventDispatcher;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import haxe.PosInfos;

/**
 *
 */
@:access(at.dotpoint.dispatcher.StatusPromise)
//
class ATask extends EventDispatcher implements ITask
{

	//
	public var isProcessing(default, null):Bool;
	public var isComplete(default, null):Bool;

	//
	public var weight:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?proxy:IEventDispatcher, weight:Float = 1 )
	{
		super( proxy );

		this.isProcessing = false;
		this.isComplete = false;

		this.weight = weight;
	}

	// ************************************************************************ //
	// ITask
	// ************************************************************************ //

	/**
	 * starts the actions, fires StatusEvents according to the current state
	 */
	public function start( ):Void
	{
		if( this.isProcessing )
			throw "cannot start an already running process";
	}

	/**
	 * stops and removes any dependencies
	 */
	public function stop( ):Void
	{
		if( !this.isProcessing || this.isComplete )
			throw "cannot stop an idle process";
	}

	//
	private function error( message:Dynamic, ?code:Int, ?info:PosInfos ):Void
	{
		var event:ErrorEvent = ErrorEvent.from( message, code, info );

		//
		if( this.hasListener( event.type ) )
			this.dispatch( event.type, event );

		this.clear();
	}

	//
	public function clear():Void
	{
		this.clearListener();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * sets the isParsing/isComplete flags and dispatches the give type
	 */
	private function setStatus( type:String, dispatch:Bool = true ):Void
	{
		switch(type)
		{
			case StatusEvent.STARTED:
				{
					if( this.isProcessing )
						throw "cannot start an already running process";

					this.isProcessing = true;
					this.isComplete = false;
				}

			case StatusEvent.STOPPED:
				{
					if( !this.isProcessing || this.isComplete )
						throw "cannot stop an idle process";

					this.isProcessing = false;
					this.isComplete = false;
				}

			case StatusEvent.COMPLETE:
				{
					if( !this.isProcessing || this.isComplete )
						throw "cannot complete an idle process";

					this.isProcessing = false;
					this.isComplete = true;
				}

			default:
				throw "unknown status " + type;
		}

		//
		if( dispatch && this.hasListener( type ) )
			this.dispatch( type, new StatusEvent( type ) );
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	//
	public function addStatusListener( ?complete:StatusEvent -> Void,
									   ?progress:ProgressEvent -> Void,
									   ?error:ErrorEvent -> Void ):Void
	{

		if( complete != null ) this.addListener( StatusEvent.COMPLETE, complete );
		if( progress != null ) this.addListener( ProgressEvent.PROGRESS, progress );
		if( error != null ) this.addListener( ErrorEvent.ERROR, error );
	}

	//
	public function removeStatusListener( ?complete:StatusEvent -> Void,
										  ?progress:ProgressEvent -> Void,
										  ?error:ErrorEvent -> Void ):Void
	{
		if( complete != null ) this.removeListener( StatusEvent.COMPLETE, complete );
		if( progress != null ) this.removeListener( ProgressEvent.PROGRESS, progress );
		if( error != null ) this.removeListener( ErrorEvent.ERROR, error );
	}

	//
	public function addStatusPromise( promise:StatusPromise ):Void
	{
		this.addStatusListener( promise.complete, promise.progress, promise.error );
	}

	//
	public function removeStatusPromise( promise:StatusPromise ):Void
	{
		this.removeStatusListener( promise.complete, promise.progress, promise.error );
	}
}
