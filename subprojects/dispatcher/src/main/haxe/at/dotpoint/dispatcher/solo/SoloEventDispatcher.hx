package at.dotpoint.dispatcher.solo;

import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
class SoloEventDispatcher extends SoloDispatcher<Event,String> implements IEventDispatcher
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