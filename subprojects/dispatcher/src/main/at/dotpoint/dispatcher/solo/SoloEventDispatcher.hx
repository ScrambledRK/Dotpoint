package haxe.at.dotpoint.dispatcher.solo;

import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;

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