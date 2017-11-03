package at.dotpoint.remote.http;

/**
 * 
 */
abstract Status(Int) from Int to Int
{

	//
	inline public function new( i:Int )
	{
		this = i;
	}

	@to
	public function toString():String
	{
		var i:Int = this;

		switch( i )
		{
			case 200: return '$i OK';
			case 404: return '$i NOT FOUND';

			default:
				return '$i';
		}
	}
}