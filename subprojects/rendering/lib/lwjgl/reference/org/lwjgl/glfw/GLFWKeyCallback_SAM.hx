package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWKeyCallback.SAM")
/** A functional interface for {@link GLFWKeyCallback}.  */
extern interface GLFWKeyCallback_SAM
{
	public function invoke(window:haxe.Int64,key:Int,scancode:Int,action:Int,mods:Int):Void;

}
