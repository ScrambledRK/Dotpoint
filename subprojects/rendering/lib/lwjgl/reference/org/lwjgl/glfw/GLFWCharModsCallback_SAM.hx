package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWCharModsCallback.SAM")
/** A functional interface for {@link GLFWCharModsCallback}.  */
extern interface GLFWCharModsCallback_SAM
{
	public function invoke(window:haxe.Int64,codepoint:Int,mods:Int):Void;

}
