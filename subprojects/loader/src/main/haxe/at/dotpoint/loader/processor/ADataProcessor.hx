package at.dotpoint.loader.processor;

import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.dispatcher.event.EventDispatcher;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.loader.event.ProgressEvent;
import at.dotpoint.loader.processor.ADataProcessor.ABasicDataProcessor;

/**
 *
 */
class ABasicDataProcessor extends EventDispatcher
{

	public var isProcessing(default,null):Bool;
	public var isComplete(default,null):Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	private function new( ?target:IEventDispatcher )
	{
		this.isComplete = false;
		this.isProcessing = false;

		super( target );
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	/**
	 *
	 */
	public function stop():Void
	{
		this.setStatus( StatusEvent.STOPPED );
		this.close();
	}

	/**
	 *
	 */
	private function close():Void
	{
		return;
	}

	// ---------------------------------- //
	// ---------------------------------- //

	/**
	 *
	 * @param	event
	 */
	private function onComplete( ?event:Dynamic ):Void
	{
		this.setStatus( StatusEvent.COMPLETE );
		this.close();
	}

	/**
	 *
	 * @param	event
	 */
	private function onError( event:Event ):Void
	{
		if( event != null && this.hasListener( event.type ) )
			this.dispatch( event );

		this.stop();

		//
		if( !this.hasListener( event.type ) )
		{
			var error:ErrorEvent = cast event;

			if( error != null )	throw error.errorID + ": " + error.message;
			else				throw Std.string( event );
		}		
	}

	// ---------------------------------- //
	// ---------------------------------- //

	/**
	 * sets the isParsing/isComplete flags and dispatches the give type
	 */
	private function setStatus( type:String ):Void
	{
		switch( type )
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

		if( this.hasListener( type ) )
			this.dispatch( new StatusEvent( type ) );
	}




}

/**
 * ...
 * @author RK
 */
class ADataProcessor extends ABasicDataProcessor
{

	private function new( ?target:IEventDispatcher )
	{
		super( target );
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
	public function addStatusListener( ?complete:StatusEvent->Void, ?progress:ProgressEvent->Void, ?error:ErrorEvent->Void ):Void
	{
		var dyn_complete:Event->Void 	= cast complete;
		var dyn_progress:Event->Void 	= cast progress;
		var dyn_error:Event->Void 		= cast error;

		if( complete != null ) this.addListener( StatusEvent.COMPLETE, 	dyn_complete );
		if( progress != null ) this.addListener( ProgressEvent.PROGRESS, 	dyn_progress );

		if( error != null )
		{
			this.addListener( ErrorEvent.ERROR, 			dyn_error );
			this.addListener( ErrorEvent.IO_ERROR, 			dyn_error );
			this.addListener( ErrorEvent.SECURITY_ERROR, 	dyn_error );
		}
	}

	/**
	 *
	 * @param	?complete
	 * @param	?progress
	 * @param	?error
	 */
	public function removeStatusListener( ?complete:StatusEvent->Void, ?progress:ProgressEvent->Void, ?error:ErrorEvent->Void ):Void
	{
		var dyn_complete:Event->Void 	= cast complete;
		var dyn_progress:Event->Void 	= cast progress;
		var dyn_error:Event->Void	 	= cast error;

		if( complete != null ) this.removeListener( StatusEvent.COMPLETE, 	 dyn_complete );
		if( progress != null ) this.removeListener( ProgressEvent.PROGRESS, dyn_progress );

		if( error != null )
		{
			this.removeListener( ErrorEvent.ERROR, 			dyn_error );
			this.removeListener( ErrorEvent.IO_ERROR, 			dyn_error );
			this.removeListener( ErrorEvent.SECURITY_ERROR, 	dyn_error );
		}
	}

}