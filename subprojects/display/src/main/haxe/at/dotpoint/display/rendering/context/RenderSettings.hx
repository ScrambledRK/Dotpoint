package haxe.at.dotpoint.display.rendering.context;

import haxe.at.dotpoint.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.dispatcher.lazy.event.LazyEvent;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * 08.03.15
 * @author RK
 */
class RenderSettings extends EventDispatcher
{

	/**
	 * frames per second
	 */
	@:isVar public var frameRate(get,set):Int;

	/**
	 * RGB background color
	 */
	@:isVar public var colorBackground(get,set):Vector3;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( fps:Int = 30, ?bgcolor:Vector3 = null )
	{
		super();

		this.frameRate       = fps;
		this.colorBackground = bgcolor != null ? bgcolor : new Vector3(0.1, 0.1, 0.1);
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * frames per second
	 */
	private function get_frameRate():Int { return this.frameRate; }

	private function set_frameRate( value:Int ):Int
	{
		if( value < 1 )
			value = 1;

		if( value != this.frameRate )
		{
			this.frameRate = value;

			if( this.hasListener( LazyEvent.CHANGED ) )
				this.dispatch( new LazyEvent( LazyEvent.CHANGED, "frameRate" ) );
		}

		return this.frameRate;
	}

	/**
	 * frames per second
	 */
	private function get_colorBackground():Vector3 { return this.colorBackground; }

	private function set_colorBackground( value:Vector3 ):Vector3
	{
		if( this.colorBackground == null )
			this.colorBackground = new Vector3();

		if( value == null )
			value = new Vector3();

		// ------------ //

		value = value.clone();
		value.x = Math.min( 1, Math.max( 0, value.x ) );
		value.y = Math.min( 1, Math.max( 0, value.y ) );
		value.z = Math.min( 1, Math.max( 0, value.z ) );

		// ------------ //

		if( !Vector3.isEqual( this.colorBackground, value ) )
		{
			this.colorBackground.set( value.x, value.y, value.z, 0 );

			if( this.hasListener( LazyEvent.CHANGED ) )
				this.dispatch( new LazyEvent( LazyEvent.CHANGED, "colorBackground" ) );
		}

		return this.colorBackground;
	}
}
