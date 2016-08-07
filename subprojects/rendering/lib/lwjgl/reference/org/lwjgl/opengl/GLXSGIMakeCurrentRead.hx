package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXSGIMakeCurrentRead")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/SGI/make_current_read.txt">GLX_SGI_make_current_read</a> extension.
 * 
 * <p>The association of the current context with a drawable is extended to allow separate write and read drawables.  This paves the way for allowing
 * preprocessing of image data in an "off screen" window which is then read into the visible window for final display.  Similarly it sets the frame-work
 * for direct transfer of video to the GL, by treating the video as a special kind of read drawable (a.k.a, readable).</p>
 */
extern class GLXSGIMakeCurrentRead 
{
/** Function address.  */
	public var MakeCurrentReadSGI:haxe.Int64;
/** Function address.  */
	public var GetCurrentReadDrawableSGI:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glXMakeCurrentReadSGI MakeCurrentReadSGI}  */
	static public function nglXMakeCurrentReadSGI(display:haxe.Int64,draw:haxe.Int64,read:haxe.Int64,ctx:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #glXGetCurrentReadDrawableSGI GetCurrentReadDrawableSGI}  */
	static public function nglXGetCurrentReadDrawableSGI(__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Associates two {@code GLXDrawables} with the current rendering context.
 *
 * @param display the connection to the X server
 * @param draw    the draw drawable
 * @param read    the read drawable
 * @param ctx     the current context
 */
	static public function glXMakeCurrentReadSGI(display:haxe.Int64,draw:haxe.Int64,read:haxe.Int64,ctx:haxe.Int64):Int;
/** Returns the name of the {@code GLXDrawable} currently being used as a pixel query source.  */
	static public function glXGetCurrentReadDrawableSGI():haxe.Int64;
/** Returns the {@link GLXSGIMakeCurrentRead} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXSGIMakeCurrentRead;

}
