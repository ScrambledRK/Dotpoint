package at.dotpoint.remote.routing;

import at.dotpoint.remote.http.Request;

/**
 *
 */
class DynamicOption implements IRouteOption
{

	//
	private var callback:Request->Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( callback:Request->Bool )
	{
		this.callback = callback;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	public function accepts( request:Request ):Bool
	{
		return this.callback(request);
	}
}
