package at.dotpoint.dispatcher.event;

import at.dotpoint.dispatcher.IDispatcher;

/**
 * ...
 * @author RK
 */
interface IEventDispatcher extends IDispatcher<Event,String>
{
	/**
	 * proxy target
	 */
	public var target(get,set):IEventDispatcher;
}