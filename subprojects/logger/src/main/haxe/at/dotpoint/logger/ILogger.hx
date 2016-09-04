package at.dotpoint.logger;

import at.dotpoint.logger.LoggerSettings;
import at.dotpoint.logger.LogType;
import haxe.PosInfos;

/**
 * ...
 * @author RK
 */
interface ILogger
{

	/**
	 * used to determine whether or not it should log the LogType (and maybe more)
	 */
	public var settings:LoggerSettings;

	/**
	 *
	 * @param	type
	 * @param	msg
	 * @param	info
	 */
	public function log( type:LogType, msg:Dynamic, info:PosInfos ):Void;

}