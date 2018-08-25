package at.dotpoint.processor.task;

//
import haxe.macro.Expr.Error;
import haxe.PosInfos;
import haxe.ds.Either;
import at.dotpoint.dispatcher.event.EventDispatcher;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

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
		//;
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

	/**
	 *
	 * @param	?complete
	 * @param	?progress
	 * @param	?error
	 */
	public function addStatusListener( ?complete:StatusEvent -> Void,
									   ?progress:ProgressEvent -> Void,
									   ?error:ErrorEvent -> Void ):Void
	{

		if( complete != null ) this.addListener( StatusEvent.COMPLETE, complete );
		if( progress != null ) this.addListener( ProgressEvent.PROGRESS, progress );
		if( error != null ) this.addListener( ErrorEvent.ERROR, error );
	}

	/**
	 *
	 * @param	?complete
	 * @param	?progress
	 * @param	?error
	 */
	public function removeStatusListener( ?complete:StatusEvent -> Void,
										  ?progress:ProgressEvent -> Void,
										  ?error:ErrorEvent -> Void ):Void
	{
		if( complete != null ) this.removeListener( StatusEvent.COMPLETE, complete );
		if( progress != null ) this.removeListener( ProgressEvent.PROGRESS, progress );
		if( error != null ) this.removeListener( ErrorEvent.ERROR, error );
	}
}
