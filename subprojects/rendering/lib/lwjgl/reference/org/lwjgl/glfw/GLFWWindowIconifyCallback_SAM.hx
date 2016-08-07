package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowIconifyCallback.SAM")
/** A functional interface for {@link GLFWWindowIconifyCallback}.  */
extern interface GLFWWindowIconifyCallback_SAM
{
	public function invoke(window:haxe.Int64,iconified:Int):Void;

}
