package haxe.at.dotpoint.display.renderable.texture.data;

import haxe.at.dotpoint.core.dispatcher.lazy.LazyComponent;
import haxe.at.dotpoint.core.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.renderable.ARenderableData;
import haxe.at.dotpoint.logger.Log;
import haxe.at.dotpoint.math.geom.Rectangle;
import haxe.at.dotpoint.math.vector.IVector2;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
class TextureData extends ARenderableData<TextureSignature> implements ITextureData
{

	/**
	 * array of RGBA values between 0 and 255 in a stride of 4 (R, G, B, A: for each pixel)
	 */
	public var pixels:Bytes;

	/**
	 * should not be negative
	 */
	public var width(default, null):Int;

	/**
	 * should not be negative
	 */
	public var height(default, null):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( width:Int, height:Int, ?bytes:Bytes )
	{
		super( "texture" );

		this.width = width;
		this.height = height;

		if( bytes == null )
		{
			this.pixels = Bytes.alloc( width * height * 4 );
		}
		else
		{
			this.pixels = bytes;

			if( width * height * 4 != this.pixels.length )
				Log.error( "given bitmapdata bytes not the same size as width * height" );
		}
	}

	// ************************************************************************ //
	// Signature
	// ************************************************************************ //

	/**
	 * returns a current list of RegisterTypes used, number of (unique) vertices and triangles
	 */
	override private function calculateSignature():TextureSignature
	{
		return new TextureSignature(0);
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	x
	 * @param	y
	 */
	public function getPixel( x:Int, y:Int ):Int
	{
		return this.pixels.get( this.getPosition( x, y ) );
	}

	/**
	 *
	 * @param	x
	 * @param	y
	 */
	public function setPixel( x:Int, y:Int, value:Int ):Void
	{
		this.pixels.set( this.getPosition( x, y ), value );
		this.lazyStatus = LazyStatus.INVALID;
	}

	// --------------------------------------------------------- //
	// --------------------------------------------------------- //

	/**
	 *
	 * @param	x
	 * @param	y
	 * @return
	 */
	inline private function getPosition( x:Int, y:Int ):Int
	{
		return (y * width + x) * 4;
	}

	// ************************************************************************ //
	// Static
	// ************************************************************************ //

	/**
	 *
	 * @param	source
	 * @param	target
	 * @param	from
	 * @param	to
	 */
	public static function blit( source:TextureData, ?target:TextureData, ?from:Rectangle, ?to:IVector2 ):TextureData
	{
		var fx:Int = 0;
		var fy:Int = 0;
		var fw:Int = source.width;
		var fh:Int = source.height;

		var tx:Int = 0;
		var ty:Int = 0;

		if( from != null )
		{
			fx = Std.int( from.min.x  );
			fy = Std.int( from.min.y  );
			fw = Std.int( from.width  );
			fh = Std.int( from.height );
		}

		if( to != null )
		{
			tx = Std.int( to.x );
			ty = Std.int( to.y );
		}

		// ------------- //

		var fmx:Int = fx + fw;
		var fmy:Int = fy + fh;

		var tmx:Int = tx + fw;
		var tmy:Int = ty + fh;

		if( target == null )
			target = new TextureData( tmx, tmy );

		// -------------- //

		if( fmx >= source.width || fmx < 0 || fmy >= source.height || fmy < 0 )
			throw "from, to specifications are outside source bounds";

		if( tmx >= target.width || tmx < 0 || tmy >= target.height || tmy < 0 )
			throw "from, to specifications are outside target bounds";

		// ------------- //

		if( fx == 0 && fy == 0 && tx == 0 && ty == 0 && fw == source.width && fh == source.height )		// fast copy
			return TextureData.copy( source, target );

		for( y in 0...fh )																					// blit each line
		{
			var tpos:Int = target.getPosition( tx, ty + y );
			var fpos:Int = source.getPosition( fx, fy + y );

			target.pixels.blit( tpos, source.pixels, fpos, fw );
		}

		// ------------- //

		target.lazyStatus = LazyStatus.INVALID;

		return target;
	}

	/**
	 *
	 * @param	source
	 * @param	target
	 */
	public static function copy( source:TextureData, ?target:TextureData ):TextureData
	{
		if( target == null )
			target = new TextureData( source.width, source.height );

		target.pixels.blit( 0, source.pixels, 0, source.pixels.length );
		target.lazyStatus = LazyStatus.INVALID;

		// ------------- //

		return target;
	}
}