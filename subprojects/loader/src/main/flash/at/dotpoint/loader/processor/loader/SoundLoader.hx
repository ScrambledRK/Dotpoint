package flash.at.dotpoint.loader.processor.loader;

import flash.at.dotpoint.loader.processor.loader.AFlashLoader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;
import flash.media.Sound;
import flash.media.SoundLoaderContext;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.event.HTTPStatusEvent;
import haxe.at.dotpoint.loader.processor.loader.IDataLoader;
import haxe.at.dotpoint.loader.URLRequest;


/**
 * ...
 * @author Gerald Hattensauer
 */
class SoundLoader extends AFlashLoader implements IDataLoader<Sound>
{

	/**
	 *
	 */
	private var loader:Sound;

	/**
	 *
	 */
	public var context:SoundLoaderContext;

	/**
	 *
	 */
	public var result(default, null):Sound;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();

		this.loader = new Sound();
		this.context = null;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	public function start( request:URLRequest ):Void
	{
		this.loader.addEventListener( IOErrorEvent.IO_ERROR, 				this.onError	 );
		this.loader.addEventListener( SecurityErrorEvent.SECURITY_ERROR, 	this.onError	 );
		this.loader.addEventListener( HTTPStatusEvent.HTTP_STATUS, 			this.onHTTP		 );
		this.loader.addEventListener( ProgressEvent.PROGRESS, 				this.onProgress	 );
		this.loader.addEventListener( Event.COMPLETE, 						this.onComplete	 );

		this.loader.load( request, this.context );

		this.setStatus( StatusEvent.STARTED );
	}

	// ----------------------------------------------------- //
	// ----------------------------------------------------- //

	/**
	 *
	 */
	override private function close():Void
	{
		if( this.loader == null ) return;

		this.loader.removeEventListener( IOErrorEvent.IO_ERROR, 				this.onError	 );
		this.loader.removeEventListener( SecurityErrorEvent.SECURITY_ERROR, 	this.onError	 );
		this.loader.removeEventListener( HTTPStatusEvent.HTTP_STATUS, 			this.onHTTP		 );
		this.loader.removeEventListener( ProgressEvent.PROGRESS, 				this.onProgress	 );
		this.loader.removeEventListener( Event.COMPLETE, 						this.onComplete	 );

		if( this.isProcessing )
			this.loader.close();
	}

	/**
	 *
	 * @param	event
	 */
	override private function onComplete( ?event:Dynamic ):Void
	{
		this.result = cast this.loader;
		super.onComplete();
	}
}