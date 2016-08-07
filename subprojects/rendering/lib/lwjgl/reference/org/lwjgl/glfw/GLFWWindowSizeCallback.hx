package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowSizeCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetWindowSizeCallback} method.  */
extern class GLFWWindowSizeCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the specified window is resized.
 *
 * @param window the window that was resized
 * @param width  the new width, in pixels, of the window
 * @param height the new height, in pixels, of the window
 */
	public function invoke(window:haxe.Int64,width:Int,height:Int):Void;

}
