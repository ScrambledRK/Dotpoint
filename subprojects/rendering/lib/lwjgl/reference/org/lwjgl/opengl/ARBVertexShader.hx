package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexShader")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_shader.txt">ARB_vertex_shader</a> extension.
 * 
 * <p>This extension adds programmable vertex level processing to OpenGL. The application can write vertex shaders in a high level language as defined in the
 * OpenGL Shading Language specification. A vertex shader replaces the transformation, texture coordinate generation and lighting parts of OpenGL, and it
 * also adds texture access at the vertex level. Furthermore, management of vertex shader objects and loading generic attributes are discussed. A vertex
 * shader object, attached to a program object, can be compiled and linked to produce an executable that runs on the vertex processor in OpenGL.
 * This extension also defines how such an executable interacts with the fixed functionality vertex processing of OpenGL 1.4.</p>
 * 
 * <p>Promoted to core in {@link GL20 OpenGL 2.0}.</p>
 */
extern class ARBVertexShader 
{
/** Accepted by the {@code shaderType} argument of CreateShaderObjectARB and returned by the {@code params} parameter of GetObjectParameter{if}vARB.  */
	inline static public var GL_VERTEX_SHADER_ARB:Int = 35633;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB:Int = 35658;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VARYING_FLOATS_ARB:Int = 35659;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_ATTRIBS_ARB:Int = 34921;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TEXTURE_IMAGE_UNITS_ARB:Int = 34930;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB:Int = 35660;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB:Int = 35661;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TEXTURE_COORDS_ARB:Int = 34929;
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_VERTEX_PROGRAM_POINT_SIZE_ARB:Int = 34370;
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_VERTEX_PROGRAM_TWO_SIDE_ARB:Int = 34371;
/** Accepted by the {@code pname} parameter GetObjectParameter{if}vARB.  */
	inline static public var GL_OBJECT_ACTIVE_ATTRIBUTES_ARB:Int = 35721;
/** Accepted by the {@code pname} parameter GetObjectParameter{if}vARB.  */
	inline static public var GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB:Int = 35722;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB:Int = 34338;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB:Int = 34339;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB:Int = 34340;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB:Int = 34341;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}vARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB:Int = 34922;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}vARB.  */
	inline static public var GL_CURRENT_VERTEX_ATTRIB_ARB:Int = 34342;
/** Accepted by the {@code pname} parameter of GetVertexAttribPointervARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB:Int = 34373;
/** Returned by the {@code type} parameter of GetActiveAttribARB.  */
	inline static public var GL_FLOAT:Int = 5126;
/** Returned by the {@code type} parameter of GetActiveAttribARB.  */
	inline static public var GL_FLOAT_VEC2_ARB:Int = 35664;
/** Returned by the {@code type} parameter of GetActiveAttribARB.  */
	inline static public var GL_FLOAT_VEC3_ARB:Int = 35665;
/** Returned by the {@code type} parameter of GetActiveAttribARB.  */
	inline static public var GL_FLOAT_VEC4_ARB:Int = 35666;
/** Returned by the {@code type} parameter of GetActiveAttribARB.  */
	inline static public var GL_FLOAT_MAT2_ARB:Int = 35674;
/** Returned by the {@code type} parameter of GetActiveAttribARB.  */
	inline static public var GL_FLOAT_MAT3_ARB:Int = 35675;
/** Returned by the {@code type} parameter of GetActiveAttribARB.  */
	inline static public var GL_FLOAT_MAT4_ARB:Int = 35676;
/** Function address.  */
	public var VertexAttrib1fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4fARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4sARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4dARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NubARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4fvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4svARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4dvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4ivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4bvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4ubvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4usvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4uivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NbvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NsvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NubvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NusvARB:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4NuivARB:haxe.Int64;
/** Function address.  */
	public var VertexAttribPointerARB:haxe.Int64;
/** Function address.  */
	public var EnableVertexAttribArrayARB:haxe.Int64;
/** Function address.  */
	public var DisableVertexAttribArrayARB:haxe.Int64;
/** Function address.  */
	public var BindAttribLocationARB:haxe.Int64;
/** Function address.  */
	public var GetActiveAttribARB:haxe.Int64;
