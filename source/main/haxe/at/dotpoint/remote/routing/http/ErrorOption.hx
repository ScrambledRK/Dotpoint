package at.dotpoint.remote.routing.http;

import haxe.io.Bytes;
import at.dotpoint.remote.http.response.ResponseHeader;
import at.dotpoint.remote.http.header.MimeType;
import at.dotpoint.remote.http.Header;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;
import haxe.io.Bytes;

/**
 *
 */
class ErrorOption implements IRouteOption
{
	private var code:Int;
	private var name:String;
	private var message:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( exception:RoutingException )
	{
		this.code = exception.code;
		this.name = exception.name;
		this.message = exception.message;

		if( this.message == null )
			this.message = "";
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function accepts(request:Request):Bool
	{
		return true;
	}

	//
	public function process(request:Request, response:Response<Bytes>):Void
	{
		var status:String = 'HTTP/1.1. $code\r\n\r\n';
			status += '$code $name\n$message\n\n';

		//
		var header:String = Header.encode( request.header ).join( "\r\n" );

		response.body = Bytes.ofString(status + header);
		response.header.contentType = MimeType.html;
		response.header.code = this.code;
	}
}
