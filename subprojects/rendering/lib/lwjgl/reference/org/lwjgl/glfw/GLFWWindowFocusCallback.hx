package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowFocusCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetWindowFocusCallback} method.  */
extern class GLFWWindowFocusCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the specified window gains or loses focus.
 *
 * @param window  the window that was focused or defocused
 * @param focused {@link GL11#GL_TRUE} if the window was focused, or {@link GL11#GL_FALSE} if it was defocused
 */
	public function invoke(window:haxe.Int64,focused:Int):Void;

}
