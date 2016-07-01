package haxe.at.dotpoint.core.dispatcher.event.generic;
import haxe.at.dotpoint.core.dispatcher.event.Event;

class StatusEvent extends Event
{

	public static var STARTED:String 	= "StatusEvent.STARTED";
	public static var STOPPED:String 	= "StatusEvent.STOPPED";
	public static var COMPLETE:String 	= "StatusEvent.COMPLETE";

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String )
	{
		super( type );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

}