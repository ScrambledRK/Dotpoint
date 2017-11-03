package at.dotpoint.remote.http;
/**
 * 
 */
abstract LanguageType(String) from String to String
{

	//
	inline public function new( i:String )
	{
		this = i;
	}

	@:impl
	static public function qualityFactor( instance:String ):Float
	{
		return Header.parseQualityFactor( instance );
	}
}