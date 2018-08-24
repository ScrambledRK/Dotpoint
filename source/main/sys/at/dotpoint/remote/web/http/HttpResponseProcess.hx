package at.dotpoint.remote.web.http;

import at.dotpoint.remote.http.Header;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.response.ResponseHeader;
import at.dotpoint.remote.http.Response;
import haxe.io.Bytes;
import haxe.io.Output;

/**
 *
 */
class HttpResponseProcess implements IRemoteProcess<Dynamic>
{

	//
	public var request(default, null):Request;
	public var response(default,null):Request->Response<String>;

	//
	private var resolve:Void -> Void;
	private var reject:Dynamic -> Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( request:Request, response:Request->Response<String> )
	{
		this.request = request;
		this.response = response;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( stream:Dynamic ):Void
	{
		var response:Response<String> = this.response( this.request );

		this.resolve();
	}

	//
	public function then( resolve:Void -> Void, ?reject:Dynamic -> Void ):Void
	{
		this.resolve = resolve;
		this.reject = reject;
	}
}
