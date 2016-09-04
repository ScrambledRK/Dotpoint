package at.dotpoint.loader.processor;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.loader.event.ProgressEvent;

/**
 * @author RK
 */

interface IDataRequest<TInput:Dynamic,TOutput:Dynamic> extends IDataProcessor<TInput,TOutput>
{

	/**
	 *
	 * @param	complete
	 * @param	progress
	 * @param	error
	 */
	public function load( ?complete:StatusEvent->Void, ?progress:ProgressEvent->Void, ?error:ErrorEvent->Void ):Void;

}