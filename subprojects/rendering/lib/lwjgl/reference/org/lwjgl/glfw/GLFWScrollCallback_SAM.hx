package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWScrollCallback.SAM")
/** A functional interface for {@link GLFWScrollCallback}.  */
extern interface GLFWScrollCallback_SAM
{
	public function invoke(window:haxe.Int64,xoffset:Float,yoffset:Float):Void;

}
