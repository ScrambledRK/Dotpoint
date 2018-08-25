package at.dotpoint.processor.task;

//
import at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * Action (or Command) executes a single purpose and can be stopped/cleared anytime.
 * It is usually started within an ActionList/Queue
 *
 * @author RK
 */
interface ITask extends IEventDispatcher
{

	//
	public var weight:Float;

	//
	public var isProcessing(default,null):Bool;
	public var isComplete(default,null):Bool;

	/**
	 * starts the actions, fires StatusEvents according to the current state
	 */
	public function start( ):Void;

	/**
	 * stops and removes any dependencies
	 */
	public function stop( ):Void;

	/**
	 * removes any dependencies (without an event)
	 */
	public function clear( ):Void;

}