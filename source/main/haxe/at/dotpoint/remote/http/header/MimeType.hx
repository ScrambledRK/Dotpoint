package at.dotpoint.remote.http.header;

import at.dotpoint.exception.NullArgumentException;

/**
 * text/html; charset=UTF-8
 * application/xhtml+xml,application/xml;q=0.9
 */
abstract MimeType(String) from String to String
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
	public var type(get, never):String;
	public var subtype(get, never):String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	inline public function new( source:String )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("source");

		if( source.length < 3 || source.indexOf( "/" ) < 0  )
			throw 'invalid mime type: $source';

		if( StringTools.trim( source ).toLowerCase() != source )
			throw 'invalid mime type formatting: $source';
		#end

		//
		this = source;
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	//
	private inline function get_type( ):String
	{
		return this.split( "/" )[0];
	}

	//
	private inline function get_subtype( ):String
	{
		return this.split( "/" )[1];
	}

	//
	public function asContentType():ContentType
	{
		return new ContentType( this );
	}

	//
	public function asAccept():Accept
	{
		return new Accept( this );
	}

	//
	static public function fromString( input:String ):MimeType
	{
		return new MimeType( input );
	}
}