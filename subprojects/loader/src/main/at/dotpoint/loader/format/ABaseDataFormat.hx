package haxe.at.dotpoint.loader.format;

import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.processor.IDataProcessor;
import haxe.at.dotpoint.loader.processor.parser.NullParser;
import haxe.at.dotpoint.loader.URLRequest;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class ABaseDataFormat implements IDataFormat
{

	/**
	 * amount of individual components the data is composed of
	 */
	public var extensions(default, null):Vector<String>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	private function new( ?extensions:Array<String> )
	{
		this.extensions = extensions != null ? Vector.fromArrayCopy(extensions) : null;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 * @return
	 */
	public function isFormat( request:DataRequest ):Bool
	{
		return this.isValidExtension( this.extractExtension( request.request.url ) );
	}

	/**
	 *
	 * @return
	 */
	public function createLoader( request:DataRequest ):IDataProcessor<URLRequest,Dynamic>
	{
		throw "override this methode";
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

	// --------------------------------------------- //
	// --------------------------------------------- //

	/**
	 *
	 * @param	url
	 * @return
	 */
	private function extractExtension( url:String ):String
	{
		return url.split(".").pop().toLowerCase();
	}

	/**
	 *
	 * @param	extension
	 * @return
	 */
	private function isValidExtension( extension:String ):Bool
	{
		if ( this.extensions == null )
			throw "override isFormat, or fill the extensions vector";

		for ( i in 0...this.extensions.length )
		{
			if ( this.extensions.get(i) == extension )
			{
				return true;
			}
		}

		return false;
	}
}