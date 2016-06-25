package haxe.at.dotpoint.logger.logger;

import haxe.at.dotpoint.logger.Log;
import haxe.at.dotpoint.logger.LoggerSettings;
import haxe.at.dotpoint.logger.LogType;
import haxe.PosInfos;

/**
 * ...
 * @author RK
 */
class TraceLogger extends BaseLogger implements ILogger
{

	/**
	 *
	 */
	private var step:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?settings:LoggerSettings = null )
	{
		super( settings );

		this.step = 0;
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
		if( this.step < 0 )
			this.step = 0;

		var prefix:String = this.getPrefix();

		// ----------------- //

		if( Std.is( msg, String ) )
		{
			var code:String = Std.string( msg ).substring( 0, 2 );

			if( code == ">>" )
			{
				this.step++;
			}

			if( code == "<<" )
			{
				this.step--;
				prefix = this.getPrefix();
			}
		}

		// ----------------- //

		if( type == LogType.INFO )
			Log.nativeTrace( prefix + Std.string(msg), info );
		else
			Log.nativeTrace( prefix + type + " :: " +msg, info );
	}

	/**
	 *
	 * @return
	 */
	private function getPrefix():String
	{
		var prefix:String = "";

		for( j in 0...this.step )
			prefix += "\t";

		return prefix;
	}
}