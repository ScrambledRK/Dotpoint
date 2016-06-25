package haxe.at.dotpoint.logger.logger;

import haxe.at.dotpoint.logger.ILogger;
import haxe.at.dotpoint.logger.LoggerSettings;
import haxe.at.dotpoint.logger.LogType;
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

	public function new( ?settings:LoggerSettings = null )
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