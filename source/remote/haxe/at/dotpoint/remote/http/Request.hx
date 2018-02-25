package at.dotpoint.remote.http;

/**
 * GET / HTTP/1.1
 */
class Request
{

	public var url:String;
	public var parameter:Parameters;

	public var header:Header;
	public var method:Method;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( url:String, ?method:Method, ?header:Header )
	{
		this.url = url;
		this.parameter = url != null ? Parameters.decode( this.url ) : null;

		this.method = method != null ? method : Method.GET;
		this.header = header != null ? header : new Header();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public static function decode( input:Array<String>, ?request:Request ):Request
	{
		var line:Array<String> = input.shift().split( " " );

		if( line.length != 3 )
			throw "invalid header (first-line): " + line;

		//
		if( request == null )
			request = new Request("");

		request.url = line[1];
		request.method = line[0];
		request.header = Header.decode( input );

		return request;
	}

	public static function encode( input:Request ):Array<String>
	{
		var result:Array<String> = new Array<String>();
			result[0] = input.method + " " + input.url + " HTTP/1.1";

		if( input.header != null )
			result = result.concat( Header.encode( input.header ) );

		//
		return result;
	}
}
