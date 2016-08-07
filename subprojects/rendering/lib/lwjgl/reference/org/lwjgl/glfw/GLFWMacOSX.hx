package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWMacOSX")
@:final
/** Native bindings to the GLFW library's MacOS X native access functions.  */
extern class GLFWMacOSX 
{
/** JNI method for {@link #glfwGetNSGLContext GetNSGLContext}  */
	static public function nglfwGetNSGLContext(window:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">CGDirectDisplayID</code> of the specified monitor.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param monitor the GLFW monitor
 *
 * @return The <code style="font-family: monospace">CGDirectDisplayID</code> of the specified monitor, or kCGNullDirectDisplay` if an error occurred.
 *
 * @since GLFW 3.1
 */
	static public function glfwGetCocoaMonitor(monitor:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">NSOpenGLContext</code> of the specified GLFW window.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window the GLFW window
 *
 * @return The <code style="font-family: monospace">NSOpenGLContext</code> of the specified window, or nil if an error occurred.
 *
 * @since GLFW 3.0
 */
	static public function glfwGetNSGLContext(window:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetCocoaMonitor GetCocoaMonitor}  */
	static public function nglfwGetCocoaMonitor(monitor:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetCocoaWindow GetCocoaWindow}  */
	static public function nglfwGetCocoaWindow(window:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">NSWindow</code> of the specified GLFW window.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window the GLFW window
 *
 * @return The <code style="font-family: monospace">NSWindow</code> of the specified window, or nil if an error occurred.
 *
 * @since GLFW 3.0
 */
	static public function glfwGetCocoaWindow(window:haxe.Int64):haxe.Int64;

}
