package at.dotpoint.loader;

import at.dotpoint.loader.format.BitmapFormat;
import at.dotpoint.loader.format.IDataFormat;
import at.dotpoint.loader.format.SoundFormat;
import at.dotpoint.loader.format.StringFormat;
import at.dotpoint.loader.format.SWFFormat;

/**
 * ...
 * @author RK
 */
class DataHelper
{

	/**
	 *
	 */
	public var formats:Array<IDataFormat>;

	/**
	 *
	 */
	public var groups:Array<Dynamic>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	@:isVar public static var instance(get, null):DataHelper;

	private static function get_instance():DataHelper
	{
		if( DataHelper.instance == null )
			DataHelper.instance = new DataHelper();

		return DataHelper.instance;
	}

	private function new()
	{
		this.formats = this.initFormats();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function initFormats():Array<IDataFormat>
	{
		var list:Array<IDataFormat> = new Array<IDataFormat>();
			list.push( StringFormat.instance 	);
			list.push( BitmapFormat.instance 	);
			list.push( SoundFormat.instance 	);
			list.push( SWFFormat.instance 		);

		return list;
	}

	/**
	 *
	 * @param	request
	 * @return
	 */
	public function guessFormat( request:DataRequest ):IDataFormat
	{
		for( i in 0...this.formats.length )
		{
			var format:IDataFormat = this.formats[i];

			if( format.isFormat( request ) )
				return format;
		}

		return null;
	}
}