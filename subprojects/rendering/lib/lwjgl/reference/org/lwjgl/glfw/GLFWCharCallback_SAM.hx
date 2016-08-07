package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWCharCallback.SAM")
/** A functional interface for {@link GLFWCharCallback}.  */
extern interface GLFWCharCallback_SAM
{
	public function invoke(window:haxe.Int64,codepoint:Int):Void;

}
