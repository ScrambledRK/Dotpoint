package haxe.at.dotpoint.core.dispatcher.signal;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
class SignalEventDispatcher extends SignalDispatcher<Event> implements IEventDispatcher
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?size:Int = 3 )
	{
		super( size );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
}