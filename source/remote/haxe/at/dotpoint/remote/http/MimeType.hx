package at.dotpoint.remote.http;

/**
 * 
 */
abstract MimeType(String) from String to String
{
	public static var json(default, never) 			= new MimeType("application/json");
	public static var haxe(default, never) 			= new MimeType("application/haxe");
	public static var xml(default, never) 			= new MimeType("application/xml");
	public static var xhtml(default, never) 		= new MimeType("application/xhtml+xml");
	public static var html(default, never) 			= new MimeType("text/html");
	public static var css(default, never) 			= new MimeType("text/css");
	public static var javascript(default, never) 	= new MimeType("text/javascript");
	public static var webp(default, never) 			= new MimeType("image/webp");
	public static var png(default, never) 			= new MimeType("image/apng");
	public static var all(default, never) 			= new MimeType("*/*");

	//
	inline public function new( i:String )
	{
		this = i;
	}

	@:impl
	static public function qualityFactor( instance:String ):Float
	{
		return Header.parseQualityFactor( instance );
	}
}