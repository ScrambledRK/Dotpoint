package at.dotpoint.remote.socket.http;

import at.dotpoint.remote.routing.IRequestRouter;
import haxe.io.Input;
import haxe.io.Output;

/**
 *
 */
class HttpSocketHandler implements IRemoteHandler<Input,Output>
{

	public var request(default,null):IRemoteProcess<Input>;
	public var response(default,null):IRemoteProcess<Output>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function HttpDispatchHandler( router:IRequestRouter )
	{
		var rq:HttpRequestProcess = new HttpRequestProcess();

		this.request = rq;
		this.response = new HttpResponseProcess( rq.request, router );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
