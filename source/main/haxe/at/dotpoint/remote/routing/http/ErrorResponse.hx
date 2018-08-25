package at.dotpoint.remote.routing.http;

import Std;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import haxe.CallStack;
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

	public var exception:ErrorEvent;
	public var context:String;

	//
	private var resolve:Void->Void;
	private var reject:Dynamic->Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?exception:ErrorEvent, ?context:String )
	{
		this.exception = exception;
		this.context = context;
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
	public function process(request:Request, callback:Response<Bytes>->Void ):Void
	{
		if( this.exception == null )
			this.exception = new ErrorEvent();


		//
		var code:Status = this.exception.code;
		var context:String = this.context != null ? "\tin " + this.context + "\n": "";

		var name:String = Std.string( code );
		var message:String = this.exception.message;
		var stack:String = this.exception.getCallStack();
		var position:String = this.exception.getPosition();

		//
		var status:String = 'HTTP/1.1. $name\n$context\n';
			status += '$message\n\t$position\n';
			status += '$stack\n\n';

		//
		var header:String = Header.encode( request.header ).join( "\n" );

		var response:Response<Bytes> = new Response<Bytes>();
			response.body = Bytes.ofString(status + header);
			response.header.contentType = MimeType.text;
			response.header.status = code;

		callback(response);
	}

	//
	public function then( resolve:Void->Void, ?reject:Dynamic->Void ):Void
	{
		this.resolve = resolve;
		this.reject = reject;
	}
}
