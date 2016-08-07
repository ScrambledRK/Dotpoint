package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWCursorPosCallback.SAM")
/** A functional interface for {@link GLFWCursorPosCallback}.  */
extern interface GLFWCursorPosCallback_SAM
{
	public function invoke(window:haxe.Int64,xpos:Float,ypos:Float):Void;

}
