package at.dotpoint.remote.socket.http;

import haxe.io.Output;
import haxe.io.Input;

/**
 *
 */
class HttpSocketHandler implements ISocketHandler
{

	public var request:ISocketProcess<Input>;
	public var response:ISocketProcess<Output>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?request:HttpRequestProcess, ?response:HttpResponseProcess )
	{
		if( request == null )
			request = new HttpRequestProcess();

		if( response == null )
			response = new HttpResponseProcess( request.request );

		this.request = request;
		this.response = response;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
