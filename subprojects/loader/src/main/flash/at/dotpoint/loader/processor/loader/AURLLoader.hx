package flash.at.dotpoint.loader.processor.loader;

import flash.at.dotpoint.loader.processor.loader.AFlashLoader;
import flash.events.Event;
import flash.events.HTTPStatusEvent;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import haxe.at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.processor.loader.IDataLoader;
import haxe.at.dotpoint.loader.URLRequest;


/**
 * ...
 * @author Gerald Hattensauer
 */
@:noComplete
//
class AURLLoader<TOutput:Dynamic> extends AFlashLoader implements IDataLoader<TOutput>
{

	/**
	 *
	 */
	private var loader:URLLoader;

	/**
	 *
	 */
	public var result(default, null):TOutput;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	private function new( dataFormat:URLLoaderDataFormat )
	{
		super();

		this.loader = new URLLoader();
		this.loader.dataFormat = dataFormat;
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
		this.loader.addEventListener( IOErrorEvent.IO_ERROR, 				this.onErrorFlash	 );
		this.loader.addEventListener( SecurityErrorEvent.SECURITY_ERROR, 	this.onErrorFlash	 );
		this.loader.addEventListener( HTTPStatusEvent.HTTP_STATUS, 			this.onHTTP		 );
		this.loader.addEventListener( ProgressEvent.PROGRESS, 				this.onProgress	 );
		this.loader.addEventListener( Event.COMPLETE, 						this.onComplete	 );

		this.loader.load( request );

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

		this.loader.removeEventListener( IOErrorEvent.IO_ERROR, 				this.onErrorFlash	 );
		this.loader.removeEventListener( SecurityErrorEvent.SECURITY_ERROR, 	this.onErrorFlash	 );
		this.loader.removeEventListener( HTTPStatusEvent.HTTP_STATUS, 			this.onHTTP		 );
		this.loader.removeEventListener( ProgressEvent.PROGRESS, 				this.onProgress	 );
		this.loader.removeEventListener( Event.COMPLETE, 						this.onComplete	 );

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
		this.result = cast this.loader.data;
		super.onComplete();
	}

}