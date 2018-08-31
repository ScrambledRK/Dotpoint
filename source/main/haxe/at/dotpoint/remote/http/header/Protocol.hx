package at.dotpoint.remote.http.header;

import at.dotpoint.exception.NullArgumentException;

/**
 *
 */
abstract Protocol(String) from String to String
{
	public static var http11(default, never) = new Protocol("http/1.1");
	public static var http20(default, never) = new Protocol("http/2.0");

	//
	public var type(get, never):String;
	public var version(get, never):String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	inline public function new( source:String )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("source");

		if( source.length < 3 || source.indexOf( "/" ) < 0 )
			throw 'invalid protocol: $source';

		if( StringTools.trim( source ).toLowerCase() != source )
			throw 'invalid protocol formatting: $source';
		#end

		//
		this = source;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private inline function get_type( ):String
	{
		return this.split( "/" )[0];
	}

	//
	private inline function get_version( ):String
	{
		return this.split( "/" )[1];
	}

	//
	static public function fromString( input:String ):Protocol
	{
		return new Protocol( input );
	}
}