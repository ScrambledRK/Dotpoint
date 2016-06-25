package haxe.at.dotpoint.loader.format;

import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.processor.IDataProcessor;
import haxe.at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
class SWFFormat extends ABaseDataFormat
{

	@:isVar public static var instance(get, null):SWFFormat;

	private static function get_instance():SWFFormat
	{
		if( SWFFormat.instance == null )
			SWFFormat.instance = new SWFFormat();

		return SWFFormat.instance;
	}

	// ************************************************************************ //
	// Constructor:
	// ************************************************************************ //

	private function new()
	{
		super( [ "swf" ] );
	}

	/**
	 *
	 * @return
	 */
	public override function createLoader( request:DataRequest ):IDataProcessor<URLRequest,Dynamic>
	{
		#if flash
			return new flash.at.dotpoint.loader.processor.loader.SWFLoader();
		#else
			return null;
		#end

		return null;
	}

}