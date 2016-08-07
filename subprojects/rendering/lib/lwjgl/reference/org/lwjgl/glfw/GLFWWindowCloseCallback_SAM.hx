package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowCloseCallback.SAM")
/** A functional interface for {@link GLFWWindowCloseCallback}.  */
extern interface GLFWWindowCloseCallback_SAM
{
	public function invoke(window:haxe.Int64):Void;

}
