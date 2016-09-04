package at.dotpoint.bootstrapper;

import at.dotpoint.bootstrapper.Bootstrapper;
import at.dotpoint.dispatcher.event.EventDispatcher;
import at.dotpoint.processor.event.ProcessEvent;
import at.dotpoint.processor.ITask;

/**
 * ...
 * @author RK
 */
class BootstrapperTask<TConfig:Dynamic> extends EventDispatcher implements ITask
{

	/**
	 *
	 */
	public var name(default, null):String;

	/**
	 * extracted config data - can be used for the specifc task
	 */
	public var config:TConfig;

	/**
	 * instance of the bootstrapper processing this task
	 */
	public var bootstrapper:Bootstrapper;

	// ----------------------------- //

	/**
	 * current status, cant start a task already processing
	 */
	public var isProcessing(default, null):Bool;

	/**
	 * current status, cant start or complete a task already done
	 */
	public var isComplete(default,null):Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( name:String, ?config:TConfig = null )
	{
		super();

		this.name = name;
		this.config = config;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * override but call super.execute to execute your task
	 */
	public function execute():Void
	{
		this.isProcessing = true;
		this.isComplete = false;

		this.dispatch( new ProcessEvent( ProcessEvent.TASK_STARTED ) );
	}

	/**
	 * call to complete the task
	 */
	public function clear():Void
	{
		this.config = null;
		this.bootstrapper = null;

		this.isProcessing = false;
		this.isComplete = true;

		this.dispatch( new ProcessEvent( ProcessEvent.TASK_COMPLETE ) );
	}
}