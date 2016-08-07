package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWMonitorCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetMonitorCallback} method.  */
extern class GLFWMonitorCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when a monitor is connected to or disconnected from the system.
 *
 * @param monitor the monitor that was connected or disconnected
 * @param event   one of {@link GLFW#GLFW_CONNECTED} or {@link GLFW#GLFW_DISCONNECTED}
 */
	public function invoke(monitor:haxe.Int64,event:Int):Void;

}
