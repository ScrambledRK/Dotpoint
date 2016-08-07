package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXSGIVideoSync")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/SGI/video_sync.txt">GLX_SGI_video_sync</a> extension.
 * 
 * <p>This extension provides a means for synchronization with the video frame rate of a monitor.</p>
 */
extern class GLXSGIVideoSync 
{
/** Function address.  */
	public var GetVideoSyncSGI:haxe.Int64;
/** Function address.  */
	public var WaitVideoSyncSGI:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Returns the value of the video sync counter in {@code count}. Zero is returned if the call is successful.
 *
 * @param count the video sync counter value
 */
/** Alternative version of: {@link #glXGetVideoSyncSGI GetVideoSyncSGI}  */
	static public function glXGetVideoSyncSGI(count:java.nio.IntBuffer):Int;
	@:overload(function (count:java.nio.ByteBuffer):Int {})
/** Unsafe version of {@link #glXWaitVideoSyncSGI WaitVideoSyncSGI}  */
/** JNI method for {@link #glXWaitVideoSyncSGI WaitVideoSyncSGI}  */
	static public function nglXWaitVideoSyncSGI(divisor:Int,remainder:Int,count:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (divisor:Int,remainder:Int,count:haxe.Int64):Int {})
/**
 * Puts the calling process to sleep until
 * 
 * <p><code style="font-family: monospace">(C mod D) = R</code></p>
 * 
 * <p>where {@code C} is the video sync counter, {@code D} is specified by the {@code divisor} parameter of {@code glXWaitVideoSyncSGI}, and {@code R} is
 * specified by the {@code remainder} parameter of {@code glXWaitVideoSyncSGI}. {@code glXWaitVideoSyncSGI} returns the current video sync counter value in
 * {@code count}. Zero is returned by {@code glXWaitVideoSyncSGI} if it is successful.</p>
 *
 * @param divisor   the divisor value
 * @param remainder the remainder value
 * @param count     the video sync counter value
 */
/** Alternative version of: {@link #glXWaitVideoSyncSGI WaitVideoSyncSGI}  */
	static public function glXWaitVideoSyncSGI(divisor:Int,remainder:Int,count:java.nio.IntBuffer):Int;
	@:overload(function (divisor:Int,remainder:Int,count:java.nio.ByteBuffer):Int {})
/** Unsafe version of {@link #glXGetVideoSyncSGI GetVideoSyncSGI}  */
/** JNI method for {@link #glXGetVideoSyncSGI GetVideoSyncSGI}  */
	static public function nglXGetVideoSyncSGI(count:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (count:haxe.Int64):Int {})
/** Returns the {@link GLXSGIVideoSync} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXSGIVideoSync;

}
