package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.MacOSXLibrary")
/** Implements a {@link org.lwjgl.system.DynamicLinkLibrary} on the MacOS X.  */
extern class MacOSXLibrary extends org.lwjgl.system.DynamicLinkLibrary_Default 
{
	private function new(name:String):Void;
	public function getName():String;
	static public function create(name:String):org.lwjgl.system.macosx.MacOSXLibrary;

}
