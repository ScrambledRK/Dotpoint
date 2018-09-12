package at.dotpoint.logging.logger;

import at.dotpoint.logging.formatter.NullFormatter;
import at.dotpoint.logging.formatter.ILoggerFormatter;
import at.dotpoint.logging.LoggerSettings;

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