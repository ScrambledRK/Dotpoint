package at.dotpoint.application;

import at.dotpoint.application.MainMacro;
import at.dotpoint.StringTool;

/**
 * ...
 * @author RK
 */
class ApplicationInfo
{

	//
	public static var instance:ApplicationInfo;

	// ------------------------- //

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
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

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