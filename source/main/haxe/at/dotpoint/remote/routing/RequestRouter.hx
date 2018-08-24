package at.dotpoint.remote.routing;

import at.dotpoint.remote.routing.RoutingException;
import at.dotpoint.remote.http.response.ResponseHeader;
import at.dotpoint.remote.routing.http.ErrorOption;
import haxe.io.Bytes;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;

/**
 *
 */
class RequestRouter implements IRequestRouter
{

	//
	private var list:Array<IRouteOption>;

	//
	private var e404:ErrorOption;
	private var e500:ErrorOption;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function RequestRouter(list:Array<IRouteOption>, ?e404:ErrorOption, ?e500:ErrorOption )
	{
		this.list = list;

		this.e404 = e404 != null ? e404 : new ErrorOption( new RoutingException(404,"Not Found") );
		this.e500 = e500 != null ? e500 : new ErrorOption( new RoutingException(500,"Internal Error") );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process(request:Request):Response<Bytes>
	{
		var option:IRouteOption = this.getOption(request);
		var response:Response<Bytes> = this.getResponse(request);

		try
		{
			option.process( request, response );
		}
		catch( re:RoutingException )
		{
			new ErrorOption( re ).process(request, response );
		}
		catch( ex:Dynamic )
		{
			this.e500.process( request, response );
		}

		return response;
	}

	//
	private function getOption(request:Request):IRouteOption
	{
		for(option in this.list)
		{
			if(option.accepts(request))
				return option;
		}

		return this.e404;
	}

	//
	private function getResponse(request:Request):Response<Bytes>
	{
		var header:ResponseHeader = new ResponseHeader(200);

		return new Response<Bytes>(header);
	}
}
