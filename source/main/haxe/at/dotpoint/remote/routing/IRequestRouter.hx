package at.dotpoint.remote.routing;

import haxe.io.Bytes;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.http.Request;

/**
 *
 */
interface IRequestRouter
{
	public function process( request:Request, callback:Response<Bytes>->Void ):Void;
}
