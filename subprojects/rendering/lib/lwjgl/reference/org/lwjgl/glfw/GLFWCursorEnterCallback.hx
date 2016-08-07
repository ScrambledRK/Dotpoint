package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWCursorEnterCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetCursorEnterCallback} method.  */
extern class GLFWCursorEnterCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the cursor enters or leaves the client area of the window.
 *
 * @param window  the window that received the event
 * @param entered {@link GL11#GL_TRUE} if the cursor entered the window's client area, or {@link GL11#GL_FALSE} if it left it
 */
	public function invoke(window:haxe.Int64,entered:Int):Void;

}
