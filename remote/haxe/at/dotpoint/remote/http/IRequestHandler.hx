package at.dotpoint.remote.http;

import at.dotpoint.remote.http.response.Response;

/**
 *
 */
interface IRequestHandler
{
	public function respond( request:Request ):Response;
}
