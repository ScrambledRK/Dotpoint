package at.dotpoint.loader.format;

import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.processor.IDataProcessor;
import at.dotpoint.loader.processor.parser.JSONParser;
import at.dotpoint.loader.processor.parser.NullParser;
import at.dotpoint.loader.processor.parser.XMLParser;
import at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
class StringFormat extends ABaseDataFormat
{

	@:isVar public static var instance(get, null):StringFormat;

	private static function get_instance():StringFormat
	{
		if( StringFormat.instance == null )
			StringFormat.instance = new StringFormat();

		return StringFormat.instance;
	}

	// ************************************************************************ //
	// Constructor:
	// ************************************************************************ //

	private function new()
	{
		super( [ "xml", "txt", "html", "htm", "css", "json" ] );
	}

	/**
	 *
	 * @return
	 */
	public override function createLoader( request:DataRequest ):IDataProcessor<URLRequest,Dynamic>
	{
		#if (flash)
			return new at.dotpoint.loader.processor.loader.StringLoader();
		#elseif js
			return new at.dotpoint.loader.processor.loader.StringLoader();
		#elseif php
			return new at.dotpoint.loader.processor.loader.StringLoader();
		#else
			return new at.dotpoint.loader.processor.loader.StringLoader();
		#end

		return null;
	}

	/**
	 *
	 * @return
	 */
	override public function createParser( request:DataRequest ):IDataProcessor<Dynamic,Dynamic>
	{
		var extension:String = this.extractExtension( request.request.url );

		switch( extension )
		{
			case "json":
				return new JSONParser();

			case "xml":
				return new XMLParser();
		}

		return new NullParser();
	}
}