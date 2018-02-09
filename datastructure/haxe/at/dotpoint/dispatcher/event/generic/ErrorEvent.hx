package at.dotpoint.dispatcher.event.generic;
import at.dotpoint.dispatcher.event.Event;

class ErrorEvent extends Event
{

	@:isvar public static var ERROR(default,never):String = "ErrorEvent.error";

	// ------------------------------ //

	public var errorID:Int;
	public var message:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( type:String, ?message:String, ?errorID:Int )
	{
		super( type );

		this.message = message;
		this.errorID = errorID;
	}

}