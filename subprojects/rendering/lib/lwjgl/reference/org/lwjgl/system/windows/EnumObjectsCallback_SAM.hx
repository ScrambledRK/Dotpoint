package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.EnumObjectsCallback.SAM")
/** A functional interface for {@link EnumObjectsCallback}.  */
extern interface EnumObjectsCallback_SAM
{
	public function invoke(logObject:haxe.Int64,data:haxe.Int64):Int;

}
