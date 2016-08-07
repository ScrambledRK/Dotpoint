package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWMouseButtonCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetMouseButtonCallback} method.  */
extern class GLFWMouseButtonCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when a mouse button is pressed or released.
 *
 * @param window the window that received the event
 * @param button the mouse button that was pressed or released
 * @param action the button action. One of:<br>{@link GLFW#GLFW_PRESS}, {@link GLFW#GLFW_RELEASE}, {@link GLFW#GLFW_REPEAT}
 * @param mods   bitfield describing which modifiers keys were held down
 */
	public function invoke(window:haxe.Int64,button:Int,action:Int,mods:Int):Void;

}
