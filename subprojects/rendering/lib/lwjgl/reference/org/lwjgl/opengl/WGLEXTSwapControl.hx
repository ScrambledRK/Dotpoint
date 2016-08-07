package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLEXTSwapControl")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/wgl_swap_control.txt">WGL_EXT_swap_control</a> extension.
 * 
 * <p>This extension allows an application to specify a minimum periodicity of color buffer swaps, measured in video frame periods.</p>
 * 
 * <p>Requires {@link WGLEXTExtensionsString WGL_EXT_extensions_string}.</p>
 */
extern class WGLEXTSwapControl 
{
/** Function address.  */
	public var SwapIntervalEXT:haxe.Int64;
/** Function address.  */
	public var GetSwapIntervalEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #wglSwapIntervalEXT SwapIntervalEXT}  */
	static public function nwglSwapIntervalEXT(interval:Int,__functionAddress:haxe.Int64):Int;
/** Returns the current swap interval for the window associated with the current context.  */
	static public function wglGetSwapIntervalEXT():Int;
/** JNI method for {@link #wglGetSwapIntervalEXT GetSwapIntervalEXT}  */
	static public function nwglGetSwapIntervalEXT(__functionAddress:haxe.Int64):Int;
/**
 * Specifies the minimum number of video frame periods per buffer swap for the window associated with the current context. The interval takes effect when
 * {@link org.lwjgl.system.windows.WinGDI#SwapBuffers} or wglSwapLayerBuffer is first called subsequent to the {@code wglSwapIntervalEXT} call.
 * 
 * <p>A video frame period is the time required by the monitor to display a full frame of video data.  In the case of an interlaced monitor, this is typically
 * the time required to display both the even and odd fields of a frame of video data.  An interval set to a value of 2 means that the color buffers will
 * be swapped at most every other video frame.</p>
 * 
 * <p>If {@code interval} is set to a value of 0, buffer swaps are not synchronized to a video frame.  The {@code interval} value is silently clamped to the
 * maximum implementation-dependent value supported before being stored.</p>
 * 
 * <p>The swap interval is not part of the render context state. It cannot be pushed or popped. The default swap interval is 1.</p>
 *
 * @param interval the minimum number of video frames that are displayed before a buffer swap will occur
 */
	static public function wglSwapIntervalEXT(interval:Int):Int;
/** Returns the {@link WGLEXTSwapControl} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLEXTSwapControl;

}
