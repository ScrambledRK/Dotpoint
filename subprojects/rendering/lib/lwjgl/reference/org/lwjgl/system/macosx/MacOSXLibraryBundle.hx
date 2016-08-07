package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.MacOSXLibraryBundle")
/** Implements a {@link org.lwjgl.system.DynamicLinkLibrary} on the MacOS X using CFBundleCreate.  */
extern class MacOSXLibraryBundle extends org.lwjgl.system.macosx.MacOSXLibrary 
{
	public function new(name:String):Void;
	override private function destroy():Void;
	public function getPointer():haxe.Int64;
	public function getFunctionAddress(functionName:java.lang.CharSequence):haxe.Int64;

}
