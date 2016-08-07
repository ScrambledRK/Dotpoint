package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWMonitorCallback.SAM")
/** A functional interface for {@link GLFWMonitorCallback}.  */
extern interface GLFWMonitorCallback_SAM
{
	public function invoke(monitor:haxe.Int64,event:Int):Void;

}
