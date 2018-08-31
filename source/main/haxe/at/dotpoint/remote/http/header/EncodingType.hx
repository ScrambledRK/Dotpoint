package at.dotpoint.remote.http.header;

import at.dotpoint.exception.NullArgumentException;

/**
 *
 */
abstract EncodingType(String) from String to String
{
	public static var gzip(default, never) = new EncodingType("gzip");
	public static var deflate(default, never) = new EncodingType("deflate");
	public static var br(default, never) = new EncodingType("br");

	//
	inline public function new( source:String )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("source");

		if( source.length < 1 )
			throw 'invalid encoding type: $source';

		if( StringTools.trim( source ).toLowerCase() != source )
			throw 'invalid encoding type formatting: $source';
		#end

		this = source;
	}

	//
	static public function fromString( input:String ):EncodingType
	{
		return new EncodingType( input );
	}
}