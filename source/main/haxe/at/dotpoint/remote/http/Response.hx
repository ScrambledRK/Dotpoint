package at.dotpoint.remote.http;

import at.dotpoint.remote.http.response.ResponseHeader;

/**
 *
 */
class Response<TBody:Dynamic>
{

	public var header:ResponseHeader;
	public var body:TBody;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?header:ResponseHeader, ?body:TBody )
	{
		this.header = header != null ? header : new ResponseHeader();
		this.body = body;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

}
