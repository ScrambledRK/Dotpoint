package at.dotpoint.logging.logger;

import at.dotpoint.logging.LoggerSettings;
import at.dotpoint.logging.LogType;
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