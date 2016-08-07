package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWWin32")
@:final
/** Native bindings to the GLFW library's Win32 native access functions.  */
extern class GLFWWin32 
{
/** JNI method for {@link #glfwGetWin32Adapter GetWin32Adapter}  */
	static public function nglfwGetWin32Adapter(monitor:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">HWND</code> of the specified window.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window the GLFW window
 *
 * @return The <code style="font-family: monospace">HWND</code> of the specified window, or {@code NULL} if an error occurred.
 *
 * @since GLFW 3.0
 */
	static public function glfwGetWin32Window(window:haxe.Int64):haxe.Int64;
/**
 * Returns the adapter device name of the specified monitor.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param monitor the GLFW monitor
 *
 * @return The UTF-8 encoded adapter device name (for example `\\.\DISPLAY1`) of the specified monitor, or {@code NULL} if an error occurred.
 *
 * @since GLFW 3.1
 */
	static public function glfwGetWin32Adapter(monitor:haxe.Int64):String;
/** JNI method for {@link #glfwGetWGLContext GetWGLContext}  */
	static public function nglfwGetWGLContext(window:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetWin32Monitor GetWin32Monitor}  */
	static public function nglfwGetWin32Monitor(monitor:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetWin32Window GetWin32Window}  */
	static public function nglfwGetWin32Window(window:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">HGLRC</code> of the specified window.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window the GLFW window
 *
 * @return The <code style="font-family: monospace">HGLRC</code> of the specified window, or {@code NULL} if an error occurred.
 *
 * @since GLFW 3.0
 */
	static public function glfwGetWGLContext(window:haxe.Int64):haxe.Int64;
/**
 * Returns the display device name of the specified monitor.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param monitor the GLFW monitor
 *
 * @return The UTF-8 encoded display device name (for example `\\.\DISPLAY1\Monitor0`) of the specified monitor, or {@code NULL} if an error occurred.
 *
 * @since GLFW 3.1
 */
	static public function glfwGetWin32Monitor(monitor:haxe.Int64):String;

}
