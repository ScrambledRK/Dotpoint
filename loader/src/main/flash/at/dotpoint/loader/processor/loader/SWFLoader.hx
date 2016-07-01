package flash.at.dotpoint.loader.processor.loader;

import flash.display.Loader;
import flash.events.Event;
import flash.events.HTTPStatusEvent;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;

/**
 * ...
 * @author Gerald Hattensauer
 */
class SWFLoader extends ADisplayLoader<Loader>
{

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 */
	override private function close():Void
	{
		if( this.loader == null ) return;

		this.loader.contentLoaderInfo.removeEventListener( IOErrorEvent.IO_ERROR, 				this.onError	 );
		this.loader.contentLoaderInfo.removeEventListener( SecurityErrorEvent.SECURITY_ERROR, 	this.onError	 );
		this.loader.contentLoaderInfo.removeEventListener( HTTPStatusEvent.HTTP_STATUS, 		this.onHTTP	 	 );
		this.loader.contentLoaderInfo.removeEventListener( ProgressEvent.PROGRESS, 				this.onProgress	 );
		this.loader.contentLoaderInfo.removeEventListener( Event.COMPLETE, 						this.onComplete	 );

		if( this.isProcessing )
			this.loader.close();

		this.loader = null;
	}

	/**
	 *
	 * @param	event
	 */
	override private function onComplete( ?event:Dynamic ):Void
	{
		this.result = this.loader;
		super.onComplete();
	}
}