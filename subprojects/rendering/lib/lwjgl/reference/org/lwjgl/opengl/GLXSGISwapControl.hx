package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXSGISwapControl")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/SGI/swap_control.txt">GLX_SGI_swap_control</a> extension.
 * 
 * <p>This extension allows an application to specify a minimum periodicity of color buffer swaps, measured in video frame periods.</p>
 */
extern class GLXSGISwapControl 
{
/** Function address.  */
	public var SwapIntervalSGI:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glXSwapIntervalSGI SwapIntervalSGI}  */
	static public function nglXSwapIntervalSGI(interval:Int,__functionAddress:haxe.Int64):Int;
/**
 * Specifies the minimum number of video frame periods per buffer swap. (e.g. a value of two means that the color buffers will be swapped at most every
 * other video frame.)  A return value of zero indicates success; otherwise an error occurred.  The interval takes effect when {@link GLX#glXSwapBuffers SwapBuffers}
 * is first called subsequent to the {@code glXSwapIntervalSGI} call.
 * 
 * <p>A video frame period is the time required by the monitor to display a full frame of video data.  In the case of an interlaced monitor, this is typically
 * the time required to display both the even and odd fields of a frame of video data.</p>
 *
 * @param interval the swap interval
 */
	static public function glXSwapIntervalSGI(interval:Int):Int;
/** Returns the {@link GLXSGISwapControl} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXSGISwapControl;

}
