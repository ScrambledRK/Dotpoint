package at.dotpoint.bootstrapper;

import at.dotpoint.bootstrapper.loader.BootstrapperConfigRequest;
import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.processor.AsyncQueue;
import at.dotpoint.processor.event.ProcessEvent;
import at.dotpoint.processor.ITask;

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