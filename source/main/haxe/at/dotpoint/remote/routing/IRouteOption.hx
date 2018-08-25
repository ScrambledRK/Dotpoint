package at.dotpoint.remote.routing;

import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;
import haxe.io.Bytes;

/**
 *
 */
interface IRouteOption
{
	public function accepts( request:Request ):Bool;
}
