package at.dotpoint.bootstrapper.loader;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.processor.ITask;
import at.dotpoint.processor.ITaskFactory;
import at.dotpoint.loader.processor.ADataProcessor;
import at.dotpoint.loader.processor.IDataProcessor;

/**
 * ...
 * @author RK
 */
class BootstrapperConfigParser extends ADataProcessor implements IDataProcessor<String,Array<ITask>>
{

	/**
	 *
	 */
	public var result(default, null):Array<ITask>;

	// ----------------- //

	/**
	 *
	 */
	public var factory:ITaskFactory;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( factory:ITaskFactory )
	{
		super();
		this.factory = factory;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	public function start( input:String ):Void
	{
		this.setStatus( StatusEvent.STARTED );

		// -------------- //

		var json:Dynamic = this.parseJson( input );

		if( json == null || json.bootstrapper == null )
			throw "boostrapper config json error";

		if( this.factory == null )
			throw "ITaskFactory must be set before parsing bootstrapper tasks";

		this.result = new Array<ITask>();
		this.parseTasks( json.bootstrapper );

		// -------------- //

		this.setStatus( StatusEvent.COMPLETE );
	}

	/**
	 *
	 * @param	input
	 * @return
	 */
	private function parseJson( input:String ):Dynamic
	{
		var json:Dynamic = null;

		try
		{
			json = Json.parse( input );
		}
		catch( error:Dynamic )
		{
			trace( error );
		}

		return json;
	}

	/**
	 * each node in the config data represents a task and for each task the factory is consulted to
	 * provide an task object. in case the factory cant provide one an error is thrown
	 *
	 * @param	config
	 */
	private function parseTasks( config:Dynamic ):Void
	{
		var fields:Array<String> = Reflect.fields( config );

		for( task in fields )
		{
			var subtask:ITask = this.factory.createTask( task, Reflect.field( config, task ) );

			if( subtask != null )
				this.result.push( subtask );
		}
	}
}