package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexArrayObject")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_array_object.txt">ARB_vertex_array_object</a> extension.
 * 
 * <p>This extension introduces named vertex array objects which encapsulate vertex array state on the client side. These objects allow applications to
 * rapidly switch between large sets of array state. In addition, layered libraries can return to the default array state by simply creating and binding a
 * new vertex array object.</p>
 * 
 * <p>This extension differs from GL_APPLE_vertex_array_object in that client memory cannot be accessed through a non-zero vertex array object. It also
 * differs in that vertex array objects are explicitly not sharable between contexts.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBVertexArrayObject 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_VERTEX_ARRAY_BINDING:Int = 34229;
/** Function address.  */
	public var BindVertexArray:haxe.Int64;
/** Function address.  */
	public var DeleteVertexArrays:haxe.Int64;
/** Function address.  */
	public var GenVertexArrays:haxe.Int64;
/** Function address.  */
	public var IsVertexArray:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Determines if a name corresponds to a vertex array object.
 *
 * @param array a value that may be the name of a vertex array object
 */
	static public function glIsVertexArray(array:Int):Bool;
/**
 * Binds a vertex array object
 *
 * @param array the name of the vertex array to bind
 */
	static public function glBindVertexArray(array:Int):Void;
/** Single value version of: {@link #glDeleteVertexArrays DeleteVertexArrays}  */
/** Alternative version of: {@link #glDeleteVertexArrays DeleteVertexArrays}  */
/**
 * Deletes vertex array objects.
 *
 * @param n      the number of vertex array objects to be deleted
 * @param arrays an array containing the n names of the objects to be deleted
 */
	static public function glDeleteVertexArrays(n:Int,arrays:java.nio.ByteBuffer):Void;
	@:overload(function (array:Int):Void {})
	@:overload(function (arrays:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGenVertexArrays GenVertexArrays}  */
/** Alternative version of: {@link #glGenVertexArrays GenVertexArrays}  */
/**
 * Generates vertex array object names.
 *
 * @param n      the number of vertex array object names to generate
 * @param arrays a buffer in which the generated vertex array object names are stored
 */
	static public function glGenVertexArrays(n:Int,arrays:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (arrays:java.nio.IntBuffer):Void {})
/** Returns the {@link ARBVertexArrayObject} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexArrayObject;
/** Unsafe version of {@link #glGenVertexArrays GenVertexArrays}  */
	static public function nglGenVertexArrays(n:Int,arrays:haxe.Int64):Void;
/** Unsafe version of {@link #glDeleteVertexArrays DeleteVertexArrays}  */
	static public function nglDeleteVertexArrays(n:Int,arrays:haxe.Int64):Void;

}
