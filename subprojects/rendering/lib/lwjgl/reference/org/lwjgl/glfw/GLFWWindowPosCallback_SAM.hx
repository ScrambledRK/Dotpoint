package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowPosCallback.SAM")
/** A functional interface for {@link GLFWWindowPosCallback}.  */
extern interface GLFWWindowPosCallback_SAM
{
	public function invoke(window:haxe.Int64,xpos:Int,ypos:Int):Void;

}
