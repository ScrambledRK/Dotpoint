package at.dotpoint.remote.http.header;

/**
 * 
 */
typedef HostImpl = { host:String, port:Int }
//
abstract Host(HostImpl)
{

	//
	public var host(get, set):String;
	public var port(get, set):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	inline public function new( host:String, port:Int )
	{
		this = {
			host: StringTools.trim( host ).toLowerCase( ),
			port: port
		}
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	private inline function get_host( ):String
	{ return this.host; }

	private inline function set_host( value:String ):String
	{ return this.host = StringTools.trim( value ).toLowerCase(); }

	private inline function get_port( ):Int
	{ return this.port; }

	private inline function set_port( value:Int ):Int
	{ return this.port = value; }

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	@:op(A == B)
	static public function isEqual( a:Host, b:Host ):Bool
	{
		return a.host == b.host && a.port == b.port;
	}

	//
	@:op(A != B)
	static public function isNotEqual( a:Host, b:Host ):Bool
	{
		return a.host != b.host || a.port != b.port;
	}

	//
	@:from
	static public function fromString( input:String )
	{
		var split:Array<String> = input.split( ":" );
		return new Host( split[0], Std.parseInt( split[1] ) );
	}

	//
	@:to
	public function toString( ):String
	{
		return this.host + ":" + this.port;
	}

}