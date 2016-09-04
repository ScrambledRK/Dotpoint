package at.dotpoint.loader.processor.loader;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.loader.event.HTTPStatusEvent;
import at.dotpoint.loader.event.ProgressEvent;
import at.dotpoint.loader.processor.ADataProcessor;

/**
 * ...
 * @author RK
 */
@:noComplete
//
class AFlashLoader extends ADataProcessor
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	private function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * dispatches a dotpoint ErrorEvent
	 * @param	event
	 */
	private function onErrorFlash( event:flash.events.ErrorEvent ):Void
	{
		this.onError( ErrorEvent.fromEvent( event ) );
	}

	/**
	 * dispatches a dotpoint ProgressEvent
	 * @param	event
	 */
	private function onProgress( event:flash.events.ProgressEvent ):Void
	{
		if( this.hasListener( event.type ) )
			this.dispatch( ProgressEvent.fromEvent( event ) );
	}

	/**
	 * dispatches a dotpoint ProgressEvent
	 * @param	event
	 */
	private function onHTTP( event:flash.events.HTTPStatusEvent ):Void
	{
		if( this.hasListener( event.type ) )
			this.dispatch( HTTPStatusEvent.fromEvent( event ) );
	}

}