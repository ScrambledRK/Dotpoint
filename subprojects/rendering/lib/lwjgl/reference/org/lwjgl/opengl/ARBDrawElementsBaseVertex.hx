package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDrawElementsBaseVertex")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/draw_elements_base_vertex.txt">ARB_draw_elements_base_vertex</a> extension.
 * 
 * <p>This extension provides a method to specify a "base vertex offset" value which is effectively added to every vertex index that is transferred through
 * {@link GL11#glDrawElements DrawElements}.</p>
 * 
 * <p>This mechanism can be used to decouple a set of indices from the actual vertex array that it is referencing. This is useful if an application stores
 * multiple indexed models in a single vertex array. The same index array can be used to draw the model no matter where it ends up in a larger vertex array
 * simply by changing the base vertex value. Without this functionality, it would be necessary to rebind all the vertex attributes every time geometry is
 * switched and this can have larger performance penalty.</p>
 * 
 * <p>For example consider the (very contrived and simple) example of drawing two triangles to form a quad. In the typical example you have the following
 * setup:
 * <pre><code style="font-family: monospace">
 *     vertices         indices
 *    ----------        -----
 * 0 | (-1,  1) |    0 |  0  |
 * 1 | (-1, -1) |    1 |  1  |
 * 2 | ( 1, -1) |    2 |  2  |
 * 3 | ( 1,  1) |    3 |  3  |
 *    ----------     4 |  0  |
 *                   5 |  2  |
 *                      -----</code></pre>
 * which is normally rendered with the call
 * <pre><code style="font-family: monospace">
 * DrawElements(TRIANGLES, 6, UNSIGNED_BYTE, &indices).</code></pre>
 * Now consider the case where the vertices you want to draw are not at the start of a vertex array but are instead located at offset 100 into a larger
 * array:
 * <pre><code style="font-family: monospace">
 *      vertices2         indices2
 *      ----------        -----
 *         ....        0 | 100 |
 * 100 | (-1,  1) |    1 | 101 |
 * 101 | (-1, -1) |    2 | 102 |
 * 102 | ( 1, -1) |    3 | 103 |
 * 103 | ( 1,  1) |    4 | 100 |
 *         ....        5 | 102 |
 *      ----------        -----</code></pre>
 * The typical choices for rendering this are to rebind your vertex attributes with an additional offset of 100*stride, or to create an new array of
 * indices (as indices2 in the example). However both rebinding vertex attributes and rebuilding index arrays can be quite costly activities.</p>
 * 
 * <p>With the new drawing commands introduced by this extension you can instead draw using vertices2 and the new draw call:
 * <pre><code style="font-family: monospace">
 * DrawElementsBaseVertex(TRIANGLES, 6, UNSIGNED_BYTE, &indices, 100)</code></pre></p>
 * 
 * <p>Promoted to core in {@link GL32 OpenGL 3.2}.</p>
 */
extern class ARBDrawElementsBaseVertex 
{
/** Function address.  */
	public var DrawElementsBaseVertex:haxe.Int64;
/** Function address.  */
	public var DrawRangeElementsBaseVertex:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstancedBaseVertex:haxe.Int64;
/** Function address.  */
	public var MultiDrawElementsBaseVertex:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
	static public function nglDrawElementsBaseVertex(mode:Int,count:Int,type:Int,indices:haxe.Int64,basevertex:Int):Void;
/** Unsafe version of {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
	static public function nglDrawElementsInstancedBaseVertex(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,basevertex:Int):Void;
/** Unsafe version of {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
	static public function nglDrawRangeElementsBaseVertex(mode:Int,start:Int,end:Int,count:Int,type:Int,indices:haxe.Int64,basevertex:Int):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** Alternative version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/** Buffer object offset version of: {@link #glDrawRangeElementsBaseVertex DrawRangeElementsBaseVertex}  */
/**
 * Renders primitives from array data with a per-element offset.
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param start      the minimum array index contained in {@code indices}
 * @param end        the maximum array index contained in {@code indices}
 * @param count      the number of elements to be rendered
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param basevertex a constant that should be added to each element of {@code indices} when choosing elements from the enabled vertex arrays
 */
	static public function glDrawRangeElementsBaseVertex(mode:Int,start:Int,end:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void;
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.IntBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.ShortBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,count:Int,type:Int,indicesOffset:haxe.Int64,basevertex:Int):Void {})
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** Alternative version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/** Buffer object offset version of: {@link #glDrawElementsBaseVertex DrawElementsBaseVertex}  */
/**
 * Renders primitives from array data with a per-element offset.
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count      the number of elements to be rendered
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param basevertex a constant that should be added to each element of {@code indices} when choosing elements from the enabled vertex arrays
 */
	static public function glDrawElementsBaseVertex(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,basevertex:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,basevertex:Int):Void {})
/** Unsafe version of {@link #glMultiDrawElementsBaseVertex MultiDrawElementsBaseVertex}  */
	static public function nglMultiDrawElementsBaseVertex(mode:Int,count:haxe.Int64,type:Int,indices:haxe.Int64,primcount:Int,basevertex:haxe.Int64):Void;
/** Returns the {@link ARBDrawElementsBaseVertex} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBDrawElementsBaseVertex;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** Alternative version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/** Buffer object offset version of: {@link #glDrawElementsInstancedBaseVertex DrawElementsInstancedBaseVertex}  */
/**
 * Renders multiple instances of a set of primitives from array data with a per-element offset.
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count      the number of elements to be rendered
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param primcount  the number of instances of the indexed geometry that should be drawn
 * @param basevertex a constant that should be added to each element of indices when chosing elements from the enabled vertex arrays
 */
	static public function glDrawElementsInstancedBaseVertex(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int,basevertex:Int):Void {})
/** Alternative version of: {@link #glMultiDrawElementsBaseVertex MultiDrawElementsBaseVertex}  */
/**
 * Renders multiple sets of primitives by specifying indices of array data elements and an offset to apply to each index.
 * 
 * <p><b>LWJGL note</b>: Use {@link MemoryUtil#memAddress} to retrieve pointers to the index buffers.</p>
 *
 * @param mode       the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count      an array of the elements counts
 * @param type       the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices    a pointer to the location where the indices are stored
 * @param primcount  the size of the {@code count} array
 * @param basevertex a pointer to the location where the base vertices are stored
 */
	static public function glMultiDrawElementsBaseVertex(mode:Int,count:java.nio.ByteBuffer,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:java.nio.ByteBuffer):Void;
	@:overload(function (mode:Int,count:java.nio.IntBuffer,type:Int,indices:org.lwjgl.PointerBuffer,basevertex:java.nio.IntBuffer):Void {})

}
