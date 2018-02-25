package at.dotpoint.remote.socket.http;

import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.http.Header;
import haxe.io.Bytes;
import at.dotpoint.remote.http.Request;
import haxe.io.Output;

/**
 *
 */
class HttpResponseProcess implements ISocketProcess<Output>
{

	//
	public var request(default, null):Request;
	public var response(default,null):Response;

	//
	private var resolve:Void -> Void;
	private var reject:Dynamic -> Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( request:Request )
	{
		this.request = request;
		this.response = new Response();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( stream:Output ):Void
	{
		var status:Bytes = Bytes.ofString( 'HTTP/1.1. 200\r\n\r\n' );
		var header:Bytes = Bytes.ofString( Header.encode( this.request.header ).join( "\r\n" ) );

		//
		try
		{
			stream.write( status );
			stream.write( header );
		}
		catch( error:Dynamic )
		{
			trace("error:", error );
		}

		this.resolve();
	}

	//
	public function then( resolve:Void -> Void, ?reject:Dynamic -> Void ):Void
	{
		this.resolve = resolve;
		this.reject = reject;
	}
}
