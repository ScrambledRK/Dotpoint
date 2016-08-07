package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexAttrib64Bit")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_attrib_64bit.txt">ARB_vertex_attrib_64bit</a> extension.
 * 
 * <p>This extension provides OpenGL shading language support for vertex shader inputs with 64-bit floating-point components and OpenGL API support for
 * specifying the value of those inputs using vertex array or immediate mode entry points. This builds on the support for general-purpose support for
 * 64-bit floating-point values in the ARB_gpu_shader_fp64 extension.</p>
 * 
 * <p>This extension provides a new class of vertex attribute functions, beginning with "VertexAttribL" ("L" for "long"), that can be used to specify
 * attributes with 64-bit floating-point components. This extension provides no automatic type conversion between attribute and shader variables;
 * single-precision attributes are not automatically converted to double-precision or vice versa. For shader variables with 64-bit component types, the
 * "VertexAttribL" functions must be used to specify attribute values. For other shader variables, the "VertexAttribL" functions must not be used. If a
 * vertex attribute is specified using the wrong attribute function, the values of the corresponding shader input are undefined. This approach requiring
 * matching types is identical to that used for the "VertexAttribI" functions provided by OpenGL 3.0 and the <a href="http://www.opengl.org/registry/specs/EXT/gpu_shader4.txt">EXT_gpu_shader4</a>
 * extension.</p>
 * 
 * <p>Additionally, some vertex shader inputs using the wider 64-bit components may count double against the implementation-dependent limit on the number of
 * vertex shader attribute vectors. A 64-bit scalar or a two-component vector consumes only a single generic vertex attribute; three- and four-component
 * "long" may count as two. This approach is similar to the one used in the current GL where matrix attributes consume multiple attributes.</p>
 * 
 * <p>Note that 64-bit generic vertex attributes were nominally supported beginning with the introduction of vertex shaders in OpenGL 2.0. However, the OpenGL
 * Shading Language at the time had no support for 64-bit data types, so any such values were automatically converted to 32-bit.</p>
 * 
 * <p>Support for 64-bit floating-point vertex attributes in this extension can be combined with other extensions. In particular, this extension provides an
 * entry point that can be used with EXT_direct_state_access to directly set state for any vertex array object. Also, the related
 * <a href="http://www.opengl.org/registry/specs/NV/vertex_attrib_integer_64bit.txt">NV_vertex_attrib_integer_64bit</a> extension provides an entry point to specify bindless vertex attribute arrays with 64-bit
 * components, integer or floating-point.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}, GLSL 1.30 and {@link ARBGPUShaderFP64 ARB_gpu_shader_fp64}. Promoted to core in {@link GL41 OpenGL 4.1}.</p>
 */
extern class ARBVertexAttrib64Bit 
{
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_VEC2:Int = 36860;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_VEC3:Int = 36861;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_VEC4:Int = 36862;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT2:Int = 36678;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT3:Int = 36679;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT4:Int = 36680;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT2x3:Int = 36681;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT2x4:Int = 36682;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT3x2:Int = 36683;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT3x4:Int = 36684;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT4x2:Int = 36685;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT4x3:Int = 36686;
/** Function address.  */
	public var VertexAttribL1d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL2d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL3d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL4d:haxe.Int64;
/** Function address.  */
	public var VertexAttribL1dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribL2dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribL3dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribL4dv:haxe.Int64;
/** Function address.  */
	public var VertexAttribLPointer:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribLdv:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribLOffsetEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glVertexAttribL4dv VertexAttribL4dv}  */
	static public function nglVertexAttribL4dv(index:Int,v:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribL3dv VertexAttribL3dv}  */
	static public function nglVertexAttribL3dv(index:Int,v:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribL2dv VertexAttribL2dv}  */
	static public function nglVertexAttribL2dv(index:Int,v:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribL1dv VertexAttribL1dv}  */
	static public function nglVertexAttribL1dv(index:Int,v:haxe.Int64):Void;
