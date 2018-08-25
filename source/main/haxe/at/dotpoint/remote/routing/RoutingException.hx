package at.dotpoint.remote.routing;

import at.dotpoint.remote.http.header.Status;

/**
 *
 */
class RoutingException
{

	public var code:Status;
	public var message:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( code:Status, ?message:String )
	{
		this.code = code;
		this.message = message;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function toString():String
	{
		return '$code: $message';
	}
}
