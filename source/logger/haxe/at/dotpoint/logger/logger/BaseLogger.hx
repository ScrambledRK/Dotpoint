package at.dotpoint.logger.logger;

import at.dotpoint.logger.formatter.NullFormatter;
import at.dotpoint.logger.formatter.ILoggerFormatter;
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
	public var formatter:ILoggerFormatter;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:LoggerSettings, ?formatter:ILoggerFormatter )
	{
		this.settings = settings != null ? settings : new LoggerSettings();
		this.formatter = formatter != null ? formatter : new NullFormatter();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //


}