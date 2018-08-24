package at.dotpoint.remote.socket.http;

import at.dotpoint.remote.http.response.ResponseHeader;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.http.Header;
import haxe.io.Bytes;
import at.dotpoint.remote.http.Request;
import haxe.io.Output;

/**
 *
 */
class HttpResponseProcess implements IRemoteProcess<Output>
{

	//
	public var request(default, null):Request;
	public var response(default,null):Request->Response<Bytes>;

	//
	private var resolve:Void -> Void;
	private var reject:Dynamic -> Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( request:Request, response:Request->Response<Bytes> )
	{
		this.request = request;
		this.response = response;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( stream:Output ):Void
	{
		var response:Response<Bytes> = this.response( this.request );

		//
		try
		{
			stream.write( this.getHeader(response) );
			stream.write( this.getBody(response) );
		}
		catch( error:Dynamic )
		{
			trace("error:", error );
		}

		this.resolve();
	}

	//
	private function getHeader( response:Response<Bytes> ):Bytes
	{
		return Bytes.ofString( Header.encode( response.header ).join( "\r\n" ) );
	}

	//
	private function getBody( response:Response<Bytes> ):Bytes
	{
		return response.body;
	}

	//
	public function then( resolve:Void -> Void, ?reject:Dynamic -> Void ):Void
	{
		this.resolve = resolve;
		this.reject = reject;
	}

}
