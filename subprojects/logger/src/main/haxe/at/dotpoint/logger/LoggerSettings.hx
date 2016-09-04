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
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		this.enableInfo 	= true;
		this.enableWarning 	= true;
		this.enableError 	= true;
	}
	
	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //
	
	public function ignoreLogType( type:LogType ):Bool
	{
		if( ( enableInfo 	&& type == LogType.INFO )
		||	( enableWarning && type == LogType.WARNING ) 
		||	( enableError 	&& type == LogType.ERROR ) )
		{
			return false;
		}
		else
		{
			return true;
		}
	}
}