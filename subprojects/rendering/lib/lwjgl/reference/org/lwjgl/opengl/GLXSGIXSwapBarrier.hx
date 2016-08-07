package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXSGIXSwapBarrier")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/SGIX/swap_barrier.txt">GLX_SGIX_swap_barrier</a> extension.
 * 
 * <p>This extension provides the capability to sychronize the buffer swaps of different swap groups.</p>
 * 
 * <p>Requires {@link GLXSGIXSwapGroup GLX_SGIX_swap_group}.</p>
 */
extern class GLXSGIXSwapBarrier 
{
/** Function address.  */
	public var BindSwapBarrierSGIX:haxe.Int64;
/** Function address.  */
	public var QueryMaxSwapBarriersSGIX:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Returns in {@code max} the maximum number of barriers supported by an implementation on {@code screen}.
 *
 * @param display the connection to the X server
 * @param screen  the screen
 * @param max     returns the maximum number of barriers
 */
/** Alternative version of: {@link #glXQueryMaxSwapBarriersSGIX QueryMaxSwapBarriersSGIX}  */
	static public function glXQueryMaxSwapBarriersSGIX(display:haxe.Int64,screen:Int,max:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,screen:Int,max:java.nio.ByteBuffer):Int {})
/** Unsafe version of {@link #glXQueryMaxSwapBarriersSGIX QueryMaxSwapBarriersSGIX}  */
/** JNI method for {@link #glXQueryMaxSwapBarriersSGIX QueryMaxSwapBarriersSGIX}  */
	static public function nglXQueryMaxSwapBarriersSGIX(display:haxe.Int64,screen:Int,max:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (display:haxe.Int64,screen:Int,max:haxe.Int64):Int {})
/** Returns the {@link GLXSGIXSwapBarrier} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXSGIXSwapBarrier;
/**
 * Binds the swap group that contains {@code drawable} to {@code barrier}. Subsequent buffer swaps for that group will be subject to this binding, until
 * the group is unbound from {@code barrier}. If {@code barrier} is zero, the group is unbound from its current barrier, if any.
 *
 * @param display  the connection to the X server
 * @param drawable the swap group GLXDrawable
 * @param barrier  the swap barrier
 */
	static public function glXBindSwapBarrierSGIX(display:haxe.Int64,drawable:haxe.Int64,barrier:Int):Void;
/** JNI method for {@link #glXBindSwapBarrierSGIX BindSwapBarrierSGIX}  */
	static public function nglXBindSwapBarrierSGIX(display:haxe.Int64,drawable:haxe.Int64,barrier:Int,__functionAddress:haxe.Int64):Void;

}
