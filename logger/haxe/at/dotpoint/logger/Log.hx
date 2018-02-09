package at.dotpoint.logger;

import haxe.extern.EitherType;
import at.dotpoint.logger.logger.ILogger;
import at.dotpoint.logger.logger.TraceLogger;
import haxe.CallStack;
import haxe.PosInfos;

/**
 * ...
 * @author Gerald Hattensauer
 */

class Log
{

	/**
	 *
	 */
	public static var loggerList:Array<ILogger>;

	/**
	 *
	 */
	public static var nativeTrace:Dynamic->PosInfos->Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 * @param	logger
	 */
	public static function initialize( ?loggerList:Array<ILogger>, redirectTrace:Bool = true ):Void
	{
		if( loggerList == null )
		{
			loggerList = new Array<ILogger>();
			loggerList.push( new TraceLogger() );
		}

		Log.loggerList = loggerList;

		// -------------------------- //

		Log.nativeTrace = haxe.Log.trace;

		if( redirectTrace )
			haxe.Log.trace = Log.onTrace;

		// -------------------------- //

		//
		#if js

			js.Browser.window.onerror = function( msg:EitherType<js.html.Event,String>, url:String,
												  line:Int, col:Int, error:Dynamic ):Bool
			{
				var info:PosInfos = {
					fileName:url,
					lineNumber:line,
					className:null,
					methodName:null
				}

				//
				if( error != null && Reflect.hasField( error, "stack" ) )
				{
					var stack:Array<String> = Std.string( error.stack ).split( "\n" );
					//at at_dotpoint_XY.triangulate (http://localhost:8080/world.js:5548:9)
				}

				//
				return Log.uncaught( msg, info );
			}

		#end
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	text
	 * @param	?pos
	 */
	private static function onTrace( value:Dynamic, ?info:PosInfos ):Void
	{
		if( Std.is( value, LogType ) && info.customParams != null )
		{
			switch( value )
			{
				case LogType.ERROR:
					Log.error( info.customParams.shift(), info );

				case LogType.WARNING:
					Log.warn( info.customParams.shift(), info );

				default:
					Log.info( info.customParams.shift(), info );
			}
		}
		else
		{
			Log.info( value, info );
		}
	}

	public static function getCallstack( ?length:Int, ?seperator:String = "\n", ?startIndex:Int = 2 ):String
	{
		var stack:Array<StackItem> = CallStack.callStack();
		var output:String = "";

		if( length == null )	length = stack.length;
		else					length = Std.int( Math.min( startIndex + length, stack.length ) );

		for( j in startIndex...length )
		{
			var index:Int = j;

			var item:String = stack[ index ].getParameters()[0];
				item = item.substr( 6 );

			output += item;

			if( index + 1 < length )
				output += seperator;
		}

		return output;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * ILogger.log( LogType.INFO, ... )
	 */
	inline public static function info( value:Dynamic, ?info:PosInfos ):Dynamic
	{
		Log.check();

		for( logger in Log.loggerList )
			Log.delegateLog( logger,LogType.INFO, value, info );

		return value;
	}

	/**
	 * ILogger.log( LogType.WARNING, ... )
	 */
	inline public static function warn( value:Dynamic, ?info:PosInfos ):Dynamic
	{
		Log.check();

		for( logger in Log.loggerList )
			Log.delegateLog( logger, LogType.WARNING, value, info );

		return value;
	}

	/**
	 * ILogger.log( LogType.ERROR, ... )
	 */
	inline public static function error( value:Dynamic, ?info:PosInfos ):Dynamic
	{
		Log.check();

		for( logger in Log.loggerList )
			Log.delegateLog( logger, LogType.ERROR, value, info );

		return value;
	}

	/**
	 * ILogger.log( LogType.ERROR, ... )
	 */
	inline public static function uncaught( value:Dynamic, ?info:PosInfos ):Dynamic
	{
		Log.check( );

		for( logger in Log.loggerList )
			Log.delegateLog( logger, LogType.UNCAUGHT, value, info );

		return value;
	}

	/**
	 *
	 * @param	logger
	 * @param	type
	 * @param	value
	 * @param	?info
	 */
	private static function delegateLog( logger:ILogger, type:LogType, value:Dynamic, ?info:PosInfos ):Void
	{
		if( logger.settings.ignoreLogType( type ) )
			return;

		logger.log( type, value, info );
	}

	/**
	 *
	 */
	private static function check():Void
	{
		if( Log.loggerList == null ) 		Log.initialize();
		if( Log.loggerList.length == 0 ) 	throw "must add a ILogger to Log.loggerList";
	}
}