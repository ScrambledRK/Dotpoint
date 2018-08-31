package at.dotpoint.remote.http.header;

import at.dotpoint.exception.NullArgumentException;

/**
 * text/html; charset=UTF-8
 * application/xhtml+xml,application/xml;q=0.9
 */
abstract ContentType(String) from String to String
{

	public var type(get, never):MimeType;
	public var charset(get, never):Null<CharSet>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	inline public function new( source:String )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("source");

		getType( source );
		getCharset( source );
		#end

		//
		this = source;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	inline private function get_type( ):MimeType
	{
		return getType( this );
	}

	//
	inline private function get_charset( ):Null<CharSet>
	{
		return getCharset( this );
	}

	//
	inline private static function getType( value:String ):MimeType
	{
		return new MimeType( value.substring( value.indexOf(";") ) );
	}

	//
	inline private static function getCharset( value:String ):Null<CharSet>
	{
		var idx:Int = value.indexOf( "charset=" );

		if( idx < 0 )
			return null;

		return new CharSet( value.substring( idx ) );
	}

	//
	static public function fromString( input:String ):ContentType
	{
		return new ContentType( input );
	}
}
