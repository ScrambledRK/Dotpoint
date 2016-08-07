package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WindowsPlatform")
extern class WindowsPlatform implements org.lwjgl.system.Platform
{
	public function new():Void;
	public function has64Bit():Bool;
	static public function windowsThrowException(msg:String):Void;
	static public function windowsCheckResult(result:Int,action:String):Void;
	static public function windowsCheckHandle(handle:haxe.Int64,msg:String):Void;

}
