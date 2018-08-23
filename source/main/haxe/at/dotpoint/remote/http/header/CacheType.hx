package at.dotpoint.remote.http.header;
/**
 * 
 */
abstract CacheType(String) from String to String
{

	//
	inline public function new( i:String )
	{
		this = StringTools.trim(i).toLowerCase( );
	}

}