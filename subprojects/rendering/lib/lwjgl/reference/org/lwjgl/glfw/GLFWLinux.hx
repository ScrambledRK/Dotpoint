package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWLinux")
@:final
/** Native bindings to the GLFW library's Linux native access functions.  */
extern class GLFWLinux 
{
/** JNI method for {@link #glfwGetX11Adapter GetX11Adapter}  */
	static public function nglfwGetX11Adapter(monitor:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">RROutput</code> of the specified monitor.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param monitor the GLFW monitor
 *
 * @return The <code style="font-family: monospace">RROutput</code> of the specified monitor, or {@link X#None} if an error occurred.
 *
 * @since GLFW 3.1
 */
	static public function glfwGetX11Monitor(monitor:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetGLXContext GetGLXContext}  */
	static public function nglfwGetGLXContext(window:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">Window</code> of the specified window.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window a GLFW window
 *
 * @return The <code style="font-family: monospace">Window</code> of the specified window, or {@link X#None} if an error occurred.
 *
 * @since GLFW 3.0
 */
	static public function glfwGetX11Window(window:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">GLXContext</code> of the specified window.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param window a GLFW window
 *
 * @return The <code style="font-family: monospace">GLXContext</code> of the specified window, or {@code NULL} if an error occurred.
 *
 * @since GLFW 3.0
 */
	static public function glfwGetGLXContext(window:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetX11Monitor GetX11Monitor}  */
	static public function nglfwGetX11Monitor(monitor:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glfwGetX11Window GetX11Window}  */
	static public function nglfwGetX11Window(window:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">RRCrtc</code> of the specified monitor.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @param monitor the GLFW monitor
 *
 * @return The <code style="font-family: monospace">RRCrtc</code> of the specified monitor, or {@link X#None} if an error occurred.
 *
 * @since GLFW 3.1
 */
	static public function glfwGetX11Adapter(monitor:haxe.Int64):haxe.Int64;
/**
 * Returns the <code style="font-family: monospace">Display</code> used by GLFW.
 * 
 * <p>Note: This function may be called from any thread. Access is not synchronized.</p>
 *
 * @return The <code style="font-family: monospace">Display</code> used by GLFW, or {@code NULL} if an error occurred.
 *
 * @since GLFW 3.0
 */
	static public function glfwGetX11Display():haxe.Int64;

}
