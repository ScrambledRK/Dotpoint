package haxe.at.dotpoint.loader.processor.parser;

import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.logger.Log;
/**
 * ...
 * @author RK
 */
class XMLParser extends ADataProcessor implements IDataProcessor<String,Xml>
{

	/**
	 *
	 */
	public var result(default, null):Xml;

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
			this.result = Xml.parse( input );
		}
		catch( error:Dynamic )
		{
			Log.error( error );
		}

		this.setStatus( StatusEvent.STARTED );
		this.setStatus( StatusEvent.COMPLETE );
	}
}