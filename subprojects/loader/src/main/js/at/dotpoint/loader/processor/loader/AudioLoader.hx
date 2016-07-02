package js.at.dotpoint.loader.processor.loader;

import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.event.ProgressEvent;
import haxe.at.dotpoint.loader.processor.ADataProcessor;
import haxe.at.dotpoint.loader.processor.loader.IDataLoader;
import haxe.at.dotpoint.loader.URLRequest;
import haxe.at.dotpoint.logger.Log;
import js.html.AudioElement;

/**
 * ...
 * @author RK
 */
@:require(js)
//
class AudioLoader extends ADataProcessor implements IDataLoader<AudioElement>
{

	/**
	 *
	 */
	private var loader:AudioElement;

	/**
	 *
	 */
	public var result(default, null):AudioElement;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
		this.loader = js.Browser.document.createAudioElement();
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
		this.loader.onerror	= this.onError;
		this.loader.addEventListener( "progress", this.onProgress );
		this.loader.addEventListener( "canplaythrough", this.onComplete );

		this.loader.src = request.url;

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

		this.loader.onerror = null;
		this.loader.removeEventListener( "progress", this.onProgress );
		this.loader.removeEventListener( "canplaythrough", this.onComplete );

		if( this.isProcessing )
			Log.warn( "Audio still loading, cannot abort it" );

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

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	data
	 */
	private function onProgress( event:Dynamic ):Void
	{
		if( this.hasListener( ProgressEvent.PROGRESS ) )
		{
			var evt:ProgressEvent = new ProgressEvent( ProgressEvent.PROGRESS );
				evt.bytesLoaded = event.loaded;
				evt.bytesTotal = event.total;

			this.dispatch( evt );
		}
	}
}