/** Function address.  */
	public var GetAttribLocationARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribivARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribfvARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribdvARB:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribPointervARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Pointer version of {@link #glVertexAttrib1dARB VertexAttrib1dARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib1dvARB VertexAttrib1dvARB}  */
	static public function glVertexAttrib1dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Specifies the value of a generic vertex attribute. The y and z components are implicitly set to 0.0f and w to 1.0f.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 */
	static public function glVertexAttrib1fARB(index:Int,v0:Float):Void;
/** JNI method for {@link #glVertexAttrib2sARB VertexAttrib2sARB}  */
	static public function nglVertexAttrib2sARB(index:Int,v0:Int16,v1:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Integer pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}  */
	static public function glVertexAttrib4ivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Normalized short pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4NsvARB VertexAttrib4NsvARB}  */
	static public function glVertexAttrib4NsvARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4usvARB VertexAttrib4usvARB}  */
/** JNI method for {@link #glVertexAttrib4usvARB VertexAttrib4usvARB}  */
	static public function nglVertexAttrib4usvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib3sARB VertexAttrib3sARB}  */
	static public function nglVertexAttrib3sARB(index:Int,v0:Int16,v1:Int16,v2:Int16,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib3dvARB VertexAttrib3dvARB}  */
/** JNI method for {@link #glVertexAttrib3dvARB VertexAttrib3dvARB}  */
	static public function nglVertexAttrib3dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** CharSequence version of: {@link #glGetAttribLocationARB GetAttribLocationARB}  */
/**
 * Returns the location of an attribute variable.
 *
 * @param programObj the program object to be queried
 * @param name       a null terminated string containing the name of the attribute variable whose location is to be queried
 */
	static public function glGetAttribLocationARB(programObj:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (programObj:Int,name:java.lang.CharSequence):Int {})
/**
 * Normalized unsigned byte pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4NubvARB(index:Int,v:java.nio.ByteBuffer):Void;
/** JNI method for {@link #glVertexAttrib1dARB VertexAttrib1dARB}  */
	static public function nglVertexAttrib1dARB(index:Int,v0:Float,__functionAddress:haxe.Int64):Void;
/**
 * Normalized unsigned byte version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 * @param w     the vertex attribute w component
 */
	static public function glVertexAttrib4NubARB(index:Int,x:Int8,y:Int8,z:Int8,w:Int8):Void;
/**
 * Pointer version of {@link #glVertexAttrib4NubARB VertexAttrib4NubARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4ubvARB(index:Int,v:java.nio.ByteBuffer):Void;
/**
 * Normalized int pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4NivARB VertexAttrib4NivARB}  */
	static public function glVertexAttrib4NivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Float version of {@link #glGetVertexAttribivARB GetVertexAttribivARB}.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}  */
	static public function glGetVertexAttribfvARB(index:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Specifies the value of a generic vertex attribute. The y component is implicitly set to 0.0f and w to 1.0f.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 */
	static public function glVertexAttrib2fARB(index:Int,v0:Float,v1:Float):Void;
/** Unsafe version of {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}  */
/** JNI method for {@link #glGetVertexAttribfvARB GetVertexAttribfvARB}  */
	static public function nglGetVertexAttribfvARB(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4dvARB VertexAttrib4dvARB}  */
/** JNI method for {@link #glVertexAttrib4dvARB VertexAttrib4dvARB}  */
	static public function nglVertexAttrib4dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib2dARB VertexAttrib2dARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib2dvARB VertexAttrib2dvARB}  */
	static public function glVertexAttrib2dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
	static public function glGetVertexAttribiARB(index:Int,pname:Int):Int;
/** Unsafe version of {@link #glVertexAttrib2fvARB VertexAttrib2fvARB}  */
/** JNI method for {@link #glVertexAttrib2fvARB VertexAttrib2fvARB}  */
	static public function nglVertexAttrib2fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Normalized unsigned int pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4NuivARB VertexAttrib4NuivARB}  */
	static public function glVertexAttrib4NuivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Returns the address of the specified generic vertex attribute pointer.
 *
 * @param index   the generic vertex attribute parameter to be queried
 * @param pname   the symbolic name of the generic vertex attribute parameter to be returned. Must be:<br>{@link #GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB VERTEX_ATTRIB_ARRAY_POINTER_ARB}
 * @param pointer the pointer value
 */
/** Alternative version of: {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
	static public function glGetVertexAttribPointervARB(index:Int,pname:Int,pointer:org.lwjgl.PointerBuffer):Void;
	@:overload(function (index:Int,pname:Int,pointer:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttrib1fARB VertexAttrib1fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib1fvARB VertexAttrib1fvARB}  */
	static public function glVertexAttrib1fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttrib4sARB VertexAttrib4sARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4svARB VertexAttrib4svARB}  */
	static public function glVertexAttrib4svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib4fARB VertexAttrib4fARB}  */
	static public function nglVertexAttrib4fARB(index:Int,v0:Float,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib4ubvARB VertexAttrib4ubvARB}  */