/**
 * Pointer version of {@link #glVertexAttribL4d VertexAttribL4d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL4dv VertexAttribL4dv}  */
	static public function glVertexAttribL4dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribLPointer VertexAttribLPointer}  */
	static public function nglVertexAttribLPointer(index:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void;
/**
 * Pointer version of {@link #glVertexAttribL3d VertexAttribL3d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL3dv VertexAttribL3dv}  */
	static public function glVertexAttribL3dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttribL2d VertexAttribL2d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL2dv VertexAttribL2dv}  */
	static public function glVertexAttribL2dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** GL_DOUBLE version of: {@link #glVertexAttribLPointer VertexAttribLPointer}  */
/** Buffer object offset version of: {@link #glVertexAttribLPointer VertexAttribLPointer}  */
/**
 * Specifies the location and organization of a 64-bit vertex attribute array.
 *
 * @param index   the index of the generic vertex attribute to be modified
 * @param size    the number of values per vertex that are stored in the array. The initial value is 4. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type    the data type of each component in the array. Must be:<br>{@link GL11#GL_DOUBLE DOUBLE}
 * @param stride  the byte offset between consecutive generic vertex attributes. If stride is 0, the generic vertex attributes are understood to be tightly packed in
 *                the array. The initial value is 0.
 * @param pointer the vertex attribute data or the offset of the first component of the first generic vertex attribute in the array in the data store of the buffer
 *                currently bound to the {@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER} target. The initial value is 0.
 */
	static public function glVertexAttribLPointer(index:Int,size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (index:Int,size:Int,stride:Int,pointer:java.nio.DoubleBuffer):Void {})
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttribL1d VertexAttribL1d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribL1dv VertexAttribL1dv}  */
	static public function glVertexAttribL1dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetVertexAttribLdv GetVertexAttribLdv}  */
	static public function nglGetVertexAttribLdv(index:Int,pname:Int,params:haxe.Int64):Void;
/**
 * Specifies the value of a generic vertex attribute.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 * @param w     the vertex attribute w component
 */
	static public function glVertexAttribL4d(index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * Specifies the value of a generic vertex attribute. The w is implicitly set to 1.0.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 */
	static public function glVertexAttribL3d(index:Int,x:Float,y:Float,z:Float):Void;
/** Returns the {@link ARBVertexAttrib64Bit} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexAttrib64Bit;
/**
 * Specifies the value of a generic vertex attribute. The y component is implicitly set to 0.0 and w to 1.0.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 */
	static public function glVertexAttribL2d(index:Int,x:Float,y:Float):Void;
/** JNI method for {@link #glVertexArrayVertexAttribLOffsetEXT VertexArrayVertexAttribLOffsetEXT}  */
	static public function nglVertexArrayVertexAttribLOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * Specifies the value of a generic vertex attribute. The y and z components are implicitly set to 0.0 and w to 1.0.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 */
	static public function glVertexAttribL1d(index:Int,x:Float):Void;
/**
 * Double version of {@link GL20#glGetVertexAttribi GetVertexAttribi}.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribLdv GetVertexAttribLdv}  */
	static public function glGetVertexAttribLdv(index:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link #glVertexAttribLPointer VertexAttribLPointer}.
 *
 * @param vaobj  the vertex array object
 * @param buffer the buffer object
 * @param index  the index of the generic vertex attribute to be modified
 * @param size   the number of values per vertex that are stored in the array. The initial value is 4. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type   the data type of each component in the array. Must be:<br>{@link GL11#GL_DOUBLE DOUBLE}
 * @param stride the byte offset between consecutive generic vertex attributes. If stride is 0, the generic vertex attributes are understood to be tightly packed in
 *               the array. The initial value is 0.
 * @param offset the offset of the first component of the first generic vertex attribute in the array in the data store of the buffer. The initial value is 0.
 */
	static public function glVertexArrayVertexAttribLOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;

}
