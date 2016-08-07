package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowFocusCallback.SAM")
/** A functional interface for {@link GLFWWindowFocusCallback}.  */
extern interface GLFWWindowFocusCallback_SAM
{
	public function invoke(window:haxe.Int64,focused:Int):Void;

}
