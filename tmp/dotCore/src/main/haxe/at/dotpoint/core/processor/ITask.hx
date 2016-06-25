package haxe.at.dotpoint.core.processor;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;

/**
 * Action (or Command) executes a single purpose and can be stopped/cleared anytime.
 * It is usually started within an ActionList/Queue
 *
 * @author RK
 */
interface ITask extends IEventDispatcher
{

	/**
	 * starts the actions, fires StatusEvents according to the current state
	 */
	public function execute():Void;

	/**
	 * stops and removes any dependencies
	 */
	public function clear():Void;

}