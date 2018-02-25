package at.dotpoint.remote.http;

import at.dotpoint.remote.http.response.ResponseHeader;

/**
 *
 */
class Response
{

	public var header:ResponseHeader;
	public var body:Dynamic;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( header:ResponseHeader, ?body:Dynamic )
	{
		this.header = header;
		this.body = body;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

}
