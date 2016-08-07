package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWScrollCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetScrollCallback} method.  */
extern class GLFWScrollCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when a scrolling device is used, such as a mouse wheel or scrolling area of a touchpad.
 *
 * @param window  the window that received the event
 * @param xoffset the scroll offset along the x-axis
 * @param yoffset the scroll offset along the y-axis
 */
	public function invoke(window:haxe.Int64,xoffset:Float,yoffset:Float):Void;

}
