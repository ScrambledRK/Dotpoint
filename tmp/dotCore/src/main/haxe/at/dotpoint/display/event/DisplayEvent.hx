package haxe.at.dotpoint.display.event;

import haxe.at.dotpoint.core.dispatcher.event.Event;

/**
 * 08.03.15
 * @author RK
 */
class DisplayEvent extends Event
{

	public static var VIEWPORT_RESIZE:String = "DisplayEvent.VIEWPORT_RESIZE";

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

    public function new( type:String )
    {
        super( type );
    }

    // ************************************************************************ //
	// Methods
	// ************************************************************************ //

}
