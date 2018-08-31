package at.dotpoint.remote.http.header;

import Std;
import at.dotpoint.exception.NullArgumentException;

/**
 * localhost:2007
 */
abstract Host(String) from String to String
{

	//
	public var host(get, never):String;
	public var port(get, never):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	inline public function new( source:String )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("source");

		if( source.length < 3 || source.indexOf( ":" ) < 0  )
			throw 'invalid host: $source';

		if( StringTools.trim( source ).toLowerCase() != source )
			throw 'invalid host formatting: $source';

		//
		var port = getPort( source );

		if(port == null || port < 0)
			throw 'invalid host port $port';
		#end

		//
		this = source;
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	//
	private inline function get_host( ):String
	{
		return this.split( ":" )[0];
	}

	//
	private inline function get_port( ):Int
	{
		return getPort( this );
	}

	//
	inline private static function getPort( value:String ):Int
	{
		return Std.parseInt( value.split( ":" )[1] );
	}

	//
	static public function fromString( input:String ):Host
	{
		return new Host( input );
	}
}