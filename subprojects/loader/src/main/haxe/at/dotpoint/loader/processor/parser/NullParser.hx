package at.dotpoint.loader.processor.parser;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.loader.processor.ADataProcessor;
import at.dotpoint.loader.processor.IDataProcessor;

/**
 * ...
 * @author RK
 */
class NullParser extends ADataProcessor implements IDataProcessor<Dynamic,Dynamic>
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
	public function start( input:Dynamic ):Void
	{
		this.result = input;

		this.setStatus( StatusEvent.STARTED );
		this.setStatus( StatusEvent.COMPLETE );
	}

}