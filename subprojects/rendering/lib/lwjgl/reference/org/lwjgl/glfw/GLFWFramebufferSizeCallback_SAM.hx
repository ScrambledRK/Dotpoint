package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWFramebufferSizeCallback.SAM")
/** A functional interface for {@link GLFWFramebufferSizeCallback}.  */
extern interface GLFWFramebufferSizeCallback_SAM
{
	public function invoke(window:haxe.Int64,width:Int,height:Int):Void;

}
