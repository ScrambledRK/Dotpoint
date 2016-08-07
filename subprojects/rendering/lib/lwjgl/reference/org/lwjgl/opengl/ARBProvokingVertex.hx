package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBProvokingVertex")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/provoking_vertex.txt">ARB_provoking_vertex</a> extension.
 * 
 * <p>This extension provides an alternative provoking vertex convention for rendering lines, triangles, and (optionally depending on the implementation)
 * quads.</p>
 * 
 * <p>The provoking vertex of a primitive is the vertex that determines the constant primary and secondary colors when flat shading is enabled.</p>
 * 
 * <p>In OpenGL, the provoking vertex for triangle, quad, line, and (trivially) point primitives is the last vertex used to assemble the primitive. The
 * polygon primitive is an exception in OpenGL where the first vertex of a polygon primitive determines the color of the polygon, even if actually broken
 * into triangles and/or quads.</p>
 * 
 * <p>Alternatively the provoking vertex could be the first vertex of the primitive. Other APIs with flat-shading functionality such as Reality Lab and
 * Direct3D have adopted the "first vertex of the primitive" convention to determine the provoking vertex. However, these APIs lack quads so do not have a
 * defined provoking vertex convention for quads.</p>
 * 
 * <p>The motivation for this extension is to allow applications developed for APIs with a "first vertex of the primitive" provoking vertex to be easily
 * converted to OpenGL.</p>
 * 
 * <p>Promoted to core in {@link GL32 OpenGL 3.2}.</p>
 */
extern class ARBProvokingVertex 
{
/** Accepted by the {@code mode} parameter of ProvokingVertex.  */
	inline static public var GL_FIRST_VERTEX_CONVENTION:Int = 36429;
/** Accepted by the {@code mode} parameter of ProvokingVertex.  */
	inline static public var GL_LAST_VERTEX_CONVENTION:Int = 36430;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_PROVOKING_VERTEX:Int = 36431;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION:Int = 36428;
/** Function address.  */
	public var ProvokingVertex:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Specifies the vertex to be used as the source of data for flat shaded varyings.
 *
 * @param mode the provoking vertex mode. One of:<br>{@link #GL_FIRST_VERTEX_CONVENTION FIRST_VERTEX_CONVENTION}, {@link #GL_LAST_VERTEX_CONVENTION LAST_VERTEX_CONVENTION}
 */
	static public function glProvokingVertex(mode:Int):Void;
/** Returns the {@link ARBProvokingVertex} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBProvokingVertex;

}
