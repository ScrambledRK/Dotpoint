package haxe.at.dotpoint.dispatcher.event.generic;
import haxe.at.dotpoint.dispatcher.event.Event;

class ErrorEvent extends Event
{

	public static var ERROR:String 			= "ErrorEvent.error";
	public static var IO_ERROR:String 		= "ErrorEvent.ioError";
	public static var SECURITY_ERROR:String = "ErrorEvent.securityError";

	// ------------------------------ //

	public var errorID:Int;
	public var message:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String, ?message:String )
	{
		super( type );
		this.message = message;
	}

	#if (flash || openfl)
		public static function fromEvent( flashEvent:flash.events.ErrorEvent ):ErrorEvent
		{
			var event:ErrorEvent = new ErrorEvent( "ErrorEvent." + flashEvent.type );
				event.message = flashEvent.text;
				event.errorID = flashEvent.errorID;

			return event;
		}
	#end
}