package at.dotpoint.remote.http.header;

import at.dotpoint.exception.NullArgumentException;

/**
 *
 */
abstract CharSet(String) from String to String
{
	public static var utf8(default, never) = new CharSet("utf-8");

	//
	inline public function new( source:String )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("source");

		if( source.length < 1 )
			throw 'invalid charset: $source';

		if( StringTools.trim( source ).toLowerCase() != source )
			throw 'invalid charset formatting: $source';
		#end

		this = source;
	}

}