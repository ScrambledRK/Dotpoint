package at.dotpoint.dispatcher.signal;

import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
class SignalEventDispatcher extends SignalDispatcher<Event,String> implements IEventDispatcher
{

	//
	@:isVar public var target(get,set):IEventDispatcher;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher, ?size:Int = 3 )
	{
		super( size );
		this.target = proxy != null ? proxy : this;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 */
	private function get_target():IEventDispatcher { return this.target; }

	private function set_target( value:IEventDispatcher ):IEventDispatcher
	{
		if( value == null )
			value = this;

		return this.target = value;
	}
}