package haxe.at.dotpoint.dispatcher.event.generic;
import haxe.at.dotpoint.dispatcher.event.Event;

class StatusEvent extends Event
{

	@:isVar public static var STARTED(default,never):String 	= "StatusEvent.STARTED";
    @:isVar public static var STOPPED(default,never):String 	= "StatusEvent.STOPPED";
    @:isVar public static var COMPLETE(default,never):String 	= "StatusEvent.COMPLETE";

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