package haxe.at.dotpoint.dispatcher.signal;

import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
class SignalEventDispatcher extends SignalDispatcher<Event,String> implements IEventDispatcher
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