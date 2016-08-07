package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTVertexAttrib64bit")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/vertex_attrib_64bit.txt">EXT_vertex_attrib_64bit</a> extension.
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
 * matching types is identical to that used for the "VertexAttribI" functions provided by OpenGL 3.0 and the EXT_gpu_shader4 extension.</p>
 * 
 * <p>Additionally, some vertex shader inputs using the wider 64-bit components may count double against the implementation-dependent limit on the number of
 * vertex shader attribute vectors. A 64-bit scalar or a two-component vector consumes only a single generic vertex attribute; three- and four-component
 * "long" may count as two. This approach is similar to the one used in the current GL where matrix attributes consume multiple attributes.</p>
 * 
 * <p>Note that 64-bit generic vertex attributes were nominally supported beginning with the introduction of vertex shaders in OpenGL 2.0. However, the
 * OpenGL Shading Language at the time had no support for 64-bit data types, so any such values were automatically converted to 32-bit.</p>
 * 
 * <p>Support for 64-bit floating-point vertex attributes in this extension can be combined with other extensions. In particular, this extension provides an
 * entry point that can be used with EXT_direct_state_access to directly set state for any vertex array object. Also, the related
 * NV_vertex_attrib_integer_64bit extension provides an entry point to specify bindless vertex attribute arrays with 64-bit components, integer or
 * floating-point.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0} and {@link ARBGPUShaderFP64 ARB_gpu_shader_fp64} (or equivalent functionality).</p>
 */
extern class EXTVertexAttrib64bit 
{
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_VEC2_EXT:Int = 36860;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_VEC3_EXT:Int = 36861;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_VEC4_EXT:Int = 36862;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT2_EXT:Int = 36678;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT3_EXT:Int = 36679;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT4_EXT:Int = 36680;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT2x3_EXT:Int = 36681;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT2x4_EXT:Int = 36682;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT3x2_EXT:Int = 36683;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT3x4_EXT:Int = 36684;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT4x2_EXT:Int = 36685;
/** Returned in the {@code type} parameter of GetActiveAttrib.  */
	inline static public var GL_DOUBLE_MAT4x3_EXT:Int = 36686;
/** Function address.  */
	public var VertexAttribL1dEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribL2dEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribL3dEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribL4dEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribL1dvEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribL2dvEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribL3dvEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribL4dvEXT:haxe.Int64;
/** Function address.  */
	public var VertexAttribLPointerEXT:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribLdvEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribLOffsetEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glVertexAttribL2dEXT VertexAttribL2dEXT}  */
	static public function nglVertexAttribL2dEXT(index:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/** GL_DOUBLE version of: {@link #glVertexAttribLPointerEXT VertexAttribLPointerEXT}  */
/** Buffer object offset version of: {@link #glVertexAttribLPointerEXT VertexAttribLPointerEXT}  */
/**
 * 
 *
 * @param index   
 * @param size    
 * @param type    
 * @param stride  
 * @param pointer 
 */
	static public function glVertexAttribLPointerEXT(index:Int,size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (index:Int,size:Int,stride:Int,pointer:java.nio.DoubleBuffer):Void {})
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
/**
 * 
 *
 * @param index 
 * @param v     
 */
/** Alternative version of: {@link #glVertexAttribL3dvEXT VertexAttribL3dvEXT}  */
	static public function glVertexAttribL3dvEXT(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribL4dvEXT VertexAttribL4dvEXT}  */
/** JNI method for {@link #glVertexAttribL4dvEXT VertexAttribL4dvEXT}  */
	static public function nglVertexAttribL4dvEXT(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribL4dEXT VertexAttribL4dEXT}  */
	static public function nglVertexAttribL4dEXT(index:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param index 
 * @param x     
 */
	static public function glVertexAttribL1dEXT(index:Int,x:Float):Void;
/** Unsafe version of {@link #glVertexAttribL1dvEXT VertexAttribL1dvEXT}  */
/** JNI method for {@link #glVertexAttribL1dvEXT VertexAttribL1dvEXT}  */
	static public function nglVertexAttribL1dvEXT(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribL3dvEXT VertexAttribL3dvEXT}  */
/** JNI method for {@link #glVertexAttribL3dvEXT VertexAttribL3dvEXT}  */
	static public function nglVertexAttribL3dvEXT(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * 
 *
 * @param index  
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glGetVertexAttribLdvEXT GetVertexAttribLdvEXT}  */
	static public function glGetVertexAttribLdvEXT(index:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param index 
 * @param x     
 * @param y     
 * @param z     
 */
	static public function glVertexAttribL3dEXT(index:Int,x:Float,y:Float,z:Float):Void;
/** Unsafe version of {@link #glGetVertexAttribLdvEXT GetVertexAttribLdvEXT}  */
/** JNI method for {@link #glGetVertexAttribLdvEXT GetVertexAttribLdvEXT}  */
	static public function nglGetVertexAttribLdvEXT(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribL2dvEXT VertexAttribL2dvEXT}  */
/** JNI method for {@link #glVertexAttribL2dvEXT VertexAttribL2dvEXT}  */
	static public function nglVertexAttribL2dvEXT(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribLPointerEXT VertexAttribLPointerEXT}  */
/** JNI method for {@link #glVertexAttribLPointerEXT VertexAttribLPointerEXT}  */
	static public function nglVertexAttribLPointerEXT(index:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribL1dEXT VertexAttribL1dEXT}  */
	static public function nglVertexAttribL1dEXT(index:Int,x:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param index 
 * @param v     
 */
/** Alternative version of: {@link #glVertexAttribL2dvEXT VertexAttribL2dvEXT}  */
	static public function glVertexAttribL2dvEXT(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttribL3dEXT VertexAttribL3dEXT}  */
	static public function nglVertexAttribL3dEXT(index:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param index 
 * @param v     
 */
/** Alternative version of: {@link #glVertexAttribL4dvEXT VertexAttribL4dvEXT}  */
	static public function glVertexAttribL4dvEXT(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param index 
 * @param v     
 */
/** Alternative version of: {@link #glVertexAttribL1dvEXT VertexAttribL1dvEXT}  */
	static public function glVertexAttribL1dvEXT(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Returns the {@link EXTVertexAttrib64bit} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTVertexAttrib64bit;
/** JNI method for {@link #glVertexArrayVertexAttribLOffsetEXT VertexArrayVertexAttribLOffsetEXT}  */
	static public function nglVertexArrayVertexAttribLOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param index 
 * @param x     
 * @param y     
 */
	static public function glVertexAttribL2dEXT(index:Int,x:Float,y:Float):Void;
/**
 * 
 *
 * @param index 
 * @param x     
 * @param y     
 * @param z     
 * @param w     
 */
	static public function glVertexAttribL4dEXT(index:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * 
 *
 * @param vaobj  
 * @param buffer 
 * @param index  
 * @param size   
 * @param type   
 * @param stride 
 * @param offset 
 */
	static public function glVertexArrayVertexAttribLOffsetEXT(vaobj:Int,buffer:Int,index:Int,size:Int,type:Int,stride:Int,offset:haxe.Int64):Void;

}
