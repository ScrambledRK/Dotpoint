package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWCharCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetCharCallback} method.  */
extern class GLFWCharCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when a Unicode character is input.
 *
 * @param window    the window that received the event
 * @param codepoint the Unicode code point of the character
 */
	public function invoke(window:haxe.Int64,codepoint:Int):Void;

}
