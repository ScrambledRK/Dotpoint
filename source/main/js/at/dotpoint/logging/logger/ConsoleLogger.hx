package at.dotpoint.logging.logger;

import haxe.PosInfos;
import at.dotpoint.logging.formatter.IndentationFormatter;

/**
 *
 */
class ConsoleLogger extends BaseLogger implements ILogger
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:LoggerSettings )
	{
		super( settings, new IndentationFormatter() );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	type
	 * @param	msg
	 * @param	info
	 */
	public function log( type:LogType, msg:Dynamic, info:PosInfos ):Void
	{
		var result:String = this.formatter.format( type, msg, info );

		switch( type )
		{
			case LogType.ERROR:
				js.Browser.console.error( result );

			default:
				js.Browser.console.info( result );
		}

	}

}