/** JNI method for {@link #glVertexAttrib4ubvARB VertexAttrib4ubvARB}  */
	static public function nglVertexAttrib4ubvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetActiveAttribARB GetActiveAttribARB}  */
/** JNI method for {@link #glGetActiveAttribARB GetActiveAttribARB}  */
	static public function nglGetActiveAttribARB(programObj:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (programObj:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib2dvARB VertexAttrib2dvARB}  */
/** JNI method for {@link #glVertexAttrib2dvARB VertexAttrib2dvARB}  */
	static public function nglVertexAttrib2dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Specifies the value of a generic vertex attribute. The w is implicitly set to 1.0f.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 */
	static public function glVertexAttrib3fARB(index:Int,v0:Float,v1:Float,v2:Float):Void;
/**
 * Normalized byte pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4NbvARB(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glVertexAttrib4NubvARB VertexAttrib4NubvARB}  */
/** JNI method for {@link #glVertexAttrib4NubvARB VertexAttrib4NubvARB}  */
	static public function nglVertexAttrib4NubvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib3dARB VertexAttrib3dARB}  */
	static public function nglVertexAttrib3dARB(index:Int,v0:Float,v1:Float,v2:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib3fvARB VertexAttrib3fvARB}  */
/** JNI method for {@link #glVertexAttrib3fvARB VertexAttrib3fvARB}  */
	static public function nglVertexAttrib3fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib1svARB VertexAttrib1svARB}  */
/** JNI method for {@link #glVertexAttrib1svARB VertexAttrib1svARB}  */
	static public function nglVertexAttrib1svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib2fARB VertexAttrib2fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib2fvARB VertexAttrib2fvARB}  */
	static public function glVertexAttrib2fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttrib3sARB VertexAttrib3sARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib3svARB VertexAttrib3svARB}  */
	static public function glVertexAttrib3svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}  */
/** JNI method for {@link #glVertexAttrib4ivARB VertexAttrib4ivARB}  */
	static public function nglVertexAttrib4ivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib1sARB VertexAttrib1sARB}  */
	static public function nglVertexAttrib1sARB(index:Int,v0:Int16,__functionAddress:haxe.Int64):Void;
