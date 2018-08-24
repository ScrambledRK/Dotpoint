package at.dotpoint.remote.routing;

/**
 *
 */
class RoutingException
{

	public var code:Int;
	public var name:String;
	public var message:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( code:Int, name:String, ?message:String )
	{
		this.code = code;
		this.name = name;
		this.message = message;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function toString():String
	{
		return '$code $name: $message';
	}
}
