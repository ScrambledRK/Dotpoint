package at.dotpoint.loader.processor.loader;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.loader.processor.ADataProcessor;
import at.dotpoint.loader.processor.loader.IDataLoader;
import at.dotpoint.loader.URLRequest;
import js.html.ImageElement;

/**
 * ...
 * @author RK
 */
@:require(js)
//
class ImageLoader extends ADataProcessor implements IDataLoader<ImageElement>
{

	/**
	 *
	 */
	private var loader:ImageElement;

	/**
	 *
	 */
	public var result(default, null):ImageElement;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
		this.loader = js.Browser.document.createImageElement();
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
		this.loader.onerror 		= this.onError;
		this.loader.onload			= this.onComplete;

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

		this.loader.onerror 	= null;
		this.loader.onload 		= null;

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