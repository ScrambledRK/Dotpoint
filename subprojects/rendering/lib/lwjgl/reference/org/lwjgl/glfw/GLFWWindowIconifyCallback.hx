package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowIconifyCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetWindowIconifyCallback} method.  */
extern class GLFWWindowIconifyCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the specified window is iconified or restored.
 *
 * @param window    the window that was iconified or restored.
 * @param iconified {@link GL11#GL_TRUE} if the window was iconified, or {@link GL11#GL_FALSE} if it was restored
 */
	public function invoke(window:haxe.Int64,iconified:Int):Void;

}
