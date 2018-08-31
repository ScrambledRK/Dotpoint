package at.dotpoint.remote.http.header;
/**
 * 
 */
abstract LanguageType(String) from String to String
{

	//
	inline public function new( i:String )
	{
		this = StringTools.trim(i).toLowerCase( );
	}

	//
	static public function fromString( input:String ):LanguageType
	{
		return new LanguageType( input );
	}
}