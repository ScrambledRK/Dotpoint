package at.dotpoint.remote.http.request;

/**
 * 
 */
abstract Method(String) from String to String
{
	public static var DELETE(default, never) = new Method("DELETE");
	public static var GET(default, never) = new Method("GET");
	public static var HEAD(default, never) = new Method("HEAD");
	public static var OPTIONS(default, never) = new Method("OPTIONS");
	public static var POST(default, never) = new Method("POST");
	public static var PUT(default, never) = new Method("PUT");


	//
	inline public function new( i:String )
	{
		this = StringTools.trim( i ).toUpperCase();
	}
}