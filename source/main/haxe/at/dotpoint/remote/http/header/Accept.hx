package at.dotpoint.remote.http.header;

import Std;
import at.dotpoint.exception.NullArgumentException;

/**
 * text/html; charset=UTF-8
 * application/xhtml+xml,application/xml;q=0.9
 */
abstract Accept(String) from String to String
{

	public var type(get, never):MimeType;
	public var q(get, never):Null<QFactor>;

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
		getQFactor( source );
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
	inline private function get_q( ):Null<QFactor>
	{
		return getQFactor( this );
	}

	//
	inline private static function getType( value:String ):MimeType
	{
		return new MimeType( value.substring( value.indexOf(";") ) );
	}

	//
	inline private static function getQFactor( value:String ):Null<QFactor>
	{
		var idx:Int = value.indexOf( ";q=" );

		if( idx < 0 )
			return null;

		return new QFactor( Std.parseFloat( value.substring( idx ) ) );
	}

	//
	static public function fromString( input:String ):Accept
	{
		return new Accept( input );
	}
}
