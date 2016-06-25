package haxe.at.dotpoint.loader.processor;

import haxe.at.dotpoint.core.dispatcher.event.generic.ErrorEvent;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.loader.event.ProgressEvent;
import haxe.at.dotpoint.loader.processor.IDataProcessor.IBasicDataProcessor;

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