/** String return (w/ implicit max length) version of: {@link #glGetActiveAttribARB GetActiveAttribARB}  */
/** String return version of: {@link #glGetActiveAttribARB GetActiveAttribARB}  */
/** Alternative version of: {@link #glGetActiveAttribARB GetActiveAttribARB}  */
/**
 * Returns information about an active attribute variable for the specified program object.
 *
 * @param programObj the program object to be queried
 * @param index      the index of the attribute variable to be queried
 * @param maxLength  the maximum number of characters OpenGL is allowed to write in the character buffer indicated by {@code name}
 * @param length     the number of characters actually written by OpenGL in the string indicated by {@code name} (excluding the null terminator) if a value other than NULL is passed
 * @param size       the size of the attribute variable
 * @param type       the data type of the attribute variable
 * @param name       a null terminated string containing the name of the attribute variable
 */
	static public function glGetActiveAttribARB(programObj:Int,index:Int,maxLength:Int,length:java.nio.ByteBuffer,size:java.nio.ByteBuffer,type:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (programObj:Int,index:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (programObj:Int,index:Int,maxLength:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (programObj:Int,index:Int,length:java.nio.IntBuffer,size:java.nio.IntBuffer,type:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/**
 * Double version of {@link #glGetVertexAttribivARB GetVertexAttribivARB}.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribdvARB GetVertexAttribdvARB}  */
	static public function glGetVertexAttribdvARB(index:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4svARB VertexAttrib4svARB}  */
/** JNI method for {@link #glVertexAttrib4svARB VertexAttrib4svARB}  */
	static public function nglVertexAttrib4svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4bvARB VertexAttrib4bvARB}  */
/** JNI method for {@link #glVertexAttrib4bvARB VertexAttrib4bvARB}  */
	static public function nglVertexAttrib4bvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetAttribLocationARB GetAttribLocationARB}  */
/** JNI method for {@link #glGetAttribLocationARB GetAttribLocationARB}  */
	static public function nglGetAttribLocationARB(programObj:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (programObj:Int,name:haxe.Int64):Int {})
/** JNI method for {@link #glVertexAttrib4NubARB VertexAttrib4NubARB}  */
	static public function nglVertexAttrib4NubARB(index:Int,x:Int8,y:Int8,z:Int8,w:Int8,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib2dARB VertexAttrib2dARB}  */
	static public function nglVertexAttrib2dARB(index:Int,v0:Float,v1:Float,__functionAddress:haxe.Int64):Void;
/**
 * Specifies the value of a generic vertex attribute.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 * @param v3    the vertex attribute w component
 */
	static public function glVertexAttrib4fARB(index:Int,v0:Float,v1:Float,v2:Float,v3:Float):Void;
/** Unsafe version of {@link #glVertexAttrib4uivARB VertexAttrib4uivARB}  */
/** JNI method for {@link #glVertexAttrib4uivARB VertexAttrib4uivARB}  */
	static public function nglVertexAttrib4uivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib4dARB VertexAttrib4dARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4dvARB VertexAttrib4dvARB}  */
	static public function glVertexAttrib4dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
/** JNI method for {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
	static public function nglGetVertexAttribivARB(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib3svARB VertexAttrib3svARB}  */
/** JNI method for {@link #glVertexAttrib3svARB VertexAttrib3svARB}  */
	static public function nglVertexAttrib3svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib1sARB VertexAttrib1sARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib1svARB VertexAttrib1svARB}  */
	static public function glVertexAttrib1svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glVertexAttrib3fARB VertexAttrib3fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib3fvARB VertexAttrib3fvARB}  */
	static public function glVertexAttrib3fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Double version of {@link #glVertexAttrib1fARB VertexAttrib1fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 */
	static public function glVertexAttrib1dARB(index:Int,v0:Float):Void;
/**
 * Enables a generic vertex attribute array.
 *
 * @param index the index of the generic vertex attribute to be enabled
 */
	static public function glEnableVertexAttribArrayARB(index:Int):Void;
/** Unsafe version of {@link #glVertexAttrib4NusvARB VertexAttrib4NusvARB}  */
/** JNI method for {@link #glVertexAttrib4NusvARB VertexAttrib4NusvARB}  */
	static public function nglVertexAttrib4NusvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
	static public function glGetVertexAttribPointerARB(index:Int,pname:Int):haxe.Int64;
/** JNI method for {@link #glVertexAttrib1fARB VertexAttrib1fARB}  */
	static public function nglVertexAttrib1fARB(index:Int,v0:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib4NbvARB VertexAttrib4NbvARB}  */
/** JNI method for {@link #glVertexAttrib4NbvARB VertexAttrib4NbvARB}  */
	static public function nglVertexAttrib4NbvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Short version of {@link #glVertexAttrib1fARB VertexAttrib1fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 */
	static public function glVertexAttrib1sARB(index:Int,v0:Int16):Void;
/** CharSequence version of: {@link #glBindAttribLocationARB BindAttribLocationARB}  */
/**
 * Associates a generic vertex attribute index with a named attribute variable.
 *
 * @param programObj the handle of the program object in which the association is to be made
 * @param index      the index of the generic vertex attribute to be bound
 * @param name       a null terminated string containing the name of the vertex shader attribute variable to which {@code index} is to be bound
 */
	static public function glBindAttribLocationARB(programObj:Int,index:Int,name:java.nio.ByteBuffer):Void;
	@:overload(function (programObj:Int,index:Int,name:java.lang.CharSequence):Void {})
/** JNI method for {@link #glDisableVertexAttribArrayARB DisableVertexAttribArrayARB}  */
	static public function nglDisableVertexAttribArrayARB(index:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib1dvARB VertexAttrib1dvARB}  */
/** JNI method for {@link #glVertexAttrib1dvARB VertexAttrib1dvARB}  */
	static public function nglVertexAttrib1dvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib3dARB VertexAttrib3dARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib3dvARB VertexAttrib3dvARB}  */
	static public function glVertexAttrib3dvARB(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Double version of {@link #glVertexAttrib2fARB VertexAttrib2fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 */
	static public function glVertexAttrib2dARB(index:Int,v0:Float,v1:Float):Void;
/** Unsafe version of {@link #glVertexAttrib4NuivARB VertexAttrib4NuivARB}  */
/** JNI method for {@link #glVertexAttrib4NuivARB VertexAttrib4NuivARB}  */
	static public function nglVertexAttrib4NuivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** GL_DOUBLE version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_FLOAT version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_INT version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_UNSIGNED_BYTE / GL_BYTE version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** GL_UNSIGNED_SHORT / GL_SHORT version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** Buffer object offset version of: {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/**
 * Specifies the location and organization of a vertex attribute array.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param size       the number of values per vertex that are stored in the array. The initial value is 4. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type       the data type of each component in the array. The initial value is GL_FLOAT. One of:<br>{@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_INT INT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL11#GL_DOUBLE DOUBLE}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL33#GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL41#GL_FIXED FIXED}
 * @param normalized whether fixed-point data values should be normalized or converted directly as fixed-point values when they are accessed
 * @param stride     the byte offset between consecutive generic vertex attributes. If stride is 0, the generic vertex attributes are understood to be tightly packed in
 *                   the array. The initial value is 0.
 * @param pointer    the vertex attribute data or the offset of the first component of the first generic vertex attribute in the array in the data store of the buffer
 *                   currently bound to the {@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER} target. The initial value is 0.
 */
	static public function glVertexAttribPointerARB(index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.DoubleBuffer):Void {})
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.IntBuffer):Void {})
	@:overload(function (index:Int,size:Int,unsigned:Bool,normalized:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void {})
	@:overload(function (index:Int,size:Int,unsigned:Bool,normalized:Bool,stride:Int,pointer:java.nio.ShortBuffer):Void {})
	@:overload(function (index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointerOffset:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}  */
	static public function glVertexAttrib4fvARB(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib2svARB VertexAttrib2svARB}  */
/** JNI method for {@link #glVertexAttrib2svARB VertexAttrib2svARB}  */
	static public function nglVertexAttrib2svARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Disables a generic vertex attribute array.
 *
 * @param index the index of the generic vertex attribute to be disabled
 */
	static public function glDisableVertexAttribArrayARB(index:Int):Void;
/**
 * Byte pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4bvARB(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
/** JNI method for {@link #glGetVertexAttribPointervARB GetVertexAttribPointervARB}  */
	static public function nglGetVertexAttribPointervARB(index:Int,pname:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,pointer:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib4dARB VertexAttrib4dARB}  */
	static public function nglVertexAttrib4dARB(index:Int,v0:Float,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/**
 * Short version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 * @param v3    the vertex attribute w component
 */
	static public function glVertexAttrib4sARB(index:Int,v0:Int16,v1:Int16,v2:Int16,v3:Int16):Void;
/**
 * Double version of {@link #glVertexAttrib3fARB VertexAttrib3fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 */
	static public function glVertexAttrib3dARB(index:Int,v0:Float,v1:Float,v2:Float):Void;
/** Unsafe version of {@link #glVertexAttrib1fvARB VertexAttrib1fvARB}  */
/** JNI method for {@link #glVertexAttrib1fvARB VertexAttrib1fvARB}  */
	static public function nglVertexAttrib1fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glVertexAttrib2sARB VertexAttrib2sARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib2svARB VertexAttrib2svARB}  */
	static public function glVertexAttrib2svARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glEnableVertexAttribArrayARB EnableVertexAttribArrayARB}  */
	static public function nglEnableVertexAttribArrayARB(index:Int,__functionAddress:haxe.Int64):Void;
/**
 * Normalized unsigned short pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4NusvARB VertexAttrib4NusvARB}  */
	static public function glVertexAttrib4NusvARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
/** JNI method for {@link #glVertexAttribPointerARB VertexAttribPointerARB}  */
	static public function nglVertexAttribPointerARB(index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:haxe.Int64):Void {})
/** Unsafe version of {@link #glBindAttribLocationARB BindAttribLocationARB}  */
/** JNI method for {@link #glBindAttribLocationARB BindAttribLocationARB}  */
	static public function nglBindAttribLocationARB(programObj:Int,index:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (programObj:Int,index:Int,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexAttribdvARB GetVertexAttribdvARB}  */
/** JNI method for {@link #glGetVertexAttribdvARB GetVertexAttribdvARB}  */
	static public function nglGetVertexAttribdvARB(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4NsvARB VertexAttrib4NsvARB}  */
/** JNI method for {@link #glVertexAttrib4NsvARB VertexAttrib4NsvARB}  */
	static public function nglVertexAttrib4NsvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib3fARB VertexAttrib3fARB}  */
	static public function nglVertexAttrib3fARB(index:Int,v0:Float,v1:Float,v2:Float,__functionAddress:haxe.Int64):Void;
/**
 * Unsigned short pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4usvARB VertexAttrib4usvARB}  */
	static public function glVertexAttrib4usvARB(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * Short version of {@link #glVertexAttrib3fARB VertexAttrib3fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 */
	static public function glVertexAttrib3sARB(index:Int,v0:Int16,v1:Int16,v2:Int16):Void;
/** JNI method for {@link #glVertexAttrib4sARB VertexAttrib4sARB}  */
	static public function nglVertexAttrib4sARB(index:Int,v0:Int16,v1:Int16,v2:Int16,v3:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Double version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 * @param v3    the vertex attribute w component
 */
	static public function glVertexAttrib4dARB(index:Int,v0:Float,v1:Float,v2:Float,v3:Float):Void;
/**
 * Unsigned int pointer version of {@link #glVertexAttrib4fARB VertexAttrib4fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4uivARB VertexAttrib4uivARB}  */
	static public function glVertexAttrib4uivARB(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4NivARB VertexAttrib4NivARB}  */
/** JNI method for {@link #glVertexAttrib4NivARB VertexAttrib4NivARB}  */
	static public function nglVertexAttrib4NivARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttrib2fARB VertexAttrib2fARB}  */
	static public function nglVertexAttrib2fARB(index:Int,v0:Float,v1:Float,__functionAddress:haxe.Int64):Void;
/**
 * Returns the integer value of a generic vertex attribute parameter.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried. One of:<br>{@link GL15#GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING VERTEX_ATTRIB_ARRAY_BUFFER_BINDING}, {@link #GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB VERTEX_ATTRIB_ARRAY_ENABLED_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB VERTEX_ATTRIB_ARRAY_SIZE_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB VERTEX_ATTRIB_ARRAY_STRIDE_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB VERTEX_ATTRIB_ARRAY_TYPE_ARB}, {@link #GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB}, {@link #GL_CURRENT_VERTEX_ATTRIB_ARB CURRENT_VERTEX_ATTRIB_ARB}, {@link GL30#GL_VERTEX_ATTRIB_ARRAY_INTEGER VERTEX_ATTRIB_ARRAY_INTEGER}, {@link GL33#GL_VERTEX_ATTRIB_ARRAY_DIVISOR VERTEX_ATTRIB_ARRAY_DIVISOR}
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribivARB GetVertexAttribivARB}  */
	static public function glGetVertexAttribivARB(index:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Returns the {@link ARBVertexShader} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexShader;
/** Unsafe version of {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}  */
/** JNI method for {@link #glVertexAttrib4fvARB VertexAttrib4fvARB}  */
	static public function nglVertexAttrib4fvARB(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * Short version of {@link #glVertexAttrib2fARB VertexAttrib2fARB}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 */
	static public function glVertexAttrib2sARB(index:Int,v0:Int16,v1:Int16):Void;

}
