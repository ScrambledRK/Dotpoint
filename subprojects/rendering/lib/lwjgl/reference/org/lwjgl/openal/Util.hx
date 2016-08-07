package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.Util")
@:final
/** Simple OpenAL utility class.  */
extern class Util 
{
	static public function checkALError():Void;
	static public function checkALCError(device:org.lwjgl.openal.ALDevice):Void;

}
