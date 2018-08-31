package at.dotpoint.remote.http.header;

import at.dotpoint.exception.NullArgumentException;

/**
 * application/xhtml+xml,application/xml;q=0.9
 */
abstract QFactor(Float) from Float to Float
{

	//
	inline public function new( source:Float )
	{
		#if debug
		if( source == null )
			throw new NullArgumentException("q-factor value");

		if( source < 0 || source > 1 )
			throw 'q-factor must be between 0 and 1 bus is $source';
		#end

		this = source;
	}

}
