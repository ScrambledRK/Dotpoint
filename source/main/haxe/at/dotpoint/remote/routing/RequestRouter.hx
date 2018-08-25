package at.dotpoint.remote.routing;

import at.dotpoint.remote.http.header.Status;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.response.ResponseHeader;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.routing.http.ErrorResponse;
import at.dotpoint.remote.routing.RoutingException;
import haxe.io.Bytes;

/**
 *
 */
class RequestRouter implements IRequestRouter
{

	//
	private var list:Array<IRouteResponse>;

	//
	private var e404:ErrorResponse;
	private var e500:ErrorResponse;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( list:Array<IRouteResponse>, ?e404:ErrorResponse, ?e500:ErrorResponse )
	{
		this.list = list;

		this.e404 = e404 != null ? e404 : new ErrorResponse( new RoutingException(Status.NOT_FOUND) );
		this.e500 = e500 != null ? e500 : new ErrorResponse( new RoutingException(Status.INTERNAL_SERVER_ERROR) );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( request:Request ):Response<Bytes>
	{
		trace(">> routing");

		var option:IRouteResponse = this.getOption( request );
		var response:Response<Bytes> = this.getResponse( request );

		try
		{
			option.process( request, response );
		}
		catch( re:RoutingException )
		{
			new ErrorResponse( re ).process( request, response );
		}
		catch( ex:Dynamic )
		{
			this.e500.process( request, response );
		}

		trace("<<");

		return response;
	}

	//
	private function getOption( request:Request ):IRouteResponse
	{
		for( option in this.list )
		{
			trace("option:", option);

			if( option.accepts( request ) )
				return option;
		}

		return this.e404;
	}

	//
	private function getResponse( request:Request ):Response<Bytes>
	{
		var header:ResponseHeader = new ResponseHeader(200);

		return new Response<Bytes>(header);
	}
}
