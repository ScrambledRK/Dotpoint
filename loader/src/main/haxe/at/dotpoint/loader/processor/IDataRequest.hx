package haxe.at.dotpoint.loader.processor;
import haxe.at.dotpoint.core.dispatcher.event.generic.ErrorEvent;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.event.ProgressEvent;

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