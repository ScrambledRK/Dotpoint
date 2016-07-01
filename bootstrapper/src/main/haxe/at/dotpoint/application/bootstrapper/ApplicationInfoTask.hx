package haxe.at.dotpoint.core.application.bootstrapper;

import haxe.at.dotpoint.bootstrapper.BootstrapperTask;
import haxe.at.dotpoint.core.application.ApplicationInfo;
import haxe.at.dotpoint.core.application.MainMacro;

/**
 * tries to gather data about the application itself, like its name, version, etc.
 * also adds infos like the target platform and compilation date
 *
 * @author RK
 */
class ApplicationInfoTask extends BootstrapperTask<Dynamic>
{

	/**
	 *
	 */
	public static var ID:String = "applicationInfo";

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?config:Dynamic = null )
	{
		super( ApplicationInfoTask.ID, config );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 */
	override public function execute():Void
	{
		super.execute();

		// -------------------------- //

		if( this.config == null )
			this.config = {};

		if( this.config.buildVersion == null )
			this.config.buildVersion = "undefined";

		// -------------------------- //
		// Target Platform:

		if( this.config.appTarget == null )
		{
			this.config.appTarget = "undefined";

			#if java
				this.config.appTarget = "java";
			#elseif js
				this.config.appTarget = "js";
			#elseif cs
				this.config.appTarget = "c#";
			#elseif php
				this.config.appTarget = "php";
			#elseif (flash||flash8)
				this.config.appTarget = "flash";
			#elseif cpp
				this.config.appTarget = "c++";
			#elseif neko
				this.config.appTarget = "neko";
			#end
		}

		// -------------------------- //
		// User:

		if( this.config.appUser == null )
		{
			this.config.appUser = "undefined";

			#if js
				this.config.appUser = js.Browser.navigator.platform + "/" + js.Browser.navigator.userAgent;
			#elseif (flash||flash8)
				this.config.appUser = flash.system.Capabilities.os + "/" + flash.system.Capabilities.playerType + "/" + flash.system.Capabilities.version;
			#end

			#if (neko || php || cpp || cs || java)
				this.config.appUser += "/" + Sys.systemName();
			#end
		}

		// -------------------------- //
		// Name:

		if( this.config.appName == null )
			this.config.appName = "undefined";

		// -------------------------- //
		// Info-Object:

		var appInfo:ApplicationInfo = new ApplicationInfo();
			appInfo.buildDate 		= MainMacro.buildDate;
			appInfo.buildVersion 	= this.config.buildVersion;
			appInfo.appTarget 		= this.config.appTarget;
			appInfo.appUser 		= this.config.appUser;
			appInfo.appName 		= this.config.appName;

		ApplicationInfo.instance = appInfo;

		// -------------------------- //

		this.clear();
	}

}