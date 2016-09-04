package at.dotpoint.loader.format;

import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.processor.IDataProcessor;
import at.dotpoint.loader.processor.parser.NullParser;
import at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
class BinaryFormat implements IDataFormat
{

	@:isVar public static var instance(get, null):BinaryFormat;

	private static function get_instance():BinaryFormat
	{
		if( BinaryFormat.instance == null )
			BinaryFormat.instance = new BinaryFormat();

		return BinaryFormat.instance;
	}

	// ************************************************************************ //
	// Constructor:
	// ************************************************************************ //

	private function new()
	{

	}

	// ************************************************************************ //
	// Methodes:
	// ************************************************************************ //

	/**
	 * checks if the given URLRequests is of the format this class specifies.
	 * eg. ImageDataFormat gives true for *.png, *.jpeg etc files.
	 *
	 * @param	request
	 * @return
	 */
	public function isFormat( request:DataRequest ):Bool
	{
		return false;
	}

	/**
	 *
	 * @return
	 */
	public function createLoader( request:DataRequest ):IDataProcessor<URLRequest,Dynamic>
	{
		#if flash
			return new at.dotpoint.loader.processor.loader.BinaryLoader();
		#end

		return null;
	}

	/**
	 *
	 * @return
	 */
	public function createParser( request:DataRequest ):IDataProcessor<Dynamic,Dynamic>
	{
		return new NullParser();
	}
}