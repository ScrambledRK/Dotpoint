package at.dotpoint.remote.routing.http;

import at.dotpoint.exception.IException;
import at.dotpoint.remote.http.header.MimeType;
import at.dotpoint.remote.http.header.Status;
import at.dotpoint.remote.http.Header;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;
import haxe.CallStack;
import haxe.io.Bytes;
import haxe.PosInfos;
import Std;

/**
 *
 */
class ErrorResponse implements IRouteResponse
{

	public var exception:IException;
	public var context:String;

	//
	private var resolve:Void->Void;
	private var reject:Dynamic->Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( exception:IException, ?context:String )
	{
		this.exception = exception;
		this.context = context;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function accepts( request:Request ):Bool
	{
		return true;
	}

	//
	public function process( request:Request, callback:Response<Bytes>->Void ):Void
	{
		var body:String = this.getBody( request );

		var response:Response<Bytes> = new Response<Bytes>();
			response.body = Bytes.ofString( body );
			response.header.contentType = MimeType.text;
			response.header.status = this.exception.code;

		callback( response );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function getBody( request:Request ):String
	{
		var code:Status = this.exception.code;
		var context:String = this.context != null ? "\tin " + this.context + "\n" : "";

		var name:String = Std.string( code );
		var message:String = this.exception.message;
		var stack:String = this.getCallStack( );
		var position:String = this.getPosition( );

		//
		var status:String = 'HTTP/1.1. $name\n$context\n';
			status += '$message\n\t$position\n';
			status += '$stack\n\n';

		//
		var header:String = Header.encode( request.header ).join( "\n" );

		//
		return status + header;
	}

	//
	private function getCallStack( ):String
	{
		var exception = CallStack.toString( this.exception.exceptionStack );
		var callstack = CallStack.toString( this.exception.callStack );

		return '$exception\n$callstack';
	}

	//
	private function getPosition( ):String
	{
		var pos:PosInfos = this.exception.position;
		return pos.className + "::" + pos.methodName + " line " + pos.lineNumber;
	}
}
