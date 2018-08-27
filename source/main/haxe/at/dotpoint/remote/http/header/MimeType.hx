package at.dotpoint.remote.http.header;

/**
 * text/html; charset=UTF-8
 * pplication/xhtml+xml,application/xml;q=0.9
 */
typedef MimeTypeImpl = { type:String, ?q:Float, ?charset:CharSet }
//
abstract MimeType(MimeTypeImpl)
{

	public static var json(default, never) = new MimeType("application/json");
	public static var haxe(default, never) = new MimeType("application/haxe");
	public static var xml(default, never) = new MimeType("application/xml");
	public static var xhtml(default, never) = new MimeType("application/xhtml+xml");
	public static var text(default, never) = new MimeType("text/plain");
	public static var html(default, never) = new MimeType("text/html");
	public static var css(default, never) = new MimeType("text/css");
	public static var javascript(default, never) = new MimeType("text/javascript");
	public static var webp(default, never) = new MimeType("image/webp");
	public static var png(default, never) = new MimeType("image/apng");
	public static var all(default, never) = new MimeType("*/*");

	//
	public var type(get, set):String;
	public var q(get, set):Float;
	public var charset(get, set):CharSet;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	inline public function new( type:String, ?q:Float, ?charset:CharSet )
	{
		this = {
			type: StringTools.trim( type ).toLowerCase( )
		};

		if( q != null )
			this.q = q;

		if( charset != null )
			this.charset = charset;
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	private inline function get_type( ):String
	{ return this.type; }

	private inline function set_type( value:String ):String
	{ return this.type = StringTools.trim( value ).toLowerCase( ); }

	private inline function get_q( ):Float
	{ return this.q; }

	private inline function set_q( value:Float ):Float
	{ return this.q = value; }

	private inline function get_charset( ):CharSet
	{ return this.charset; }

	private inline function set_charset( value:CharSet ):CharSet
	{ return this.charset = value; }

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	@:op(A == B)
	static public function isEqual( a:MimeType, b:MimeType ):Bool
	{
		return a.type.toLowerCase() == b.type.toLowerCase();
	}

	//
	@:op(A != B)
	static public function isNotEqual( a:MimeType, b:MimeType ):Bool
	{
		return a.type.toLowerCase() != b.type.toLowerCase();
	}

	//
	@:from
	static public function fromString( input:String )
	{
		var split:Array<String> = input.split( ";" );

		//
		var instance:MimeType = new MimeType( split[0] );

		//
		while( split.length > 0 )
		{
			var segment:String = split.shift( );
			var idx:Int = -1;

			//
			idx = segment.indexOf( ";q=" );

			if( idx != -1 )
			{
				instance.q = Std.parseFloat( segment.substring( idx + 1 ) );
				continue;
			}

			//
			idx = segment.indexOf( "charset=" );

			if( idx != -1 )
			{
				instance.charset = input.substring( idx + 1 ).toLowerCase( );
				continue;
			}
		}

		return instance;
	}

	//
	@:to
	public function toString( ):String
	{
		var result:String = this.type;

		if( this.q != 1 )
			result += ";q=" + this.q;

		if( this.charset != null )
			result += ";charset=" + this.charset;

		return result;
	}
}