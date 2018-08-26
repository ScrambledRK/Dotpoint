package at.dotpoint.remote.routing;

import at.dotpoint.exception.IException;
import at.dotpoint.exception.RuntimeException;
import at.dotpoint.remote.http.header.Status;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.routing.http.ErrorResponse;
import haxe.io.Bytes;
import Std;

/**
 *
 */
class RequestRouter implements IRequestRouter
{

	//
	private var list:Array<IRouteResponse>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		//;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( request:Request, callback:Response<Bytes>->Void ):Void
	{
		trace( ">> routing" );

		//
		var option:IRouteResponse = this.getOption( request );

		try
		{
			option.process( request, callback );
		}
		catch( exception:IException )
		{
			var response:IRouteResponse = this.onError( exception, Std.string( option ) );
				response.process( request, callback );
		}
		catch( other:Dynamic )
		{
			var exception:IException = RuntimeException.from( other, Status.INTERNAL_SERVER_ERROR );

			var response:IRouteResponse = this.onError( exception, Std.string( option ) );
				response.process( request, callback );
		}

		trace( "<<" );
	}

	//
	private function getOption( request:Request ):IRouteResponse
	{
		if( this.list == null )
			this.list = this.getResponses( );

		for( option in this.list )
		{
			if( option.accepts( request ) )
				return option;
		}

		return this.onError( new RuntimeException( Status.NOT_FOUND ), request.url );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public dynamic function getResponses( ):Array<IRouteResponse>
	{
		return new Array<IRouteResponse>();
	}

	//
	public dynamic function onError( exception:IException, context:String ):IRouteResponse
	{
		return new ErrorResponse( exception, context );
	}
}
