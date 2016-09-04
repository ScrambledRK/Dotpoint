package haxe.at.dotpoint.loader.format;

import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.processor.IDataProcessor;
import haxe.at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
class BitmapFormat extends ABaseDataFormat
{

	@:isVar public static var instance(get, null):BitmapFormat;

	private static function get_instance():BitmapFormat
	{
		if( BitmapFormat.instance == null )
			BitmapFormat.instance = new BitmapFormat();

		return BitmapFormat.instance;
	}

	// ************************************************************************ //
	// Constructor:
	// ************************************************************************ //

	private function new()
	{
		super( [ "png", "jpg", "jpeg", "gif" ] );
	}

	/**
	 *
	 * @return
	 */
	public override function createLoader( request:DataRequest ):IDataProcessor<URLRequest,Dynamic>
	{
		#if (flash)
			return new flash.at.dotpoint.loader.processor.loader.BitmapLoader();
		#elseif js
			return new js.at.dotpoint.loader.processor.loader.ImageLoader();
		#else
			return new sys.at.dotpoint.loader.processor.loader.BitmapLoader();
		#end

		return null;
	}

	public override function createParser(request:DataRequest):IDataProcessor<Dynamic, Dynamic>
	{
		#if (flash)
			return new flash.at.dotpoint.loader.processor.parser.BitmapParser();
		#else
			return super.createParser( request );
		#end

		return null;
	}
}