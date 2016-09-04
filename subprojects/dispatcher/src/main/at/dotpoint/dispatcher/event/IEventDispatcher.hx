package haxe.at.dotpoint.dispatcher.event;

import haxe.at.dotpoint.dispatcher.IDispatcher;

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