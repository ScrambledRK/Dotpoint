package at.dotpoint.logger.logger;

import at.dotpoint.logger.formatter.IndentationFormatter;
import at.dotpoint.logger.Log;
import at.dotpoint.logger.LoggerSettings;
import at.dotpoint.logger.LogType;
import haxe.PosInfos;

/**
 * ...
 * @author RK
 */
class TraceLogger extends BaseLogger implements ILogger
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
		Log.nativeTrace( this.formatter.format( type, msg, info ), info );
	}
}