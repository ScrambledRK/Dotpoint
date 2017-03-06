package at.dotpoint.loader.processor;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.loader.event.ProgressEvent;
import at.dotpoint.loader.processor.IDataProcessor.IBasicDataProcessor;

/**
 * ...
 * @author RK
 */
interface IDataProcessor<TInput:Dynamic,TOutput:Dynamic> extends IBasicDataProcessor<TInput>
{

	/**
	 * TOutput
	 */
	public var result(default, null):TOutput;

	/**
	 *
	 * @param	?complete
	 * @param	?progress
	 * @param	?error
	 */
	public function addStatusListener( ?complete:StatusEvent->Void, ?progress:ProgressEvent->Void, ?error:ErrorEvent->Void ):Void;

	/**
	 *
	 * @param	?complete
	 * @param	?progress
	 * @param	?error
	 */
	public function removeStatusListener( ?complete:StatusEvent->Void, ?progress:ProgressEvent->Void, ?error:ErrorEvent->Void ):Void;

}

/**
 *
 */
interface IBasicDataProcessor<TInput:Dynamic> extends IEventDispatcher
{

	/**
	 * STATUS
	 */
	public var isProcessing(default, null):Bool;

	/**
	 * STATUS
	 */
	public var isComplete(default,null):Bool;


	// -------------------------- //

	/**
	 *
	 * @param	request
	 */
	public function start( request:TInput ):Void;

	/**
	 *
	 */
	public function stop():Void;
}