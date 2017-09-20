package at.dotpoint.http;

/**
 * 
 */
abstract Header(String) from String to String
{
	/**
	 * content mime types of the payload
	 */
	public static var ContentType(default,never) = new Header("Content-Type");

	/**
	 * content mime types the client would like to get and accept
	 */
	public static var Accept(default,never) = new Header("Accept");

	//
	inline public function new( i:String )
	{
		this = i;
	}
}