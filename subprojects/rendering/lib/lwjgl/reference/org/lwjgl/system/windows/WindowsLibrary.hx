package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WindowsLibrary")
/** Implements a {@link DynamicLinkLibrary} on the Windows OS.  */
extern class WindowsLibrary extends org.lwjgl.system.DynamicLinkLibrary_Default 
{
/** The LWJGL dll handle.  */
	static public var HINSTANCE:haxe.Int64;
	public function new(name:String):Void;
	public function getName():String;
	override private function destroy():Void;
	public function getPointer():haxe.Int64;
	public function getFunctionAddress(name:java.lang.CharSequence):haxe.Int64;

}
