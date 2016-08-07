package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWErrorCallback.SAM")
/** A functional interface for {@link GLFWErrorCallback}.  */
extern interface GLFWErrorCallback_SAM
{
	public function invoke(error:Int,description:haxe.Int64):Void;

}
