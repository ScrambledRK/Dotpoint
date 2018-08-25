package at.dotpoint.remote.routing.http;

import at.dotpoint.remote.http.header.Status;
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
class ErrorResponse implements IRouteResponse
{
	private var code:Status;
	private var message:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( exception:RoutingException )
	{
		this.code = exception.code;
		this.message = exception.message;
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
		var status:String = 'HTTP/1.1. $code\n';

		if(this.message == null) status += "\n";
		else status += '$message\n\n';

		//
		var header:String = Header.encode( request.header ).join( "\n" );

		response.body = Bytes.ofString(status + header);
		response.header.contentType = MimeType.text;
		response.header.status = this.code;
	}
}
