package flash.at.dotpoint.loader.processor.loader;

import flash.at.dotpoint.loader.processor.loader.AFlashLoader;
import flash.display.DisplayObject;
import flash.display.Loader;
import flash.events.Event;
import flash.events.HTTPStatusEvent;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;
import flash.system.LoaderContext;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.processor.loader.IDataLoader;
import haxe.at.dotpoint.loader.URLRequest;


/**
 * ...
 * @author Gerald Hattensauer
 */
@:noComplete
//
class ADisplayLoader<TOutput:DisplayObject> extends AFlashLoader implements IDataLoader<TOutput>
{

	/**
	 *
	 */
	private var loader:Loader;

	/**
	 *
	 */
	public var context:LoaderContext;

	/**
	 *
	 */
	public var result(default, null):TOutput;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	private function new()
	{
		super();

		this.loader = new Loader();
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
		this.loader.contentLoaderInfo.addEventListener( IOErrorEvent.IO_ERROR, 				this.onErrorFlash	 );
		this.loader.contentLoaderInfo.addEventListener( SecurityErrorEvent.SECURITY_ERROR, 	this.onErrorFlash	 );
		this.loader.contentLoaderInfo.addEventListener( HTTPStatusEvent.HTTP_STATUS, 		this.onHTTP		 );
		this.loader.contentLoaderInfo.addEventListener( ProgressEvent.PROGRESS, 			this.onProgress	 );
		this.loader.contentLoaderInfo.addEventListener( Event.COMPLETE, 					this.onComplete	 );

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

		this.loader.contentLoaderInfo.removeEventListener( IOErrorEvent.IO_ERROR, 				this.onErrorFlash	 );
		this.loader.contentLoaderInfo.removeEventListener( SecurityErrorEvent.SECURITY_ERROR, 	this.onErrorFlash	 );
		this.loader.contentLoaderInfo.removeEventListener( HTTPStatusEvent.HTTP_STATUS, 		this.onHTTP		 );
		this.loader.contentLoaderInfo.removeEventListener( ProgressEvent.PROGRESS, 				this.onProgress	 );
		this.loader.contentLoaderInfo.removeEventListener( Event.COMPLETE, 						this.onComplete	 );

		#if flash10_1
			if( this.isProcessing )
				this.loader.close();

			this.loader.unloadAndStop();
		#end

		this.loader = null;
	}

}