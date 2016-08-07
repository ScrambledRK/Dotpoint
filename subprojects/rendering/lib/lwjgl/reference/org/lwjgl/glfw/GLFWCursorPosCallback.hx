package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWCursorPosCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetCursorPosCallback} method.  */
extern class GLFWCursorPosCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the cursor is moved.
 *
 * @param window the window that received the event
 * @param xpos   the new x-coordinate, in screen coordinates of the cursor
 * @param ypos   the new y-coordinate, in screen coordinates of the cursor
 */
	public function invoke(window:haxe.Int64,xpos:Float,ypos:Float):Void;

}
