package at.dotpoint.remote.http.header;

import at.dotpoint.exception.NullArgumentException;

/**
 *
 */
abstract CacheType(String) from String to String
{

	//
	inline public function new( source:String )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("source");

		if( source.length < 1 )
			throw 'invalid cache type: $source';

		if( StringTools.trim( source ).toLowerCase() != source )
			throw 'invalid cache type formatting: $source';
		#end

		this = source;
	}

	//
	static public function fromString( input:String ):CacheType
	{
		return new CacheType( input );
	}
}