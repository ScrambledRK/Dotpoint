package at.dotpoint.loader.format;

import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.processor.IDataProcessor;
import at.dotpoint.loader.URLRequest;

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
			return new at.dotpoint.loader.processor.loader.BitmapLoader();
		#elseif js
			return new at.dotpoint.loader.processor.loader.ImageLoader();
		#else
			return new at.dotpoint.loader.processor.loader.BitmapLoader();
		#end

		return null;
	}

	public override function createParser(request:DataRequest):IDataProcessor<Dynamic, Dynamic>
	{
		#if (flash)
			return new at.dotpoint.loader.processor.parser.BitmapParser();
		#else
			return super.createParser( request );
		#end

		return null;
	}
}