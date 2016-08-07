package haxe.at.dotpoint.network.logger;

import haxe.at.dotpoint.bootstrapper.Bootstrapper;
import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.network.RequestResult;
import haxe.at.dotpoint.network.ServerTool;
import haxe.at.dotpoint.loader.DataRequest;
import haxe.at.dotpoint.loader.format.StringFormat;
import haxe.at.dotpoint.loader.URLRequest;
import haxe.at.dotpoint.logger.LogType;
import haxe.PosInfos;

/**
 * ...
 * @author RK
 */
class WebLogger extends BaseLogger implements ILogger
{

	/**
	 * used to send logs
	 */
	public var server(default,null):ServerTool;

	/**
	 * used to identify following logs with the same session
	 */
	private var sessionKey:Int;

	/**
	 * get a session in case there is none yet
	 */
	private var sessionRequest:DataRequest;

	/**
	 * hold logs while waiting for sessionKey
	 */
	private var logQueue:Array<LogData>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( server:ServerTool )
	{
		super();

		this.server = server;
		this.sessionKey = -1;
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
		if( this.sessionKey == -1 )
		{
			if( sessionRequest == null )
				this.startSession();

			this.logQueue.push( new LogData( type, msg ) );

			return;
		}

		// ------------------- //

		var logtype:String = "";

		switch( type )
		{
			case LogType.INFO:
				logtype = "LOGTYPE_INFO";

			case LogType.WARNING:
				logtype = "LOGTYPE_WARNING";

			case LogType.ERROR:
				logtype = "LOGTYPE_ERROR";
		}

		// ------------------- //

		var logData:Dynamic = { };
			logData.sessionKey 	= this.sessionKey;
			logData.type 		= logtype;
			logData.msg 		= msg;

		var url:URLRequest = this.server.createRequest( "log", logData );
			url.method = URLRequestMethod.POST;

		try
		{
			var request:DataRequest = new DataRequest( url, StringFormat.instance ); // don't care about result/answer
				request.load();
		}
		catch( error:Dynamic )
		{
			trace( error );
		}
	}

	/**
	 *
	 */
	private function startSession():Void
	{
		var sessionData:Dynamic = { };
			sessionData.appName 		= Bootstrapper.instance.appInfo.appName;
			sessionData.appTarget 		= Bootstrapper.instance.appInfo.appTarget;
			sessionData.appVersion 		= Bootstrapper.instance.appInfo.buildVersion;
			sessionData.appBuildDate 	= Bootstrapper.instance.appInfo.buildDate;
			sessionData.appUser 		= Bootstrapper.instance.appInfo.appUser;

		var url:URLRequest = this.server.createRequest( "startSession", sessionData );
			url.method = URLRequestMethod.POST;

		this.sessionRequest = new DataRequest( url, StringFormat.instance );
		this.sessionRequest.load( this.onSessionData, null, this.onError );

		// ------------------- //

		if( this.logQueue == null )
			this.logQueue = new Array<LogData>();
	}

	/**
	 *
	 * @param	event
	 */
	private function onSessionData( event:StatusEvent ):Void
	{
		try
		{
			var result:RequestResult = this.server.parseResult( cast this.sessionRequest.result );

			if( result.success )
			{
				this.sessionKey = result.message.sessionKey;
			}
			else
			{
				throw result.message;
			}
		}
		catch( error:Dynamic )
		{
			this.disableLogging();
			trace( "ERROR: could not read result message retrieving sessionKey: " + error );

			return;
		}

		// ------------- //

		for( log in this.logQueue )
		{
			this.log( log.type, log.msg, null );
		}

		this.logQueue = null;
	}

	/**
	 *
	 * @param	event
	 */
	private function onError( event:Event ):Void
	{
		this.disableLogging();
		trace( "ERROR: could not read result message retrieving sessionKey: " + event );
	}

	/**
	 *
	 */
	private function disableLogging():Void
	{
		this.settings.enableError 	= false;
		this.settings.enableWarning = false;
		this.settings.enableInfo 	= false;
	}
}

private class LogData
{
	public var type:LogType;
	public var msg:String;

	public function new( type:LogType, msg:String )
	{
		this.type = type;
		this.msg = msg;
	}
}