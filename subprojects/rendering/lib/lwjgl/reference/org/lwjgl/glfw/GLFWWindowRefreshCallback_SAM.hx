package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowRefreshCallback.SAM")
/** A functional interface for {@link GLFWWindowRefreshCallback}.  */
extern interface GLFWWindowRefreshCallback_SAM
{
	public function invoke(window:haxe.Int64):Void;

}
