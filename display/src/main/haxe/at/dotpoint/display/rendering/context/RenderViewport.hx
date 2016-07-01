package haxe.at.dotpoint.display.rendering.context;

import haxe.at.dotpoint.core.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.display.event.DisplayEvent;

/**
 * 08.03.15
 * @author RK
 */
class RenderViewport extends EventDispatcher
{

	/**
	 * width of the viewport in pixel
	 */
	public var width(default, null):Int;

	/**
	 * height of the viewport in pixel
	 */
	public var height(default, null):Int;

	/**
	 * aspect ratio between width and height
	 */
	public var ratio(default, null):Float;

	// ------------------ //

	/**
	 * width / 2 of the viewport in pixel (for optimization purpose)
	 */
	public var width2(default, null):Float;

	/**
	 * height / 2 of the viewport in pixel (for optimization purpose)
	 */
	public var height2(default, null):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 * @param	w width in pixel
	 * @param	h height in pixel
	 */
	public function new( ?w:Int, ?h:Int )
	{
		super();

		if( w != null && h != null )
			this.setDimension( w, h );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * In case of change, will dispatch Event.RESIZE and calulate all dimension
	 * dependend properties anew. Might cause a lot of recalculation so change seldom
	 *
	 * @param	width in pixel
	 * @param	height in pixel
	 */
	public function setDimension( width:Int, height:Int ):Void
	{
		if ( width <= 0 || height <= 0 ) throw "dimension must be greater than zero";
		if ( width == this.width && height == this.height ) return;

		// ------------- //

		this.width   = width;
		this.width2  = width * 0.5;

		this.height  = height;
		this.height2 = height * 0.5;

		this.ratio = this.width / this.height;

		// ------------- //

		if( this.hasListener( DisplayEvent.VIEWPORT_RESIZE ) )
			this.dispatch( new DisplayEvent( DisplayEvent.VIEWPORT_RESIZE ) );
	}
}
