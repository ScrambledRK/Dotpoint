package at.dotpoint.remote.http.header;
/**
 * 
 */
abstract EncodingType(String) from String to String
{
	public static var gzip(default, never) = new EncodingType("gzip");
	public static var deflate(default, never) = new EncodingType("deflate");
	public static var br(default, never) = new EncodingType("br");

	//
	inline public function new( i:String )
	{
		this = StringTools.trim(i);
	}

}