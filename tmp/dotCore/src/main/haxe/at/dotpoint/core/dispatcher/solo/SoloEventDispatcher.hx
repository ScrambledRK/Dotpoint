package haxe.at.dotpoint.core.dispatcher.solo;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
class SoloEventDispatcher extends SoloDispatcher<Event> implements IEventDispatcher
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?listener:Event->Void )
	{
		super( listener );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
}