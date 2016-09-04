package haxe.at.dotpoint.loader.processor.parser;

import haxe.at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.processor.ADataProcessor;
import haxe.at.dotpoint.loader.processor.IDataProcessor;
import haxe.at.dotpoint.logger.Log;
import haxe.Json;

/**
 * ...
 * @author RK
 */
class JSONParser extends ADataProcessor implements IDataProcessor<String,Dynamic>
{

	/**
	 *
	 */
	public var result(default, null):Dynamic;

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
	public function start( input:String ):Void
	{
		try
		{
			this.result = Json.parse( input );
		}
		catch( error:Dynamic )
		{
			Log.error( error );
		}

		this.setStatus( StatusEvent.STARTED );
		this.setStatus( StatusEvent.COMPLETE );
	}
}