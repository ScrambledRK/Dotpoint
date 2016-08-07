package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWDropCallback.SAM")
/** A functional interface for {@link GLFWDropCallback}.  */
extern interface GLFWDropCallback_SAM
{
	public function invoke(window:haxe.Int64,count:Int,names:haxe.Int64):Void;

}
