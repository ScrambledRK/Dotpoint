package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWCursorEnterCallback.SAM")
/** A functional interface for {@link GLFWCursorEnterCallback}.  */
extern interface GLFWCursorEnterCallback_SAM
{
	public function invoke(window:haxe.Int64,entered:Int):Void;

}
