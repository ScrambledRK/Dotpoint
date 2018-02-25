package at.dotpoint.remote.http.header;

/**
 * 
 */
typedef ProtocolImpl = { type:String, version:String }
//
abstract Protocol(ProtocolImpl)
{
	public static var http11(default, never) = new Protocol("http","1.1");
	public static var http20(default, never) = new Protocol("http","2.0");

	//
	public var type(get, set):String;
	public var version(get, set):String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	inline public function new( type:String, version:String )
	{
		this = {
			type: StringTools.trim( type ).toLowerCase( ),
			version: StringTools.trim( version ).toLowerCase( )
		}
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	private inline function get_type( ):String
	{ return this.type; }

	private inline function set_type( value:String ):String
	{ return this.type = StringTools.trim( value ).toLowerCase(); }

	private inline function get_version( ):String
	{ return this.version; }

	private inline function set_version( value:String ):String
	{ return this.version = StringTools.trim( value ).toLowerCase( ); }

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	@:op(A == B)
	static public function isEqual( a:Protocol, b:Protocol ):Bool
	{
		return a.type == b.type && a.version == b.version;
	}

	//
	@:op(A != B)
	static public function isNotEqual( a:Protocol, b:Protocol ):Bool
	{
		return a.type != b.type || a.version != b.version;
	}

	//
	@:from
	static public function fromString( input:String )
	{
		var split:Array<String> = input.split( "/" );
		return new Protocol( split[0], split[1] );
	}

	//
	@:to
	public function toString( ):String
	{
		return this.type + "/" + this.version;
	}

}