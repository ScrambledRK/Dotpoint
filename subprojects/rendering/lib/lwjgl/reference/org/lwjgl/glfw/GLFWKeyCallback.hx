package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWKeyCallback")
/** Instances of this interface may be passed to the {@link GLFW#glfwSetKeyCallback} method.  */
extern class GLFWKeyCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when a key is pressed, repeated or released.
 *
 * @param window   the window that received the event
 * @param key      the keyboard key that was pressed or released
 * @param scancode the system-specific scancode of the key
 * @param action   the key action. One of:<br>{@link GLFW#GLFW_PRESS}, {@link GLFW#GLFW_RELEASE}, {@link GLFW#GLFW_REPEAT}
 * @param mods     bitfield describing which modifiers keys were held down
 */
	public function invoke(window:haxe.Int64,key:Int,scancode:Int,action:Int,mods:Int):Void;

}
