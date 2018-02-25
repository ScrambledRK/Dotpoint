package at.dotpoint.remote.http;

/**
 *
 */
class Response
{

	public var status:Status;
	public var header:Header;


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?status:Status, ?header:Header )
	{
		this.status = status != null ? status : 200;
		this.header = header;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

}
