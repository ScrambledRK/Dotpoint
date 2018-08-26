package at.dotpoint.remote.routing;

import Std;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import haxe.CallStack;
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

	public function new( ?e404:ErrorResponse, ?e500:ErrorResponse )
	{
		this.e404 = e404 != null ? e404 : new ErrorResponse( new RoutingException(Status.NOT_FOUND) );
		this.e500 = e500 != null ? e500 : new ErrorResponse( new RoutingException(Status.INTERNAL_SERVER_ERROR) );

		if( this.e404.exception.code != Status.NOT_FOUND )
			throw "404 ErrorResponse instance invalid: Code is not correct ...";

		if( this.e500.exception.code != Status.INTERNAL_SERVER_ERROR )
			throw "500 ErrorResponse instance invalid: Code is not correct ...";

		this.e404.exception.message = "could not find a suitable response for the given request";
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( request:Request, callback:Response<Bytes>->Void ):Void
	{
		trace(">> routing");

		//
		var option:IRouteResponse = this.getOption( request );

		try
		{
			option.process( request, callback );
		}
		catch( re:RoutingException )
		{
			new ErrorResponse( re, Std.string( option ) ).process( request, callback );
		}
		catch( ex:Dynamic )
		{
			this.e500.context = Std.string( option );
			this.e500.exception = ErrorEvent.from( ex, Status.INTERNAL_SERVER_ERROR );
			this.e500.process( request, callback );
		}

		trace("<<");
	}

	//
	private function getOption( request:Request ):IRouteResponse
	{
		if( this.list == null )
			this.list = this.createOptions();

		for( option in this.list )
		{
			if( option.accepts( request ) )
				return option;
		}

		return this.e404;
	}

	//
	public dynamic function createOptions():Array<IRouteResponse>
	{
		return new Array<IRouteResponse>();
	}

}
