package at.dotpoint.remote.http;

import at.dotpoint.remote.http.header.Accept;
import at.dotpoint.remote.http.header.MimeType;
import at.dotpoint.remote.http.request.RequestHeader;
import at.dotpoint.remote.http.request.Method;
import at.dotpoint.remote.http.request.Parameters;

/**
 * GET / HTTP/1.1
 */
class Request
{

	public var url:String;
	public var parameter:Parameters;

	public var header:RequestHeader;
	public var method:Method;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( url:String, ?method:Method, ?header:RequestHeader )
	{
		this.url = url;
		this.parameter = url != null ? Parameters.decode( this.url ) : null;

		this.method = method != null ? method : Method.GET;
		this.header = header != null ? header : new RequestHeader();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function accepts( mime:MimeType ):Bool
	{
		var list:Array<Accept> = this.header.accept;

		trace("accept:",list);

		if( list == null || list.length == 0 )
			return false;

		for( v in list )
		{
			if( v.type == mime )
				return true;
		}

		return false;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function toString():String
	{
		return '[Request: $method $url]';
	}
}
