package at.dotpoint.http;
/**
 * 
 */
abstract MimeType(String) from String to String
{
	public static var Json(default, never) = new MimeType("application/json");
	public static var Haxe(default, never) = new MimeType("application/haxe");
	public static var Html(default, never) = new MimeType("text/html");
	public static var Css(default, never) = new MimeType("text/css");
	public static var Javascript(default, never) = new MimeType("text/javascript");

	//
	inline public function new( i:String )
	{
		this = i;
	}
}