package at.dotpoint.remote.web.http;

import at.dotpoint.remote.routing.IRequestRouter;


/**
 *
 */
class HttpDispatchHandler implements IRemoteHandler<Dynamic, Dynamic>
{

	public var request(default,null):IRemoteProcess<Dynamic>;
	public var response(default,null):IRemoteProcess<Dynamic>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( router:IRequestRouter )
	{
		var rq:HttpRequestProcess = new HttpRequestProcess();

		this.request = rq;
		this.response = new HttpResponseProcess( rq.request, router );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

}
