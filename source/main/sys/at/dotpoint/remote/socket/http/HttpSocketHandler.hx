package at.dotpoint.remote.socket.http;

import at.dotpoint.remote.http.response.ResponseHeader;
import haxe.io.Bytes;
import at.dotpoint.remote.http.Header;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;
import haxe.io.Output;
import haxe.io.Input;

/**
 *
 */
class HttpSocketHandler implements IRemoteHandler<Input,Output>
{

	public var request:IRemoteProcess<Input>;
	public var response:IRemoteProcess<Output>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?request:HttpRequestProcess, ?response:HttpResponseProcess,
						  ?handler:Request->Response<Bytes> )
	{
		if( handler == null)
			handler = this.createResponse;

		if( request == null )
			request = new HttpRequestProcess();

		if( response == null )
			response = new HttpResponseProcess( request.request, handler );

		this.request = request;
		this.response = response;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function createResponse( request:Request ):Response<Bytes>
	{
		var status:String = 'HTTP/1.1. 200\r\n\r\n';
		var header:String = Header.encode( request.header ).join( "\r\n" );

		var result:Response<Bytes> = new Response<Bytes>( new ResponseHeader() );
			result.body = Bytes.ofString( status + header );

		return result;
	}
}
