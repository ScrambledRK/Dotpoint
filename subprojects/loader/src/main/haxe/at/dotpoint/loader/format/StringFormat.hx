package haxe.at.dotpoint.loader.format;

import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.processor.IDataProcessor;
import haxe.at.dotpoint.loader.processor.parser.JSONParser;
import haxe.at.dotpoint.loader.processor.parser.NullParser;
import haxe.at.dotpoint.loader.processor.parser.XMLParser;
import haxe.at.dotpoint.loader.URLRequest;

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
			return new flash.at.dotpoint.loader.processor.loader.StringLoader();
		#elseif js
			return new js.at.dotpoint.loader.processor.loader.StringLoader();
		#elseif php
			return new php.at.dotpoint.loader.processor.loader.StringLoader();
		#else
			return new sys.at.dotpoint.loader.processor.loader.StringLoader();
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