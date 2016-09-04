package at.dotpoint.loader.processor.parser;

import flash.utils.ByteArray;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.display.renderable.texture.data.TextureData;
import at.dotpoint.loader.processor.ADataProcessor;
import at.dotpoint.loader.processor.IDataProcessor;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
class BitmapParser extends ADataProcessor implements IDataProcessor<flash.display.Bitmap,TextureData>
{

	/**
	 *
	 */
	public var result(default, null):TextureData;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	public function start( input:flash.display.Bitmap ):Void
	{
		var w:Int = Std.int( input.width );
		var h:Int = Std.int( input.height );

		var bytes:ByteArray = input.bitmapData.getPixels( input.getRect(null) );
			bytes.endian = flash.utils.Endian.LITTLE_ENDIAN;
			bytes.position = 0;

		flash.Memory.select( bytes );

		for ( i in 0...w * h ) 	// reversing bits - for some reason getPixels is ABGR
		{
			var p = (i << 2);

			var a = flash.Memory.getByte( p + 0 );
			var r = flash.Memory.getByte( p + 1 );
			var g = flash.Memory.getByte( p + 2 );
			var b = flash.Memory.getByte( p + 3 );

			flash.Memory.setByte(p + 0, b);
			flash.Memory.setByte(p + 1, g);
			flash.Memory.setByte(p + 2, r);
			flash.Memory.setByte(p + 3, a);
		}

		this.result = new TextureData( w, h, Bytes.ofData( bytes ) );

		this.setStatus( StatusEvent.STARTED );
		this.setStatus( StatusEvent.COMPLETE );
	}
}