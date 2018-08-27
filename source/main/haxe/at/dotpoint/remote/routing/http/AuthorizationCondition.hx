package at.dotpoint.remote.routing.http;

import at.dotpoint.remote.http.Request;

/**
 *
 */
class AuthorizationCondition implements IRouteCondition
{


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		// TODO: Implement Authorization!
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function accepts( request:Request ):Bool
	{
		return true;
	}
}
