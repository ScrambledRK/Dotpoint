package at.dotpoint.remote.web.http;

import at.dotpoint.remote.http.request.RequestHeader;
import haxe.ds.StringMap;
import at.dotpoint.remote.http.request.Parameters;

import at.dotpoint.remote.http.Request;
import haxe.io.Input;

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
class HttpRequestProcess implements IRemoteProcess<Dynamic>
{

	//
	public var request(default, null):Request;

	//
	private var resolve:Void->Void;
	private var reject:Dynamic->Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		this.request = new Request("");
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( stream:Dynamic ):Void
	{
		this.request.url = haxe.web.Request.getURI();
		this.request.method = Web.getMethod();

		this.setHeader();
		this.setParameters();

		trace(">> request:");
		trace(request.url, request.method);
		trace(request.header.toString());
		trace(request.parameter.toString());
		trace("<<");

		this.resolve();
	}

	//
	private function setHeader():Void
	{
		var input:List<{value:String, header:String}> = Web.getClientHeaders();

		for( header in input )
			this.request.header.set( header.header, header.value );
	}

	//
	private function setParameters():Void
	{
		var input:StringMap<String> = Web.getParams();

		for( key in input.keys() )
			this.request.parameter.set( key, input.get(key));
	}

	//
	public function then( resolve:Void->Void, ?reject:Dynamic->Void ):Void
	{
		this.resolve = resolve;
		this.reject = reject;
	}
}
