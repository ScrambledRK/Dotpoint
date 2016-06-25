package haxe.at.dotpoint.loader.event ;
import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.logger.Log;

class HTTPStatusEvent extends Event
{

	public static var HTTP_RESPONSE_STATUS:String 	= "HTTPStatusEvent.httpResponseStatus";
	public static var HTTP_STATUS:String 			= "HTTPStatusEvent.httpStatus";

	// ------------------------------ //

	public var responseHeaders:Array<Dynamic>;
	public var responseURL:String;
	public var status:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new (type:String, status:Int = 0 ):Void {

		super( type );
		this.status = status;
	}

	#if (flash || openfl)
		public static function fromEvent( flashEvent:flash.events.HTTPStatusEvent ):HTTPStatusEvent
		{
			var event:HTTPStatusEvent = new HTTPStatusEvent( "HTTPStatusEvent." + flashEvent.type );

			try
			{
				#if flash10_1
					event.responseHeaders 	= flashEvent.responseHeaders;
					event.responseURL 		= flashEvent.responseURL;
				#end

				event.status 			= flashEvent.status;
			}
			catch( error:Dynamic )
			{
				Log.error( error );
			}

			return event;
		}
	#end
}