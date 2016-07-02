package haxe.at.dotpoint.loader;

#if (flash10 || openfl)
	typedef URLRequest = flash.net.URLRequest;
#else
	typedef URLRequest = DotURLRequest;
#end

/**
 * ...
 * @author RK
 */
#if (!flash10 && !openfl)
//
private class DotURLRequest
{

	public var url:String;
	public var method:String;

	public var data:Dynamic;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?url:String = null )
	{
		this.url = url;
		this.method = URLRequestMethod.GET;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	public function clone():URLRequest
	{
		var request:URLRequest = new URLRequest( null );
			request.url 	= this.url;
			request.method 	= this.method;
			request.data 	= this.data;

		return request;
	}

	/**
	 *
	 * @return
	 */
	public function toString():String
	{
		return "[URLRequest:" + this.url + "]";
	}
}
//
#end

class URLRequestMethod
{
	public static var DELETE:String 	= "DELETE";
	public static var GET:String 		= "GET";
	public static var HEAD:String 		= "HEAD";
	public static var OPTIONS:String 	= "OPTIONS";
	public static var POST:String 		= "POST";
	public static var PUT:String 		= "PUT";
}