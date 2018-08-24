package at.dotpoint.remote.web.http;

import haxe.io.Bytes;
import at.dotpoint.remote.http.Header;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.http.Request;

/**
 *
 */
class HttpDispatchHandler implements IRemoteHandler<Dynamic, Dynamic>
{

	public var request:IRemoteProcess<Dynamic>;
	public var response:IRemoteProcess<Dynamic>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function HttpDispatchHandler(?request:HttpRequestProcess, ?response:HttpResponseProcess,
										?handler:Request -> Response<String>)
	{
		if (handler == null)
			handler = this.createResponse;

		if (request == null)
			request = new HttpRequestProcess();

		if (response == null)
			response = new HttpResponseProcess( request.request, handler );

		this.request = request;
		this.response = response;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function createResponse(request:Request):Response<String>
	{
		var status:String = 'HTTP/1.1. 200\r\n\r\n';
		var header:String = Header.encode(request.header).join("\r\n");

		var result:Response<String> = new Response<String>();
		result.body = status + header;

		return result;
	}
}
