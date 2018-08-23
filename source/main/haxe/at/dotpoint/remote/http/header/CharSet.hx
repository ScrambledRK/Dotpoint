package at.dotpoint.remote.http.header;
/**
 * 
 */
abstract CharSet(String) from String to String
{
	public static var utf8(default, never) = new CharSet("utf8");

	//
	inline public function new( i:String )
	{
		this = StringTools.trim(i).toLowerCase( );
	}

}