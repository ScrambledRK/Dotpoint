package at.dotpoint.remote.web.http;

import haxe.io.Bytes;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;

#if neko
private typedef Web = neko.Web;
private typedef Lib = neko.Lib;
#elseif php
private typedef Web = php.Web;
private typedef Lib = php.Lib;
#end

/**
 *
 */
class HttpResponseProcess implements IRemoteProcess<Dynamic>
{

	//
	public var request(default, null):Request;
	public var response(default, null):Request->Response<Bytes>;

	//
	private var resolve:Void->Void;
	private var reject:Dynamic->Void;

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
	public function process( stream:Dynamic ):Void
	{
		var response:Response<Bytes> = this.response( this.request );

		//
		Web.setReturnCode( response.header.code );

		//
		for( key in response.header.keys() )
			Web.setHeader( key, response.header.get( key ) );

		//
		if( response.body != null)
			Lib.println( response.body );

		//
		this.resolve( );
	}


	//
	public function then( resolve:Void->Void, ?reject:Dynamic->Void ):Void
	{
		this.resolve = resolve;
		this.reject = reject;
	}
}
