package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVBindlessMultiDrawIndirect")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/bindless_multi_draw_indirect.txt">NV_bindless_multi_draw_indirect</a> extension.
 * 
 * <p>This extension combines NV_vertex_buffer_unified_memory and ARB_multi_draw_indirect to allow the processing of multiple drawing commands, whose vertex
 * and index data can be sourced from arbitrary buffer locations, by a single function call.</p>
 * 
 * <p>The NV_vertex_buffer_unified_memory extension provided a mechanism to specify vertex attrib and element array locations using GPU addresses. Prior to
 * this extension, these addresses had to be set through explicit function calls. Now the ability to set the pointer addresses indirectly by extending the
 * GL_ARB_draw_indirect mechanism has been added.</p>
 * 
 * <p>Combined with other "bindless" extensions, such as NV_bindless_texture and NV_shader_buffer_load, it is now possible for the GPU to create draw
 * commands that source all resource inputs, which are common to change frequently between draw calls from the GPU: vertex and index buffers, samplers,
 * images and other shader input data stored in buffers.</p>
 * 
 * <p>Requires {@link GL43 OpenGL 4.3}, {@link NVVertexBufferUnifiedMemory NV_vertex_buffer_unified_memory},</p>
 */
extern class NVBindlessMultiDrawIndirect 
{
/** Function address.  */
	public var MultiDrawArraysIndirectBindlessNV:haxe.Int64;
/** Function address.  */
	public var MultiDrawElementsIndirectBindlessNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glMultiDrawElementsIndirectBindlessNV MultiDrawElementsIndirectBindlessNV}  */
/** JNI method for {@link #glMultiDrawElementsIndirectBindlessNV MultiDrawElementsIndirectBindlessNV}  */
	static public function nglMultiDrawElementsIndirectBindlessNV(mode:Int,type:Int,indirect:haxe.Int64,drawCount:Int,stride:Int,vertexBufferCount:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,type:Int,indirect:haxe.Int64,drawCount:Int,stride:Int,vertexBufferCount:Int):Void {})
/**
 * Behaves similar to {@link GL43#glMultiDrawElementsIndirect MultiDrawElementsIndirect}, except that {@code indirect} is treated as an array of {@code drawCount}
 * DrawElementsIndirectBindlessCommandNV structures:
 * <pre><code style="font-family: monospace">
 *  typedef struct {
 *   GLuint   index;
 *   GLuint   reserved;
 *   GLuint64 address;
 *   GLuint64 length;
 * } BindlessPtrNV;
 * 
 * typedef struct {
 *   DrawElementsIndirectCommand cmd;
 *   GLuint                      reserved;
 *   BindlessPtrNV               indexBuffer;
 *   BindlessPtrNV               vertexBuffers[];
 * } DrawElementsIndirectBindlessCommandNV;</code></pre>
 *
 * @param mode              the primitive mode. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param type              the data type of the element indices. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indirect          an array of DrawElementsIndirectBindlessCommandNV structures (see the extension spec for more information)
 * @param drawCount         the number of structures in the <code>indirect</code> array
 * @param stride            the size of one DrawElementsIndirectBindlessCommandNV structure
 * @param vertexBufferCount the number of vertex buffers in the DrawElementsIndirectBindlessCommandNV structure
 */
	static public function glMultiDrawElementsIndirectBindlessNV(mode:Int,type:Int,indirect:java.nio.ByteBuffer,drawCount:Int,stride:Int,vertexBufferCount:Int):Void;
/** Unsafe version of {@link #glMultiDrawArraysIndirectBindlessNV MultiDrawArraysIndirectBindlessNV}  */
/** JNI method for {@link #glMultiDrawArraysIndirectBindlessNV MultiDrawArraysIndirectBindlessNV}  */
	static public function nglMultiDrawArraysIndirectBindlessNV(mode:Int,indirect:haxe.Int64,drawCount:Int,stride:Int,vertexBufferCount:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,indirect:haxe.Int64,drawCount:Int,stride:Int,vertexBufferCount:Int):Void {})
/** Returns the {@link NVBindlessMultiDrawIndirect} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVBindlessMultiDrawIndirect;
/**
 * Behaves similar to {@link GL43#glMultiDrawArraysIndirect MultiDrawArraysIndirect}, except that {@code indirect} is treated as an array of {@code drawCount}
 * DrawArraysIndirectBindlessCommandNV structures:
 * <pre><code style="font-family: monospace">
 * typedef struct {
 *   GLuint   index;
 *   GLuint   reserved;
 *   GLuint64 address;
 *   GLuint64 length;
 * } BindlessPtrNV;
 * 
 * typedef struct {
 *   DrawArraysIndirectCommand   cmd;
 *   BindlessPtrNV               vertexBuffers[];
 * } DrawArraysIndirectBindlessCommandNV;</code></pre>
 *
 * @param mode              the primitive mode. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param indirect          an array of DrawArraysIndirectBindlessCommandNV structures (see the extension spec for more information)
 * @param drawCount         the number of structures in the <code>indirect</code> array
 * @param stride            the size of one DrawArraysIndirectBindlessCommandNV structure
 * @param vertexBufferCount the number of vertex buffers in the DrawArraysIndirectBindlessCommandNV structure
 */
	static public function glMultiDrawArraysIndirectBindlessNV(mode:Int,indirect:java.nio.ByteBuffer,drawCount:Int,stride:Int,vertexBufferCount:Int):Void;

}
