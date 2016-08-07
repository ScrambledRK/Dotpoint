package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBIndirectParameters")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/indirect_parameters.txt">ARB_indirect_parameters</a> extension.
 * 
 * <p>OpenGL 4.3 (with the introduction of the {@link ARBMultiDrawIndirect ARB_multi_draw_indirect} extension) enhanced the ability of OpenGL to allow a large sets of parameters
 * for indirect draws (introduced with OpenGL 4.0) into a buffer object and dispatch the entire list with one API call. This allows, for example, a shader
 * (such as a compute shader via shader storage buffers, or a geometry shader via transform feedback) to produce lists of draw commands that can then be
 * consumed by OpenGL without a server-client round trip. However, when a variable and potentially unknown number of draws are produced by such a shader,
 * it becomes difficult to know how many draws are in the output array(s). Applications must resort to techniques such as transform feedback primitive
 * queries, or mapping buffers containing the content of atomic counters, which can cause stalls or bubbles in the OpenGL pipeline.</p>
 * 
 * <p>This extension introduces the concept of the "parameter buffer", which is a target allowing buffers to store parameters for certain drawing commands.
 * Also in this extension, new variants of {@link GL43#glMultiDrawArraysIndirect MultiDrawArraysIndirect} and {@link GL43#glMultiDrawElementsIndirect MultiDrawElementsIndirect} are introduced that source some of their
 * parameters from this buffer. Further commands could potentially be introduced that source other parameters from a buffer.</p>
 * 
 * <p>Requires {@link GL42 OpenGL 4.2}.</p>
 */
extern class ARBIndirectParameters 
{
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferPointerv,
 * MapBufferRange, FlushMappedBufferRange, GetBufferParameteriv, and CopyBufferSubData.
 */
	inline static public var GL_PARAMETER_BUFFER_ARB:Int = 33006;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_PARAMETER_BUFFER_BINDING_ARB:Int = 33007;
/** Function address.  */
	public var MultiDrawArraysIndirectCountARB:haxe.Int64;
/** Function address.  */
	public var MultiDrawElementsIndirectCountARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Buffer object offset version of: {@link #glMultiDrawArraysIndirectCountARB MultiDrawArraysIndirectCountARB}  */
/**
 * Behaves similarly to {@link GL43#glMultiDrawArraysIndirect MultiDrawArraysIndirect}, except that {@code drawcount} defines an offset (in bytes) into the buffer object bound to the
 * {@link #GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB} binding point at which a single {@code sizei} typed value is stored, which contains the draw count. {@code maxdrawcount} specifies
 * the maximum number of draws that are expected to be stored in the buffer. If the value stored at {@code drawcount} into the buffer is greater than
 * {@code maxdrawcount}, an implementation stop processing draws after {@code maxdrawcount} parameter sets. {@code drawcount} must be a multiple of four.
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param indirect     an array of structures containing the draw parameters
 * @param drawcount    the offset into the parameter buffer object
 * @param maxdrawcount the maximum number of draws
 * @param stride       the distance in basic machine units between elements of the draw parameter array
 */
/** IntBuffer version of: {@link #glMultiDrawArraysIndirectCountARB MultiDrawArraysIndirectCountARB}  */
	static public function glMultiDrawArraysIndirectCountARB(mode:Int,indirect:java.nio.IntBuffer,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void;
	@:overload(function (mode:Int,indirectOffset:haxe.Int64,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void {})
	@:overload(function (mode:Int,indirect:java.nio.ByteBuffer,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void {})
/** Returns the {@link ARBIndirectParameters} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBIndirectParameters;
/** Unsafe version of {@link #glMultiDrawElementsIndirectCountARB MultiDrawElementsIndirectCountARB}  */
/** JNI method for {@link #glMultiDrawElementsIndirectCountARB MultiDrawElementsIndirectCountARB}  */
	static public function nglMultiDrawElementsIndirectCountARB(mode:Int,type:Int,indirect:haxe.Int64,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,type:Int,indirect:haxe.Int64,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void {})
/** Unsafe version of {@link #glMultiDrawArraysIndirectCountARB MultiDrawArraysIndirectCountARB}  */
/** JNI method for {@link #glMultiDrawArraysIndirectCountARB MultiDrawArraysIndirectCountARB}  */
	static public function nglMultiDrawArraysIndirectCountARB(mode:Int,indirect:haxe.Int64,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,indirect:haxe.Int64,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void {})
/** Buffer object offset version of: {@link #glMultiDrawElementsIndirectCountARB MultiDrawElementsIndirectCountARB}  */
/**
 * Behaves similarly to {@link GL43#glMultiDrawElementsIndirect MultiDrawElementsIndirect}, except that {@code drawcount} defines an offset (in bytes) into the buffer object bound to the
 * {@link #GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB} binding point at which a single {@code sizei} typed value is stored, which contains the draw count. {@code maxdrawcount} specifies
 * the maximum number of draws that are expected to be stored in the buffer. If the value stored at {@code drawcount} into the buffer is greater than
 * {@code maxdrawcount}, an implementation stop processing draws after {@code maxdrawcount} parameter sets. {@code drawcount} must be a multiple of four.
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param type         the type of data in the buffer bound to the GL_ELEMENT_ARRAY_BUFFER binding. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indirect     a structure containing an array of draw parameters
 * @param drawcount    the offset into the parameter buffer object
 * @param maxdrawcount the maximum number of draws
 * @param stride       the distance in basic machine units between elements of the draw parameter array
 */
/** IntBuffer version of: {@link #glMultiDrawElementsIndirectCountARB MultiDrawElementsIndirectCountARB}  */
	static public function glMultiDrawElementsIndirectCountARB(mode:Int,type:Int,indirect:java.nio.IntBuffer,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void;
	@:overload(function (mode:Int,type:Int,indirectOffset:haxe.Int64,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void {})
	@:overload(function (mode:Int,type:Int,indirect:java.nio.ByteBuffer,drawcount:haxe.Int64,maxdrawcount:Int,stride:Int):Void {})

}
