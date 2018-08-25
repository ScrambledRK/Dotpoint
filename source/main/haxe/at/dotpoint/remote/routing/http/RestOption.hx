package at.dotpoint.remote.routing.http;

import at.dotpoint.remote.http.request.Parameters;
import at.dotpoint.remote.http.request.Method;
import at.dotpoint.remote.http.Request;

/**
 *
 */
class RestOption implements IRouteOption
{

	private var uri:String;
	private var method:Method;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?uri:String, ?method:Method )
	{
		this.uri = uri;
		this.method = method;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function accepts( request:Request ):Bool
	{
		if( this.uri != null && request.url != this.uri)
			return false;

		if( this.method != null && request.method != this.method)
			return false;

		return true;
	}
}
