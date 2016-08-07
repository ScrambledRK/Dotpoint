package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.LWJGLUtil.Platform")
@:final
extern class LWJGLUtil_Platform extends java.lang.Enum<org.lwjgl.LWJGLUtil_Platform> 
{
	public function getName():String;
	static public function valueOf(name:String):org.lwjgl.LWJGLUtil_Platform;
	static public function values():java.NativeArray<org.lwjgl.LWJGLUtil_Platform>;

}
