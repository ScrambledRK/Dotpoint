package at.dotpoint.processor.batch;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.processor.task.ITask;

/**
 *
 */
interface ITaskProcessor extends ITask
{
    /**
	 * list of actions to execute
	 */
    public var tasks(get, set):Array<ITask>;

    /**
	 * return true if error should be ignored and execution should continue
	 */
    public var errorHandler:ErrorEvent->Bool;

    /**
	 * return true if stop should be ignored and execution should continue
	 */
    public var stoppedHandler:StatusEvent->Bool;
}
