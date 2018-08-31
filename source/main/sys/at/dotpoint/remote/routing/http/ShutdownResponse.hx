package at.dotpoint.remote.routing.http;

import haxe.Timer;
import at.dotpoint.remote.http.request.Method;
import at.dotpoint.remote.http.header.MimeType;
import haxe.io.Bytes;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.routing.IRouteResponse;
import at.dotpoint.remote.routing.ConditionList;

/**
 *
 */
class ShutdownResponse extends ConditionList implements IRouteResponse
{

	//
	private var shutdown:Int->Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( url:String, shutdown:Int->Void )
	{
		super();

		this.add( new AuthorizationCondition() );
		this.add( new RestCondition( url ) );

		this.shutdown = shutdown;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process(request:Request, callback:Response<Bytes>->Void ):Void
	{
		var response:Response<Bytes> = new Response<Bytes>();
			response.header.contentType = MimeType.text.asContentType();

		callback(response);
		shutdown(0);
	}
}
