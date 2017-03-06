package at.dotpoint.loader.processor.parser;

import at.dotpoint.dispatcher.event.generic.StatusEvent;

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
			trace( error );
		}

		this.setStatus( StatusEvent.STARTED );
		this.setStatus( StatusEvent.COMPLETE );
	}
}