package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVVertexArrayRange")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/vertex_array_range.txt">NV_vertex_array_range</a> extension.
 * 
 * <p>The goal of this extension is to permit extremely high vertex
 * processing rates via OpenGL vertex arrays even when the CPU lacks
 * the necessary data movement bandwidth to keep up with the rate
 * at which the vertex engine can consume vertices.</p>
 */
extern class NVVertexArrayRange 
{
/** Accepted by the {@code cap} parameter of EnableClientState, DisableClientState, and IsEnabled.  */
	inline static public var GL_VERTEX_ARRAY_RANGE_NV:Int = 34077;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_VERTEX_ARRAY_RANGE_LENGTH_NV:Int = 34078;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_VERTEX_ARRAY_RANGE_VALID_NV:Int = 34079;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV:Int = 34080;
/** Accepted by the {@code pname} parameter of GetPointerv.  */
	inline static public var GL_VERTEX_ARRAY_RANGE_POINTER_NV:Int = 34081;
/** Function address.  */
	public var VertexArrayRangeNV:haxe.Int64;
/** Function address.  */
	public var FlushVertexArrayRangeNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glFlushVertexArrayRangeNV FlushVertexArrayRangeNV}  */
	static public function nglFlushVertexArrayRangeNV(__functionAddress:haxe.Int64):Void;
	static public function glFlushVertexArrayRangeNV():Void;
/** Unsafe version of {@link #glVertexArrayRangeNV VertexArrayRangeNV}  */
/** JNI method for {@link #glVertexArrayRangeNV VertexArrayRangeNV}  */
	static public function nglVertexArrayRangeNV(length:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (length:Int,pointer:haxe.Int64):Void {})
/** Returns the {@link NVVertexArrayRange} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVVertexArrayRange;
/**
 * 
 *
 * @param length  
 * @param pointer 
 */
	static public function glVertexArrayRangeNV(length:Int,pointer:java.nio.ByteBuffer):Void;

}
