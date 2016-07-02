package haxe.at.dotpoint.logger.logger;

import haxe.at.dotpoint.logger.LoggerSettings;

/**
 * ...
 * @author RK
 */
class BaseLogger
{

	/**
	 *
	 */
	public var settings:LoggerSettings;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:LoggerSettings = null )
	{
		this.settings = settings != null ? settings : new LoggerSettings();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //


}