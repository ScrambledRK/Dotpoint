package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWindowPosCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetWindowPosCallback} method.  */
extern class GLFWWindowPosCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the specified window moves.
 *
 * @param window the window that was moved
 * @param xpos   the new x-coordinate, in pixels, of the upper-left corner of the client area of the window
 * @param ypos   the new y-coordinate, in pixels, of the upper-left corner of the client area of the window
 */
	public function invoke(window:haxe.Int64,xpos:Int,ypos:Int):Void;

}
