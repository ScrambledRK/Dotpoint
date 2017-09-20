package at.dotpoint.http;

/**
 *
 */
class ResponseSettings
{
	//
	@:isVar public var delay(get,set):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( delay:Int = 0 )
	{
		this.delay = delay;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function get_delay( ):Int
	{
		return delay;
	}

	//
	private function set_delay( value:Int ):Int
	{
		if( value < 0 )
			value = 0;

		return this.delay = value;
	}
}
