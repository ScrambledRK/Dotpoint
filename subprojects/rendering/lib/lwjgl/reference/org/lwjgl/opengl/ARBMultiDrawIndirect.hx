package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBMultiDrawIndirect")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/multi_draw_indirect.txt">ARB_multi_draw_indirect</a> extension.
 * 
 * <p>The {@link ARBDrawIndirect ARB_draw_indirect} extension (included in OpenGL 4.0) introduced mechanisms whereby the parameters for a draw function may be provided in a
 * structure contained in a buffer object rather than as parameters to the drawing procedure. This is known as an indirect draw and is exposed as two new
 * functions, {@link ARBDrawIndirect#glDrawArraysIndirect DrawArraysIndirect} and {@link ARBDrawIndirect#glDrawElementsIndirect DrawElementsIndirect}. Each of these functions generates a single batch of
 * primitives.</p>
 * 
 * <p>This extension builds on this functionality by providing procedures to invoke multiple draws from a single procedure call. This allows large batches of
 * drawing commands to be assembled in server memory (via a buffer object) which may then be dispatched through a single function call.</p>
 * 
 * <p>Requires {@link GL40 OpenGL 4.0} or {@link ARBDrawIndirect ARB_draw_indirect}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBMultiDrawIndirect 
{
/** Function address.  */
	public var MultiDrawArraysIndirect:haxe.Int64;
/** Function address.  */
	public var MultiDrawElementsIndirect:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glMultiDrawElementsIndirect MultiDrawElementsIndirect}  */
	static public function nglMultiDrawElementsIndirect(mode:Int,type:Int,indirect:haxe.Int64,primcount:Int,stride:Int):Void;
/** Returns the {@link ARBMultiDrawIndirect} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBMultiDrawIndirect;
/** Buffer object offset version of: {@link #glMultiDrawElementsIndirect MultiDrawElementsIndirect}  */
/**
 * Renders multiple indexed primitives from array data, taking parameters from memory.
 * 
 * <p>The parameters addressed by indirect are packed into a structure that takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint firstIndex;
 * 	uint baseVertex;
 * 	uint baseInstance;
 * } DrawElementsIndirectCommand;</code></pre></p>
 * 
 * <p>A single call to {@code glMultiDrawElementsIndirect} is equivalent, assuming no errors are generated to:
 * <pre><code style="font-family: monospace">
 * const ubyte *ptr = (const ubyte *)indirect;
 * for ( i = 0; i < primcount; i++ ) {
 * 	DrawElementsIndirect(mode, type, (DrawElementsIndirectCommand *)ptr);
 * 	if ( stride == 0 )
 * 		ptr += sizeof(DrawElementsIndirectCommand);
 * 	else
 * 		ptr += stride;
 * }</code></pre></p>
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param type      the type of data in the buffer bound to the GL_ELEMENT_ARRAY_BUFFER binding. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indirect  a structure containing an array of draw parameters
 * @param primcount the number of elements in the array addressed by {@code indirect}
 * @param stride    the distance in basic machine units between elements of the draw parameter array
 */
/** IntBuffer version of: {@link #glMultiDrawElementsIndirect MultiDrawElementsIndirect}  */
	static public function glMultiDrawElementsIndirect(mode:Int,type:Int,indirect:java.nio.IntBuffer,primcount:Int,stride:Int):Void;
	@:overload(function (mode:Int,type:Int,indirectOffset:haxe.Int64,primcount:Int,stride:Int):Void {})
	@:overload(function (mode:Int,type:Int,indirect:java.nio.ByteBuffer,primcount:Int,stride:Int):Void {})
/** Unsafe version of {@link #glMultiDrawArraysIndirect MultiDrawArraysIndirect}  */
	static public function nglMultiDrawArraysIndirect(mode:Int,indirect:haxe.Int64,primcount:Int,stride:Int):Void;
/** Buffer object offset version of: {@link #glMultiDrawArraysIndirect MultiDrawArraysIndirect}  */
/**
 * Renders multiple sets of primitives from array data, taking parameters from memory.
 * 
 * <p>The parameters addressed by {@code indirect} are packed into an array of structures, each element of which takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint first;
 * 	uint baseInstance;
 * } DrawArraysIndirectCommand;</code></pre></p>
 * 
 * <p>A single call to {@code glMultiDrawArraysIndirect} is equivalent, assuming no errors are generated to:
 * <pre><code style="font-family: monospace">
 * const ubyte *ptr = (const ubyte *)indirect;
 * for ( i = 0; i < primcount; i++ ) {
 * 	DrawArraysIndirect(mode, (DrawArraysIndirectCommand*)ptr);
 * 	if ( stride == 0 )
 * 		ptr += sizeof(DrawArraysIndirectCommand);
 * 	else
 * 		ptr += stride;
 * }</code></pre></p>
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param indirect  an array of structures containing the draw parameters
 * @param primcount the number of elements in the array of draw parameter structures
 * @param stride    the distance in basic machine units between elements of the draw parameter array
 */
/** IntBuffer version of: {@link #glMultiDrawArraysIndirect MultiDrawArraysIndirect}  */
	static public function glMultiDrawArraysIndirect(mode:Int,indirect:java.nio.IntBuffer,primcount:Int,stride:Int):Void;
	@:overload(function (mode:Int,indirectOffset:haxe.Int64,primcount:Int,stride:Int):Void {})
	@:overload(function (mode:Int,indirect:java.nio.ByteBuffer,primcount:Int,stride:Int):Void {})

}
