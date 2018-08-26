package at.dotpoint.logger.logger;

import haxe.PosInfos;
import at.dotpoint.logger.formatter.IndentationFormatter;

/**
 *
 */
class SysOutputLogger extends BaseLogger implements ILogger
{


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:LoggerSettings )
	{
		super( settings, new IndentationFormatter("  ") );
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
		Sys.println( this.formatter.format( type, msg, info ) );
	}
}
