package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.APIUtil.APIVersion")
/** A data class for API versioning information.  */
extern class APIUtil_APIVersion 
{
/** Returns the API major version.  */
	public var major:Int;
/** Returns the API minor version.  */
	public var minor:Int;
/** Returns the API revision. May be null.  */
	public var revision:String;
/** Returns the API implementation-specific versioning information. May be null.  */
	public var implementation:String;
	public function new(major:Int,minor:Int,revision:String,implementation:String):Void;

}
