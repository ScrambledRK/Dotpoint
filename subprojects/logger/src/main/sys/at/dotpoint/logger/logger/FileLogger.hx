package at.dotpoint.logger.logger;

import sys.io.FileOutput;
import sys.io.File;
import haxe.PosInfos;
import at.dotpoint.logger.formatter.IndentationFormatter;

// TODO: log file might not exist (or directory, so create it first)

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
		super( settings, new IndentationFormatter() );
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
		var prefix:String = Date.now().toString() + " - ";
		var result:String = this.formatter.format( type, msg, info );

		result = prefix + result;
		result = result.split( "\n" ).join( "\n" + this.getPadding( prefix.length ) );

		var output:FileOutput = File.append( this.path, false );
			output.writeString( result += "\n" );
			output.close();
	}

	/**
	 *
	 * @return
	 */
	private function getPadding( length:Int ):String
	{
		var prefix:String = "";

		for( j in 0...length )
			prefix += " ";

		return prefix;
	}
}
