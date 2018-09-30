package at.dotpoint.logging.logger;

import haxe.PosInfos;
import at.dotpoint.logging.formatter.IndentationFormatter;

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
		var output = this.formatter.format( type, msg, info ) + "\n\r";

		switch( type )
		{
			case LogType.ERROR:
				Sys.stdout().writeString( output );

			default:
				Sys.stdout().writeString( output );
		}
	}
}
