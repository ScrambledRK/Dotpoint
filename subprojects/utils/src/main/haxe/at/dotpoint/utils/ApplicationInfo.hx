package at.dotpoint.utils;

/**
 * ...
 * @author RK
 */
class ApplicationInfo
{

	/**
	 * 25.03.2014 16:11
	 */
	public var buildDate:String;

	/**
	 * V.0.1
	 */
	public var buildVersion:String;

	/**
	 * 'Mad City', 'Pusher', etc
	 */
	public var appName:String;

	/**
	 * Android, Windows7, etc
	 */
	public var appTarget:String;

	/**
	 * device/ip/etc
	 */
	public var appUser:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.buildDate 		= "undefined";
		this.buildVersion 	= "undefined";
		this.appName 		= "undefined";
		this.appTarget 		= "undefined";
		this.appUser 		= "undefined";

		this.initialize();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	//
	private function initialize():Void
	{
		this.buildDate = MainMacro.buildDate;

		#if java
			this.appTarget = "java";
		#elseif js
			this.appTarget = "js";
		#elseif cs
			this.appTarget = "c#";
		#elseif php
			this.appTarget = "php";
		#elseif (flash||flash8)
			this.appTarget = "flash";
		#elseif cpp
			this.appTarget = "c++";
		#elseif neko
			this.appTarget = "neko";
		#end

		#if js
			this.appUser = js.Browser.navigator.platform + "/" + js.Browser.navigator.userAgent;
		#elseif (flash||flash8)
			this.appUser = flash.system.Capabilities.os + "/" + flash.system.Capabilities.playerType + "/" + flash.system.Capabilities.version;
		#end

		#if (neko || php || cpp || cs || java)
			this.appUser += "/" + Sys.systemName();
		#end
	}

	/**
	 *
	 * @return
	 */
	public function toString():String
	{
		var header:String = "";
			header += "\n############################################";
			header += "\nbuild:  " + this.appName + " " + this.buildVersion + " " + this.buildDate;
			header += "\ndevice: " + this.appTarget + " " + this.appUser;
			header += "\n############################################";

		return header;
	}
}