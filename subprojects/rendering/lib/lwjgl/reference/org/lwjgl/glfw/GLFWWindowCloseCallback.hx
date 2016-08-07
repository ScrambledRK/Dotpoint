package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowCloseCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetWindowCloseCallback} method.  */
extern class GLFWWindowCloseCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the user attempts to close the specified window, for example by clicking the close widget in the title bar.
 *
 * @param window the window that the user attempted to close
 */
	public function invoke(window:haxe.Int64):Void;

}
