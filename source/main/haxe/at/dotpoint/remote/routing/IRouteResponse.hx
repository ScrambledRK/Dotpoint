package at.dotpoint.remote.routing;

import haxe.io.Bytes;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;

/**
 *
 */
interface IRouteResponse extends IRouteOption
{
	public function process( request:Request, response:Response<Bytes> ):Void;
}
