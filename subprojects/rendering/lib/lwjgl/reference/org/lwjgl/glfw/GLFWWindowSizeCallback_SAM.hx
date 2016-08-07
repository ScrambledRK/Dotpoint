package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowSizeCallback.SAM")
/** A functional interface for {@link GLFWWindowSizeCallback}.  */
extern interface GLFWWindowSizeCallback_SAM
{
	public function invoke(window:haxe.Int64,width:Int,height:Int):Void;

}
