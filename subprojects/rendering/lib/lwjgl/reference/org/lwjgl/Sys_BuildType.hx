package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.Sys.BuildType")
@:final
/** The development state of the current build.  */
extern class Sys_BuildType extends java.lang.Enum<org.lwjgl.Sys_BuildType> 
{
	static public function valueOf(name:String):org.lwjgl.Sys_BuildType;
	static public function values():java.NativeArray<org.lwjgl.Sys_BuildType>;

}
