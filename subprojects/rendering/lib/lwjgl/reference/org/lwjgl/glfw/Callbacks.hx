package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.Callbacks")
@:final
/**
 * Utility class for GLFW callbacks.
 * <p/>
 * This class has been designed to work well with {@code import static}.
 */
extern class Callbacks 
{
/**
 * Returns a {@link GLFWErrorCallback} instance that prints the error in the standard error stream.
 *
 * @return the GLFWerrorCallback
 */
/**
 * Returns a {@link GLFWErrorCallback} instance that prints the error in the specified {@link PrintStream}.
 *
 * @param stream the PrintStream to use
 *
 * @return the GLFWerrorCallback
 */
	static public function errorCallbackPrint(stream:java.io.PrintStream):org.lwjgl.glfw.GLFWErrorCallback;
	@:overload(function ():org.lwjgl.glfw.GLFWErrorCallback {})
/**
 * Converts the specified {@link GLFWDropCallback} arguments to a String array.
 * <p/>
 * This method may only be used inside a GLFWdropCallback invocation.
 *
 * @param count the number of dropped files
 * @param names pointer to the array of UTF-8 encoded path names of the dropped files
 *
 * @return the array of names, as Strings
 */
	static public function dropCallbackNamesString(count:Int,names:haxe.Int64):java.NativeArray<String>;
/**
 * Invokes the specified callbacks using the current window and framebuffer sizes of the specified GLFW window.
 *
 * @param window             the GLFW window
 * @param windowsizefun      the window size callback, may be null
 * @param framebuffersizefun the framebuffer size callback, may be null
 */
	static public function glfwInvoke(window:haxe.Int64,windowsizefun:org.lwjgl.glfw.GLFWWindowSizeCallback,framebuffersizefun:org.lwjgl.glfw.GLFWFramebufferSizeCallback):Void;
/**
 * Resets all callbacks for the specified GLFW window to {@code NULL} and {@link Closure#release releases} all previously set callbacks.
 *
 * @param window the GLFW window
 */
	static public function releaseAllCallbacks(window:haxe.Int64):Void;
/** @see GLFW#glfwSetErrorCallback  */
/** @see GLFW#glfwSetMonitorCallback  */
/** @see GLFW#glfwSetCharCallback  */
/** @see GLFW#glfwSetCharModsCallback  */
/** @see GLFW#glfwSetCursorEnterCallback  */
/** @see GLFW#glfwSetCursorPosCallback  */
/** @see GLFW#glfwSetDropCallback  */
/** @see GLFW#glfwSetFramebufferSizeCallback  */
/** @see GLFW#glfwSetKeyCallback  */
/** @see GLFW#glfwSetMouseButtonCallback  */
/** @see GLFW#glfwSetScrollCallback  */
/** @see GLFW#glfwSetWindowCloseCallback  */
/** @see GLFW#glfwSetWindowFocusCallback  */
/** @see GLFW#glfwSetWindowIconifyCallback  */
/** @see GLFW#glfwSetWindowPosCallback  */
/** @see GLFW#glfwSetWindowRefreshCallback  */
/** @see GLFW#glfwSetWindowSizeCallback  */
	static public function glfwSetCallback(window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowSizeCallback):Void;
	@:overload(function (cbfun:org.lwjgl.glfw.GLFWErrorCallback):Void {})
	@:overload(function (cbfun:org.lwjgl.glfw.GLFWMonitorCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCharCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCharModsCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCursorEnterCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWCursorPosCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWDropCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWFramebufferSizeCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWKeyCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWMouseButtonCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWScrollCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowCloseCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowFocusCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowIconifyCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowPosCallback):Void {})
	@:overload(function (window:haxe.Int64,cbfun:org.lwjgl.glfw.GLFWWindowRefreshCallback):Void {})
/**
 * Converts the specified {@link GLFWErrorCallback} description string pointer to a {@link ByteBuffer}, with a capacity equal to the UTF-8 encoded string.
 * <p/>
 * This method may only be used inside a GLFWerrorCallback invocation. If you wish to use the ByteBuffer after the callback returns, you need to make a
 * copy.
 *
 * @param description a pointer to the UTF-8 encoded description string
 *
 * @return the description string, as a ByteBuffer
 */
	static public function errorCallbackDescriptionBuffer(description:haxe.Int64):java.nio.ByteBuffer;
/**
 * Applies the specified {@link DropConsumerBuffer} to the specified {@link GLFWDropCallback} arguments.
 * <p/>
 * This method may only be used inside a GLFWdropCallback invocation.
 *
 * @param count    the number of dropped files
 * @param names    pointer to the array of UTF-8 encoded path names of the dropped files
 * @param consumer the DropConsumerBuffer to apply
 */
/**
 * Applies the specified {@link DropConsumerString} to the specified {@link GLFWDropCallback} arguments.
 * <p/>
 * This method may only be used inside a GLFWdropCallback invocation.
 *
 * @param count    the number of dropped files
 * @param names    pointer to the array of UTF-8 encoded path names of the dropped files
 * @param consumer the DropConsumerString to apply
 */
	static public function dropCallbackNamesApply(count:Int,names:haxe.Int64,consumer:org.lwjgl.glfw.Callbacks_DropConsumerString):Void;
	@:overload(function (count:Int,names:haxe.Int64,consumer:org.lwjgl.glfw.Callbacks_DropConsumerBuffer):Void {})
/**
 * Returns a {@link GLFWErrorCallback} instance that throws an {@link IllegalStateException} when an error occurs.
 *
 * @return the GLFWerrorCallback
 */
	static public function errorCallbackThrow():org.lwjgl.glfw.GLFWErrorCallback;
/**
 * Converts the specified {@link GLFWErrorCallback} description string pointer to a String.
 * <p/>
 * This method may only be used inside a GLFWerrorCallback invocation.
 *
 * @param description a pointer to the UTF-8 encoded description string
 *
 * @return the description string
 */
	static public function errorCallbackDescriptionString(description:haxe.Int64):String;
/**
 * Converts the specified {@link GLFWDropCallback} arguments to a ByteBuffer array.
 * <p/>
 * This method may only be used inside a GLFWdropCallback invocation. If you wish to use the array after the callback returns, you need to make a deep
 * copy.
 *
 * @param count the number of dropped files
 * @param names pointer to the array of UTF-8 encoded path names of the dropped files
 *
 * @return the array of names, as ByteBuffers
 */
	static public function dropCallbackNamesBuffer(count:Int,names:haxe.Int64):java.NativeArray<java.nio.ByteBuffer>;

}
