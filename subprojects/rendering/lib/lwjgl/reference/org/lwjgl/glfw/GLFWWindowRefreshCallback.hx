package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowRefreshCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetWindowRefreshCallback} method.  */
extern class GLFWWindowRefreshCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the client area of the specified window needs to be redrawn, for example if the window has been exposed after having been covered by
 * another window.
 *
 * @param window the window whose content needs to be refreshed
 */
	public function invoke(window:haxe.Int64):Void;

}
