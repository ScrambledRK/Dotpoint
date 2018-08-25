package at.dotpoint.remote.routing;

import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;
import haxe.io.Bytes;

/**
 *
 */
interface IRouteCondition
{
	public function accepts( request:Request ):Bool;
}
