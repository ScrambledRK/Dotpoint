package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDrawInstanced")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/draw_instanced.txt">ARB_draw_instanced</a> extension.
 * 
 * <p>A common use case in GL for some applications is to be able to draw the same object, or groups of similar objects that share vertex data, primitive
 * count and type, multiple times. This extension provides a means of accelerating such use cases while restricting the number of API calls, and keeping
 * the amount of duplicate data to a minimum.</p>
 * 
 * <p>This extension introduces two draw calls which are conceptually equivalent to a series of draw calls. Each conceptual call in this series is considered
 * an "instance" of the actual draw call.</p>
 * 
 * <p>This extension also introduces a read-only built-in variable to GLSL which contains the "instance ID." This variable initially contains 0, but increases
 * by one after each conceptual draw call.</p>
 * 
 * <p>By using the instance ID or multiples thereof as an index into a uniform array containing transform data, vertex shaders can draw multiple instances of
 * an object with a single draw call.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0} or <a href="http://www.opengl.org/registry/specs/EXT/gpu_shader4.txt">EXT_gpu_shader4</a> or <a href="http://www.opengl.org/registry/specs/NV/vertex_program4.txt">NV_vertex_program4</a>. Promoted to core in {@link GL31 OpenGL 3.1}.</p>
 */
extern class ARBDrawInstanced 
{
/** Function address.  */
	public var DrawArraysInstancedARB:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstancedARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstancedARB DrawElementsInstancedARB}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstancedARB DrawElementsInstancedARB}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstancedARB DrawElementsInstancedARB}  */
/** Alternative version of: {@link #glDrawElementsInstancedARB DrawElementsInstancedARB}  */
/** Buffer object offset version of: {@link #glDrawElementsInstancedARB DrawElementsInstancedARB}  */
/**
 * Draws multiple instances of a set of elements.
 *
 * @param mode      the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count     the number of elements to be rendered
 * @param type      the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices   a pointer to the location where the indices are stored
 * @param primcount the number of instances of the specified range of indices to be rendered
 */
	static public function glDrawElementsInstancedARB(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int):Void {})
/**
 * Draw multiple instances of a range of elements.
 *
 * @param mode      the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param first     the starting index in the enabled arrays
 * @param count     the number of indices to be rendered
 * @param primcount the number of instances of the specified range of indices to be rendered
 */
	static public function glDrawArraysInstancedARB(mode:Int,first:Int,count:Int,primcount:Int):Void;
/** Unsafe version of {@link #glDrawElementsInstancedARB DrawElementsInstancedARB}  */
/** JNI method for {@link #glDrawElementsInstancedARB DrawElementsInstancedARB}  */
	static public function nglDrawElementsInstancedARB(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int):Void {})
/** Returns the {@link ARBDrawInstanced} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBDrawInstanced;
/** JNI method for {@link #glDrawArraysInstancedARB DrawArraysInstancedARB}  */
	static public function nglDrawArraysInstancedARB(mode:Int,first:Int,count:Int,primcount:Int,__functionAddress:haxe.Int64):Void;

}
