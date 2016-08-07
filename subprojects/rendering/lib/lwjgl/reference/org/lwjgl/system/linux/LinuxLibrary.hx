package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.LinuxLibrary")
/** Implements a {@link DynamicLinkLibrary} on the Linux OS.  */
extern class LinuxLibrary extends org.lwjgl.system.DynamicLinkLibrary_Default 
{
	public function new(name:String):Void;
	public function getName():String;
	override private function destroy():Void;
	public function getPointer():haxe.Int64;
	public function getFunctionAddress(name:java.lang.CharSequence):haxe.Int64;

}
