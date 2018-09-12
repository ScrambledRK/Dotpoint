package at.dotpoint.logging.logger;

import sys.FileSystem;
import sys.io.FileOutput;
import sys.io.File;
import haxe.PosInfos;
import at.dotpoint.logging.formatter.IndentationFormatter;

// TODO: lock log file, release on exit

/**
 * ...
 * @author RK
 */
class FileLogger extends BaseLogger implements ILogger
{
	//
	private var path:String;
	private var size:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:LoggerSettings, ?path:String, ?size:Int )
	{
		super( settings, new IndentationFormatter() );

		this.path = path != null ? path : "./log.txt";
		this.size = size != null ? size : 0;
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

		//
		if( this.size > 0 && FileSystem.exists( this.path ) )
		{
			if( FileSystem.stat( this.path ).size > this.size )
				FileSystem.deleteFile( this.path );
		}

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
