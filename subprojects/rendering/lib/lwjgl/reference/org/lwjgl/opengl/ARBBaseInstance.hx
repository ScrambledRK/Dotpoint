package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBBaseInstance")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/base_instance.txt">ARB_base_instance</a> extension.
 * 
 * <p>This extension allows the offset within buffer objects used for instanced rendering to be specified. This is congruent with the {@code first} parameter
 * in {@link GL11#glDrawArrays DrawArrays} and the {@code basevertex} parameter in {@link GL11#glDrawElements DrawElements}. When instanced rendering is performed (for example, through
 * {@link GL31#glDrawArraysInstanced DrawArraysInstanced}), instanced vertex attributes whose vertex attribute divisors are non-zero are fetched from enabled vertex arrays
 * per-instance rather than per-vertex. However, in unextended OpenGL, there is no way to define the offset into those arrays from which the attributes are
 * fetched. This extension adds that offset in the form of a <baseinstance> parameter to several new procedures.</p>
 * 
 * <p>The {@code baseinstance} parameter is added to the index of the array element, after division by the vertex attribute divisor. This allows several sets
 * of instanced vertex attribute data to be stored in a single vertex array, and the base offset of that data to be specified for each draw. Further, this
 * extension exposes the <baseinstance> parameter as the final and previously undefined structure member of the draw-indirect data structure.</p>
 * 
 * <p>Requires {@link GL31 OpenGL 3.1} or {@link ARBDrawInstanced ARB_draw_instanced}. Promoted to core in {@link GL42 OpenGL 4.2}.</p>
 */
extern class ARBBaseInstance 
{
/** Function address.  */
	public var DrawArraysInstancedBaseInstance:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstancedBaseInstance:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstancedBaseVertexBaseInstance:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** Alternative version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** Buffer object offset version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/**
 * Draws multiple instances of a set of elements with an offset applied to instanced attributes
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count        the number of elements to be rendered
 * @param type         the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices      a pointer to the location where the indices are stored
 * @param primcount    the number of instances of the specified range of indices to be rendered
 * @param baseinstance the base instance for use in fetching instanced vertex attributes
 */
	static public function glDrawElementsInstancedBaseInstance(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,baseinstance:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int,baseinstance:Int):Void {})
/** Returns the {@link ARBBaseInstance} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBBaseInstance;
/** Unsafe version of {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
	static public function nglDrawElementsInstancedBaseInstance(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,baseinstance:Int):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** Alternative version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** Buffer object offset version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/**
 * Renders multiple instances of a set of primitives from array data with a per-element offset.
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count        the number of elements to be rendered
 * @param type         the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices      a pointer to the location where the indices are stored
 * @param primcount    the number of instances of the indexed geometry that should be drawn
 * @param basevertex   a constant that should be added to each element of {@code indices} when choosing elements from the enabled vertex arrays
 * @param baseinstance the base instance for use in fetching instanced vertex attributes
 */
	static public function glDrawElementsInstancedBaseVertexBaseInstance(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
/**
 * Draws multiple instances of a range of elements with an offset applied to instanced attributes.
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param first        the starting index in the enabled arrays
 * @param count        the number of indices to be rendered
 * @param primcount    the number of instances of the specified range of indices to be rendered
 * @param baseinstance the base instance for use in fetching instanced vertex attributes
 */
	static public function glDrawArraysInstancedBaseInstance(mode:Int,first:Int,count:Int,primcount:Int,baseinstance:Int):Void;
/** Unsafe version of {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
	static public function nglDrawElementsInstancedBaseVertexBaseInstance(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,basevertex:Int,baseinstance:Int):Void;

}
