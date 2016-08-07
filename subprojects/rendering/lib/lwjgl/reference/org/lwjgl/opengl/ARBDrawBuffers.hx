package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDrawBuffers")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/draw_buffers.txt">ARB_draw_buffers</a> extension.
 * 
 * <p>This extension extends {@link ARBFragmentProgram ARB_fragment_program} and {@link ARBFragmentShader ARB_fragment_shader} to allow multiple output colors, and provides a mechanism for
 * directing those outputs to multiple color buffers.</p>
 * 
 * <p>Requires {@link GL13 OpenGL 1.3}. Promoted to core in {@link GL20 OpenGL 2.0}.</p>
 */
extern class ARBDrawBuffers 
{
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_DRAW_BUFFERS_ARB:Int = 34852;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER0_ARB:Int = 34853;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER1_ARB:Int = 34854;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER2_ARB:Int = 34855;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER3_ARB:Int = 34856;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER4_ARB:Int = 34857;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER5_ARB:Int = 34858;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER6_ARB:Int = 34859;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER7_ARB:Int = 34860;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER8_ARB:Int = 34861;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER9_ARB:Int = 34862;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER10_ARB:Int = 34863;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER11_ARB:Int = 34864;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER12_ARB:Int = 34865;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER13_ARB:Int = 34866;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER14_ARB:Int = 34867;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER15_ARB:Int = 34868;
/** Function address.  */
	public var DrawBuffersARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #glDrawBuffersARB DrawBuffersARB}  */
/**
 * Defines the draw buffers to which all output colors are written.
 *
 * @param n    the number of buffers in {@code bufs}
 * @param bufs a buffer of symbolic constants specifying the buffer to which each output color is written. One of:<br>{@link GL11#GL_NONE NONE}, {@link GL11#GL_FRONT_LEFT FRONT_LEFT}, {@link GL11#GL_FRONT_RIGHT FRONT_RIGHT}, {@link GL11#GL_BACK_LEFT BACK_LEFT}, {@link GL11#GL_BACK_RIGHT BACK_RIGHT}, {@link GL11#GL_AUX0 AUX0}, {@link GL11#GL_AUX1 AUX1}, {@link GL11#GL_AUX2 AUX2}, {@link GL11#GL_AUX3 AUX3}, {@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, GL30.GL_COLOR_ATTACHMENT[1-15]
 */
	static public function glDrawBuffersARB(n:Int,bufs:java.nio.ByteBuffer):Void;
	@:overload(function (bufs:java.nio.IntBuffer):Void {})
/** Returns the {@link ARBDrawBuffers} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBDrawBuffers;
/** Unsafe version of {@link #glDrawBuffersARB DrawBuffersARB}  */
/** JNI method for {@link #glDrawBuffersARB DrawBuffersARB}  */
	static public function nglDrawBuffersARB(n:Int,bufs:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,bufs:haxe.Int64):Void {})

}
