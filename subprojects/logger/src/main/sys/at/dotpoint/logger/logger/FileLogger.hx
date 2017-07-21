package at.dotpoint.logger.logger;

import sys.io.FileOutput;
import sys.io.File;
import haxe.PosInfos;
import at.dotpoint.logger.formatter.IndentationFormatter;

/**
 * ...
 * @author RK
 */
class FileLogger extends BaseLogger implements ILogger
{
	//
	private var path:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:LoggerSettings, ?path:String )
	{
		super( settings, new IndentationFormatter( true ) );
		this.path = path != null ? path : "./log.txt";
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
	public function log( type:LogType, msg:Dynamic, info:PosInfos ):Void
	{
		var now:String = Date.now().toString();

		var result:String = this.formatter.format( type, msg, info );
			result += "\n";

		var output:FileOutput = File.append( this.path, false );
			output.writeString( now + " - " + result );
			output.close();
	}
}
