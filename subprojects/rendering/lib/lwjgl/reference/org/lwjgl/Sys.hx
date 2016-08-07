package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.Sys")
@:final
/**
 * System class. The static initializers in this class must run before
 * anything else executes in LWJGL.
 */
extern class Sys 
{
/** The native library name  */
	static public var JNI_LIBRARY_NAME:String;
/** Current version of library.  */
	inline static public var VERSION_MAJOR:Int = 3;
/** Current version of library.  */
	inline static public var VERSION_MINOR:Int = 0;
/** Current version of library.  */
	inline static public var VERSION_REVISION:Int = 0;
/** The development state of the current build.  */
	static public var BUILD_TYPE:org.lwjgl.Sys_BuildType;
/** Returns the LWJGL version.  */
	static public function getVersion():String;

}
