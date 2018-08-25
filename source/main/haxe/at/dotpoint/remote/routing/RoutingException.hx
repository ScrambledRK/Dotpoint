package at.dotpoint.remote.routing;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.remote.http.header.Status;

/**
 *
 */
class RoutingException extends ErrorEvent
{

	//
	public function new( code:Status, ?message:String )
	{
		super( "RoutingException", code, message );
	}
}
