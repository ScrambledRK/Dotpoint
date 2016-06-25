package haxe.at.dotpoint.loader.event ;
import haxe.at.dotpoint.core.dispatcher.event.Event;

class ProgressEvent extends Event
{

	public static var PROGRESS:String = "ProgressEvent.progress";

	// ------------------------------ //

	public var bytesLoaded:Float;
	public var bytesTotal:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String )
	{
		super( type );

		this.bytesLoaded = 0;
		this.bytesTotal = 0;
	}

	#if (flash || openfl)
		public static function fromEvent( flashEvent:flash.events.ProgressEvent ):ProgressEvent
		{
			var event:ProgressEvent = new ProgressEvent( "ProgressEvent." + flashEvent.type );
				event.bytesLoaded = flashEvent.bytesLoaded;
				event.bytesTotal = flashEvent.bytesTotal;

			return event;
		}
	#end

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	public var ratio(get, never):Float;

	inline private function get_ratio():Float
	{
		if( this.bytesTotal != 0 )
			return this.bytesLoaded / this.bytesTotal;
		else
			return 0;
	}
}