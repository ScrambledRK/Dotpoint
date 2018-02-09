package at.dotpoint.logger;

/**
 * ...
 * @author RK
 */
class LoggerSettings
{

	public var enableInfo:Bool;
	public var enableWarning:Bool;
	public var enableError:Bool;
	public var enableUncaught:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new( info = true, warn = true, error = true, uncaught = false )
	{
		this.enableInfo 	= info;
		this.enableWarning 	= warn;
		this.enableError 	= error;
		this.enableUncaught	= uncaught;
	}
	
	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //
	
	public function ignoreLogType( type:LogType ):Bool
	{
		if( ( enableInfo 	 && type == LogType.INFO )
		||	( enableWarning  && type == LogType.WARNING )
		||	( enableError 	 && type == LogType.ERROR )
		||	( enableUncaught && type == LogType.UNCAUGHT ) )
		{
			return false;
		}
		else
		{
			return true;
		}
	}
}