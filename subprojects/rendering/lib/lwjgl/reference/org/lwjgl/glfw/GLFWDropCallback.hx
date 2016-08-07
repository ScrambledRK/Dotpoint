package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWDropCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetDropCallback} method.  */
extern class GLFWDropCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when one or more dragged files are dropped on the window.
 *
 * @param window the window that received the event
 * @param count  the number of dropped files
 * @param names  pointer to the array of UTF-8 encoded path names of the dropped files
 */
	public function invoke(window:haxe.Int64,count:Int,names:haxe.Int64):Void;

}
