package at.dotpoint.logging.logger;

import at.dotpoint.logging.formatter.IndentationFormatter;
import at.dotpoint.logging.Log;
import at.dotpoint.logging.LoggerSettings;
import at.dotpoint.logging.LogType;
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