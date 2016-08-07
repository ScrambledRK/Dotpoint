package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXEXTSwapControl")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/swap_control.txt">GLX_EXT_swap_control</a> extension.
 * 
 * <p>This extension allows an application to specify a minimum periodicity of color buffer swaps, measured in video frame periods, for a particular drawable.
 * It also allows an application to query the swap interval and the implementation-dependent maximum swap interval of a drawable.</p>
 */
extern class GLXEXTSwapControl 
{
/** Function address.  */
	public var SwapIntervalEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Specifies the minimum number of video frame periods per buffer swap for a particular GLX drawable (e.g. a value of two means that the color buffers will
 * be swapped at most every other video frame). The interval takes effect when {@link GLX#glXSwapBuffers SwapBuffers} is first called on the drawable subsequent to the
 * {@code glXSwapIntervalEXT} call.
 *
 * @param display  the connection to the X server
 * @param drawable the drawable
 * @param interval the swap interval
 */
	static public function glXSwapIntervalEXT(display:haxe.Int64,drawable:haxe.Int64,interval:Int):Void;
/** Returns the {@link GLXEXTSwapControl} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXEXTSwapControl;
/** JNI method for {@link #glXSwapIntervalEXT SwapIntervalEXT}  */
	static public function nglXSwapIntervalEXT(display:haxe.Int64,drawable:haxe.Int64,interval:Int,__functionAddress:haxe.Int64):Void;

}
