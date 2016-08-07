package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWErrorCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetErrorCallback} method.  */
extern class GLFWErrorCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called with an error code and a human-readable description when a GLFW error occurs.
 *
 * @param error       the error code
 * @param description a pointer to a UTF-8 encoded string describing the error
 */
	public function invoke(error:Int,description:haxe.Int64):Void;

}
