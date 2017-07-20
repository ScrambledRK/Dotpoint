package at.dotpoint.logger.logger;

import at.dotpoint.logger.LoggerSettings;
import at.dotpoint.logger.LogType;
import haxe.PosInfos;

/**
 * ...
 * @author RK
 */
class NullLogger extends BaseLogger implements ILogger
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( settings:LoggerSettings = null )
	{
		super( settings );
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
	public function log(type:LogType, msg:Dynamic, info:PosInfos):Void
	{
		return;
	}
}