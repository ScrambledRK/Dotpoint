package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.Unistd")
@:final
/** Native bindings to <unistd.h>.  */
extern class Unistd 
{
/** Returns the process ID of the calling process.  */
	static public function getpid():haxe.Int64;

}
