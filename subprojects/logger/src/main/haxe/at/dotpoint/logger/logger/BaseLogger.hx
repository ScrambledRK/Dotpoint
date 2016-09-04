package at.dotpoint.logger.logger;

import at.dotpoint.logger.LoggerSettings;

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