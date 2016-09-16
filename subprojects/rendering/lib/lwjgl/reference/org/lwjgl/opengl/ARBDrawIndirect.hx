package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDrawIndirect")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/draw_indirect.txt">ARB_draw_indirect</a> extension.
 * 
 * <p>This extension provides a mechanism for supplying the arguments to a
 * DrawArraysInstanced or DrawElementsInstancedBaseVertex from buffer object
 * memory. This is not particularly useful for applications where the CPU
 * knows the values of the arguments beforehand, but is helpful when the
 * values will be generated on the GPU through any mechanism that can write
 * to a buffer object including image stores, atomic counters, or compute
 * interop. This allows the GPU to consume these arguments without a round-
 * trip to the CPU or the expensive synchronization that would involve. This
 * is similar to the DrawTransformFeedbackEXT command from
 * EXT_transform_feedback2, but offers much more flexibility in both
 * generating the arguments and in the type of Draws that can be accomplished.</p>
 * 
 * <p>Requires {@link GL31 OpenGL 3.1}. Promoted to core in {@link GL40 OpenGL 4.0}.</p>
 */
extern class ARBDrawIndirect 
{
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferPointerv,
 * MapBufferRange, FlushMappedBufferRange, GetBufferParameteriv, and CopyBufferSubData.
 */
	inline static public var GL_DRAW_INDIRECT_BUFFER:Int = 36671;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_INDIRECT_BUFFER_BINDING:Int = 36675;
/** Function address.  */
	public var DrawArraysIndirect:haxe.Int64;
/** Function address.  */
	public var DrawElementsIndirect:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Buffer object offset version of: {@link #glDrawElementsIndirect DrawElementsIndirect}  */
/**
 * Renders indexed primitives from array data, taking parameters from memory.
 * 
 * <p>{@code glDrawElementsIndirect} behaves similarly to {@link GL42#glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}, execpt that the parameters to
 * glDrawElementsInstancedBaseVertexBaseInstance are stored in memory at the address given by {@code indirect}.</p>
 * 
 * <p>The parameters addressed by {@code indirect} are packed into a structure that takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint firstIndex;
 * 	uint baseVertex;
 * 	uint baseInstance;
 * } DrawElementsIndirectCommand;</code></pre></p>
 * 
 * <p>{@code glDrawElementsIndirect} is equivalent to:
 * <pre><code style="font-family: monospace">
 * void glDrawElementsIndirect(GLenum mode, GLenum type, const void *indirect) {
 * 	const DrawElementsIndirectCommand *cmd  = (const DrawElementsIndirectCommand *)indirect;
 * 	glDrawElementsInstancedBaseVertexBaseInstance(
 * 		mode,
 * 		cmd->count,
 * 		type,
 * 		cmd->firstIndex + size-of-type,
 * 		cmd->primCount,
 * 		cmd->baseVertex,
 * 		cmd->baseInstance
 * 	);
 * }</code></pre></p>
 *
 * @param mode     what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param type     the type of data in the buffer bound to the {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER} binding. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indirect the address of a structure containing the draw parameters
 */
/** IntBuffer version of: {@link #glDrawElementsIndirect DrawElementsIndirect}  */
	static public function glDrawElementsIndirect(mode:Int,type:Int,indirect:java.nio.IntBuffer):Void;
	@:overload(function (mode:Int,type:Int,indirectOffset:haxe.Int64):Void {})
	@:overload(function (mode:Int,type:Int,indirect:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glDrawElementsIndirect DrawElementsIndirect}  */
	static public function nglDrawElementsIndirect(mode:Int,type:Int,indirect:haxe.Int64):Void;
/** Unsafe version of {@link #glDrawArraysIndirect DrawArraysIndirect}  */
	static public function nglDrawArraysIndirect(mode:Int,indirect:haxe.Int64):Void;
/** Returns the {@link ARBDrawIndirect} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBDrawIndirect;
/** Buffer object offset version of: {@link #glDrawArraysIndirect DrawArraysIndirect}  */
/**
 * Renders primitives from array data, taking parameters from memory.
 * 
 * <p>{@code glDrawArraysIndirect} behaves similarly to {@link GL42#glDrawArraysInstancedBaseInstance DrawArraysInstancedBaseInstance}, except that the parameters to
 * glDrawArraysInstancedBaseInstance are stored in memory at the address given by {@code indirect}.</p>
 * 
 * <p>The parameters addressed by {@code indirect} are packed into a structure that takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint first;
 * 	uint baseInstance; // must be 0 unless OpenGL 4.2 is supported
 * } DrawArraysIndirectCommand;
 * 
 * const DrawArraysIndirectCommand *cmd = (const DrawArraysIndirectCommand *)indirect;
 * glDrawArraysInstancedBaseInstance(mode, cmd->first, cmd->count, cmd->primCount, cmd->baseInstance);</code></pre></p>
 *
 * @param mode     what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param indirect a structure containing the draw parameters
 */
/** IntBuffer version of: {@link #glDrawArraysIndirect DrawArraysIndirect}  */
	static public function glDrawArraysIndirect(mode:Int,indirect:java.nio.IntBuffer):Void;
	@:overload(function (mode:Int,indirectOffset:haxe.Int64):Void {})
	@:overload(function (mode:Int,indirect:java.nio.ByteBuffer):Void {})

}