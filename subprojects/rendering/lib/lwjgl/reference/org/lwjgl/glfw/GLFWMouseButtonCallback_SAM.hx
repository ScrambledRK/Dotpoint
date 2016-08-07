package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWMouseButtonCallback.SAM")
/** A functional interface for {@link GLFWMouseButtonCallback}.  */
extern interface GLFWMouseButtonCallback_SAM
{
	public function invoke(window:haxe.Int64,button:Int,action:Int,mods:Int):Void;

}
