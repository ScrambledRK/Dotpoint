package haxe.at.dotpoint.bootstrapper;

import haxe.at.dotpoint.bootstrapper.loader.BootstrapperConfigRequest;
import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.core.processor.AsyncQueue;
import haxe.at.dotpoint.core.processor.event.ProcessEvent;
import haxe.at.dotpoint.core.processor.ITask;

/**
 * Main-Base Class useful as the first class instantiated in your application.
 * You can specify an external config file listing several tasks that should be
 * executed on startup or set it up manually. the bootstrapper executes BootTasks
 * indifferently and once all tasks are complete dispatches an complete event.
 */
class Bootstrapper extends AsyncQueue
{

	/**
	 *
	 */
	private var request:BootstrapperConfigRequest;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	public function processRequest( request:BootstrapperConfigRequest, ?onComplete:Event->Void ):Void
	{
		this.request = request;
		this.request.load( this.onRequestComplete );

		if( onComplete != null )
			this.addListener( ProcessEvent.PROCESS_COMPLETE, onComplete );
	}

	/**
	 *
	 * @param	event
	 */
	private function onRequestComplete( event:StatusEvent ):Void
	{
		var taskList:Array<ITask> = cast this.request.result;

		for( task in taskList )
		{
			if( Std.is( task, BootstrapperTask ) )
				cast( task, BootstrapperTask<Dynamic> ).bootstrapper = this;

			this.addTask( task );
		}

		this.process();
	}

}