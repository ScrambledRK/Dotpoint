package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL33")
@:final
/**
 * The core OpenGL 3.3 functionality. OpenGL 3.3 implementations support revision 3.30 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_bit_encoding.txt">ARB_shader_bit_encoding</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/blend_func_extended.txt">ARB_blend_func_extended</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/explicit_attrib_location.txt">ARB_explicit_attrib_location</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/occlusion_query2.txt">ARB_occlusion_query2</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/sampler_objects.txt">ARB_sampler_objects</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_rgb10_a2ui.txt">ARB_texture_rgb10_a2ui</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_swizzle.txt">ARB_texture_swizzle</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/timer_query.txt">ARB_timer_query</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/instanced_arrays.txt">ARB_instanced_arrays</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/vertex_type_2_10_10_10_rev.txt">ARB_vertex_type_2_10_10_10_rev</a></li>
 * </ul></p>
 */
extern class GL33 
{
/**
 * Accepted by the {@code src} and {@code dst} parameters of BlendFunc and BlendFunci, and by the {@code srcRGB}, {@code dstRGB}, {@code srcAlpha} and
 * {@code dstAlpha} parameters of BlendFuncSeparate and BlendFuncSeparatei.
 */
	inline static public var GL_SRC1_COLOR:Int = 35065;
/**
 * Accepted by the {@code src} and {@code dst} parameters of BlendFunc and BlendFunci, and by the {@code srcRGB}, {@code dstRGB}, {@code srcAlpha} and
 * {@code dstAlpha} parameters of BlendFuncSeparate and BlendFuncSeparatei.
 */
	inline static public var GL_ONE_MINUS_SRC1_COLOR:Int = 35066;
/**
 * Accepted by the {@code src} and {@code dst} parameters of BlendFunc and BlendFunci, and by the {@code srcRGB}, {@code dstRGB}, {@code srcAlpha} and
 * {@code dstAlpha} parameters of BlendFuncSeparate and BlendFuncSeparatei.
 */
	inline static public var GL_ONE_MINUS_SRC1_ALPHA:Int = 35067;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv and GetDoublev.  */
	inline static public var GL_MAX_DUAL_SOURCE_DRAW_BUFFERS:Int = 35068;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_ANY_SAMPLES_PASSED:Int = 35887;
/** Accepted by the {@code value} parameter of the GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv and GetDoublev functions.  */
	inline static public var GL_SAMPLER_BINDING:Int = 35097;
/**
 * Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, RenderbufferStorage and
 * RenderbufferStorageMultisample.
 */
	inline static public var GL_RGB10_A2UI:Int = 36975;
/** Accepted by the {@code pname} parameters of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_SWIZZLE_R:Int = 36418;
/** Accepted by the {@code pname} parameters of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_SWIZZLE_G:Int = 36419;
/** Accepted by the {@code pname} parameters of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_SWIZZLE_B:Int = 36420;
/** Accepted by the {@code pname} parameters of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_SWIZZLE_A:Int = 36421;
/** Accepted by the {@code pname} parameters of TexParameteriv,  TexParameterfv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_SWIZZLE_RGBA:Int = 36422;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_TIME_ELAPSED:Int = 35007;
/**
 * Accepted by the {@code target} parameter of GetQueryiv and QueryCounter. Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv,
 * GetInteger64v, GetFloatv, and GetDoublev.
 */
	inline static public var GL_TIMESTAMP:Int = 36392;
/** Accepted by the {@code pname} parameters of GetVertexAttribdv, GetVertexAttribfv, and GetVertexAttribiv.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_DIVISOR:Int = 35070;
/**
 * Accepted by the {@code type} parameter of VertexAttribPointer, VertexPointer, NormalPointer, ColorPointer, SecondaryColorPointer, TexCoordPointer,
 * VertexAttribP{1234}ui, VertexP*, TexCoordP*, MultiTexCoordP*, NormalP3ui, ColorP*, SecondaryColorP* and VertexAttribP*.
 */
	inline static public var GL_INT_2_10_10_10_REV:Int = 36255;
/** Function address.  */
	public var BindFragDataLocationIndexed:haxe.Int64;
/** Function address.  */
	public var GetFragDataIndex:haxe.Int64;
/** Function address.  */
	public var GenSamplers:haxe.Int64;
/** Function address.  */
	public var DeleteSamplers:haxe.Int64;
/** Function address.  */
	public var IsSampler:haxe.Int64;
/** Function address.  */
	public var BindSampler:haxe.Int64;
/** Function address.  */
	public var SamplerParameteri:haxe.Int64;
/** Function address.  */
	public var SamplerParameterf:haxe.Int64;
/** Function address.  */
	public var SamplerParameteriv:haxe.Int64;
/** Function address.  */
	public var SamplerParameterfv:haxe.Int64;
/** Function address.  */
	public var SamplerParameterIiv:haxe.Int64;
/** Function address.  */
	public var SamplerParameterIuiv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameteriv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameterfv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameterIiv:haxe.Int64;
/** Function address.  */
	public var GetSamplerParameterIuiv:haxe.Int64;
/** Function address.  */
	public var QueryCounter:haxe.Int64;
/** Function address.  */
	public var GetQueryObjecti64v:haxe.Int64;
/** Function address.  */
	public var GetQueryObjectui64v:haxe.Int64;
/** Function address.  */
	public var VertexAttribDivisor:haxe.Int64;
/** Function address.  */
	public var VertexP2ui:haxe.Int64;
/** Function address.  */
	public var VertexP3ui:haxe.Int64;
/** Function address.  */
	public var VertexP4ui:haxe.Int64;
/** Function address.  */
	public var VertexP2uiv:haxe.Int64;
/** Function address.  */
	public var VertexP3uiv:haxe.Int64;
/** Function address.  */
	public var VertexP4uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP1ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP2ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP3ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP4ui:haxe.Int64;
/** Function address.  */
	public var TexCoordP1uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP2uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP3uiv:haxe.Int64;
/** Function address.  */
	public var TexCoordP4uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP1ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP2ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP3ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP4ui:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP1uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP2uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP3uiv:haxe.Int64;
/** Function address.  */
	public var MultiTexCoordP4uiv:haxe.Int64;
/** Function address.  */
	public var NormalP3ui:haxe.Int64;
/** Function address.  */
	public var NormalP3uiv:haxe.Int64;
/** Function address.  */
	public var ColorP3ui:haxe.Int64;
/** Function address.  */
	public var ColorP4ui:haxe.Int64;
/** Function address.  */
	public var ColorP3uiv:haxe.Int64;
/** Function address.  */
	public var ColorP4uiv:haxe.Int64;
/** Function address.  */
	public var SecondaryColorP3ui:haxe.Int64;
/** Function address.  */
	public var SecondaryColorP3uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP1ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP2ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP3ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP4ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribP1uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP2uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP3uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribP4uiv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider,fc:Bool):Void;
/** Unsafe version of {@link #glGetSamplerParameterIuiv GetSamplerParameterIuiv}  */
/** JNI method for {@link #glGetSamplerParameterIuiv GetSamplerParameterIuiv}  */
	static public function nglGetSamplerParameterIuiv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glDeleteSamplers DeleteSamplers}  */
/** JNI method for {@link #glDeleteSamplers DeleteSamplers}  */
	static public function nglDeleteSamplers(count:Int,samplers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (count:Int,samplers:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribP1ui VertexAttribP1ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP1uiv VertexAttribP1uiv}  */
	static public function glVertexAttribP1uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glNormalP3ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glNormal3f Normal3f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glNormalP3ui(type:Int,coords:Int):Void;
/** Unsafe version of {@link #glVertexAttribP3uiv VertexAttribP3uiv}  */
/** JNI method for {@link #glVertexAttribP3uiv VertexAttribP3uiv}  */
	static public function nglVertexAttribP3uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP4ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glTexCoord4f TexCoord4f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP4ui(type:Int,coords:Int):Void;
/** JNI method for {@link #glVertexAttribP2ui VertexAttribP2ui}  */
	static public function nglVertexAttribP2ui(index:Int,type:Int,normalized:Bool,value:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glVertexP2ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glVertex2f Vertex2f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
	static public function glVertexP2ui(type:Int,value:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP3ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Packed component version of {@link GL20#glVertexAttrib3f VertexAttrib3f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP3ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP3ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL13#glMultiTexCoord3f MultiTexCoord3f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP3ui(texture:Int,type:Int,coords:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsSampler.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a sampler object.
 *
 * @param sampler a value that may be the name of a sampler object
 */
	static public function glIsSampler(sampler:Int):Bool;
/** Single return value version of: {@link #glGetSamplerParameterIuiv GetSamplerParameterIuiv}  */
	static public function glGetSamplerParameterIui(sampler:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetQueryObject.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the 64bit integer value of query object parameter.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter. One of:<br>{@link GL15#GL_QUERY_RESULT QUERY_RESULT}, {@link GL15#GL_QUERY_RESULT_AVAILABLE QUERY_RESULT_AVAILABLE}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjecti64v GetQueryObjecti64v}  */
	static public function glGetQueryObjecti64v(id:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoordP2ui MultiTexCoordP2ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP2uiv MultiTexCoordP2uiv}  */
	static public function glMultiTexCoordP2uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSamplerParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glSamplerParameteri SamplerParameteri}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter. One of:<br>{@link GL11#GL_TEXTURE_BORDER_COLOR TEXTURE_BORDER_COLOR}, {@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameteriv SamplerParameteriv}  */
	static public function glSamplerParameteriv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSamplerParameterIuiv SamplerParameterIuiv}  */
/** JNI method for {@link #glSamplerParameterIuiv SamplerParameterIuiv}  */
	static public function nglSamplerParameterIuiv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glColorP4ui ColorP4ui}  */
	static public function nglColorP4ui(type:Int,color:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetSamplerParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Float version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameterfv GetSamplerParameterfv}  */
	static public function glGetSamplerParameterfv(sampler:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexP2uiv VertexP2uiv}  */
/** JNI method for {@link #glVertexP2uiv VertexP2uiv}  */
	static public function nglVertexP2uiv(type:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glVertexP3ui VertexP3ui}  */
	static public function nglVertexP3ui(type:Int,value:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetQueryObjectui64v GetQueryObjectui64v}  */
	static public function glGetQueryObjectui64(id:Int,pname:Int):haxe.Int64;
/** JNI method for {@link #glQueryCounter QueryCounter}  */
	static public function nglQueryCounter(id:Int,target:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glBindFragDataLocationIndexed BindFragDataLocationIndexed}  */
/** JNI method for {@link #glBindFragDataLocationIndexed BindFragDataLocationIndexed}  */
	static public function nglBindFragDataLocationIndexed(program:Int,colorNumber:Int,index:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,colorNumber:Int,index:Int,name:haxe.Int64):Void {})
/** JNI method for {@link #glMultiTexCoordP1ui MultiTexCoordP1ui}  */
	static public function nglMultiTexCoordP1ui(texture:Int,type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTexCoordP2ui TexCoordP2ui}  */
	static public function nglTexCoordP2ui(type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glTexCoordP3uiv TexCoordP3uiv}  */
/** JNI method for {@link #glTexCoordP3uiv TexCoordP3uiv}  */
	static public function nglTexCoordP3uiv(type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,coords:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glTexCoordP3ui TexCoordP3ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP3uiv TexCoordP3uiv}  */
	static public function glTexCoordP3uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSamplerParameteriv SamplerParameteriv}  */
/** JNI method for {@link #glSamplerParameteriv SamplerParameteriv}  */
	static public function nglSamplerParameteriv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glVertexP3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glVertexP3ui VertexP3ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
/** Alternative version of: {@link #glVertexP3uiv VertexP3uiv}  */
	static public function glVertexP3uiv(type:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetSamplerParameterfv GetSamplerParameterfv}  */
/** JNI method for {@link #glGetSamplerParameterfv GetSamplerParameterfv}  */
	static public function nglGetSamplerParameterfv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribP3ui VertexAttribP3ui}  */
	static public function nglVertexAttribP3ui(index:Int,type:Int,normalized:Bool,value:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribDivisor.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Modifies the rate at which generic vertex attributes advance during instanced rendering.
 *
 * @param index   the index of the generic vertex attribute
 * @param divisor the number of instances that will pass between updates of the generic attribute at slot {@code index}
 */
	static public function glVertexAttribDivisor(index:Int,divisor:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP3ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glTexCoord3f TexCoord3f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP3ui(type:Int,coords:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP4ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Packed component version of {@link GL20#glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP4ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/** Unsafe version of {@link #glColorP3uiv ColorP3uiv}  */
/** JNI method for {@link #glColorP3uiv ColorP3uiv}  */
	static public function nglColorP3uiv(type:Int,color:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,color:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP2ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL13#glMultiTexCoord2f MultiTexCoord2f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP2ui(texture:Int,type:Int,coords:Int):Void;
/** CharSequence version of: {@link #glGetFragDataIndex GetFragDataIndex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetFragDataIndex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the bindings of color indices to user-defined varying out variables.
 *
 * @param program the name of the program containing varying out variable whose binding to query
 * @param name    the name of the user-defined varying out variable whose index to query
 */
	static public function glGetFragDataIndex(program:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,name:java.lang.CharSequence):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glColorP3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glColorP3ui ColorP3ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
/** Alternative version of: {@link #glColorP3uiv ColorP3uiv}  */
	static public function glColorP3uiv(type:Int,color:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,color:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoordP4ui MultiTexCoordP4ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP4uiv MultiTexCoordP4uiv}  */
	static public function glMultiTexCoordP4uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSamplerParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Unsigned pure integer version of {@link #glSamplerParameteriv SamplerParameteriv}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameterIuiv SamplerParameterIuiv}  */
	static public function glSamplerParameterIuiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSecondaryColorP3uiv SecondaryColorP3uiv}  */
/** JNI method for {@link #glSecondaryColorP3uiv SecondaryColorP3uiv}  */
	static public function nglSecondaryColorP3uiv(type:Int,color:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,color:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glTexCoordP2ui TexCoordP2ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP2uiv TexCoordP2uiv}  */
	static public function glTexCoordP2uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetSamplerParameterfv GetSamplerParameterfv}  */
	static public function glGetSamplerParameterf(sampler:Int,pname:Int):Float;
/** Single return value version of: {@link #glGetSamplerParameteriv GetSamplerParameteriv}  */
	static public function glGetSamplerParameteri(sampler:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glNormalP3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version {@link #glNormalP3ui NormalP3ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glNormalP3uiv NormalP3uiv}  */
	static public function glNormalP3uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexP4uiv VertexP4uiv}  */
/** JNI method for {@link #glVertexP4uiv VertexP4uiv}  */
	static public function nglVertexP4uiv(type:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribP4ui VertexAttribP4ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP4uiv VertexAttribP4uiv}  */
	static public function glVertexAttribP4uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGenSamplers GenSamplers}  */
/** JNI method for {@link #glGenSamplers GenSamplers}  */
	static public function nglGenSamplers(count:Int,samplers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (count:Int,samplers:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoordP3uiv MultiTexCoordP3uiv}  */
/** JNI method for {@link #glMultiTexCoordP3uiv MultiTexCoordP3uiv}  */
	static public function nglMultiTexCoordP3uiv(texture:Int,type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,type:Int,coords:haxe.Int64):Void {})
/** JNI method for {@link #glNormalP3ui NormalP3ui}  */
	static public function nglNormalP3ui(type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexP2ui VertexP2ui}  */
	static public function nglVertexP2ui(type:Int,value:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetSamplerParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Unsigned pure integer version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameterIuiv GetSamplerParameterIuiv}  */
	static public function glGetSamplerParameterIuiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glTexCoordP3ui TexCoordP3ui}  */
	static public function nglTexCoordP3ui(type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glVertexP3ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glVertex3f Vertex3f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
	static public function glVertexP3ui(type:Int,value:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP1.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoordP1ui MultiTexCoordP1ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP1uiv MultiTexCoordP1uiv}  */
	static public function glMultiTexCoordP1uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glColorP4ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glColor4f Color4f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
	static public function glColorP4ui(type:Int,color:Int):Void;
/** Unsafe version of {@link #glGetQueryObjecti64v GetQueryObjecti64v}  */
/** JNI method for {@link #glGetQueryObjecti64v GetQueryObjecti64v}  */
	static public function nglGetQueryObjecti64v(id:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (id:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetQueryObjecti64v GetQueryObjecti64v}  */
	static public function glGetQueryObjecti64(id:Int,pname:Int):haxe.Int64;
/** Unsafe version of {@link #glGetFragDataIndex GetFragDataIndex}  */
/** JNI method for {@link #glGetFragDataIndex GetFragDataIndex}  */
	static public function nglGetFragDataIndex(program:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,name:haxe.Int64):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetSamplerParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Return the integer value(s) of a sampler parameter.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter. One of:<br>{@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}, ,, {@link GL11#GL_TEXTURE_BORDER_COLOR TEXTURE_BORDER_COLOR}
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameteriv GetSamplerParameteriv}  */
	static public function glGetSamplerParameteriv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glMultiTexCoordP4ui MultiTexCoordP4ui}  */
	static public function nglMultiTexCoordP4ui(texture:Int,type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glTexCoordP1uiv TexCoordP1uiv}  */
/** JNI method for {@link #glTexCoordP1uiv TexCoordP1uiv}  */
	static public function nglTexCoordP1uiv(type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,coords:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribP4ui VertexAttribP4ui}  */
	static public function nglVertexAttribP4ui(index:Int,type:Int,normalized:Bool,value:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetQueryObjectui64v GetQueryObjectui64v}  */
/** JNI method for {@link #glGetQueryObjectui64v GetQueryObjectui64v}  */
	static public function nglGetQueryObjectui64v(id:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (id:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP2ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glTexCoord2f TexCoord2f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP2ui(type:Int,coords:Int):Void;
/** Unsafe version of {@link #glMultiTexCoordP4uiv MultiTexCoordP4uiv}  */
/** JNI method for {@link #glMultiTexCoordP4uiv MultiTexCoordP4uiv}  */
	static public function nglMultiTexCoordP4uiv(texture:Int,type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,type:Int,coords:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP1ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Packed component version of {@link GL20#glVertexAttrib1f VertexAttrib1f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP1ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/** Single value version of: {@link #glDeleteSamplers DeleteSamplers}  */
/** Alternative version of: {@link #glDeleteSamplers DeleteSamplers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteSamplers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes named sampler objects.
 *
 * @param count    the number of sampler objects to be deleted
 * @param samplers an array of sampler objects to be deleted
 */
	static public function glDeleteSamplers(count:Int,samplers:java.nio.ByteBuffer):Void;
	@:overload(function (sampler:Int):Void {})
	@:overload(function (samplers:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetSamplerParameterIiv GetSamplerParameterIiv}  */
	static public function glGetSamplerParameterIi(sampler:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glTexCoordP4ui TexCoordP4ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP4uiv TexCoordP4uiv}  */
	static public function glTexCoordP4uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColorP3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glSecondaryColorP3ui SecondaryColorP3ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
/** Alternative version of: {@link #glSecondaryColorP3uiv SecondaryColorP3uiv}  */
	static public function glSecondaryColorP3uiv(type:Int,color:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,color:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glNormalP3uiv NormalP3uiv}  */
/** JNI method for {@link #glNormalP3uiv NormalP3uiv}  */
	static public function nglNormalP3uiv(type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,coords:haxe.Int64):Void {})
/** Unsafe version of {@link #glTexCoordP4uiv TexCoordP4uiv}  */
/** JNI method for {@link #glTexCoordP4uiv TexCoordP4uiv}  */
	static public function nglTexCoordP4uiv(type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,coords:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindSampler.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a named sampler to a texturing target.
 *
 * @param unit    the index of the texture unit to which the sampler is bound
 * @param sampler the name of a sampler
 */
	static public function glBindSampler(unit:Int,sampler:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP1ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL13#glMultiTexCoord1f MultiTexCoord1f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP1ui(texture:Int,type:Int,coords:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glVertexP4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glVertexP4ui VertexP4ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
/** Alternative version of: {@link #glVertexP4uiv VertexP4uiv}  */
	static public function glVertexP4uiv(type:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,value:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGenSamplers GenSamplers}  */
/** Alternative version of: {@link #glGenSamplers GenSamplers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenSamplers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Generates sampler object names.
 *
 * @param count    the number of sampler object names to generate
 * @param samplers a buffer in which the generated sampler object names are stored
 */
	static public function glGenSamplers(count:Int,samplers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (samplers:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribP2ui VertexAttribP2ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP2uiv VertexAttribP2uiv}  */
	static public function glVertexAttribP2uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glSamplerParameterfv SamplerParameterfv}  */
/** JNI method for {@link #glSamplerParameterfv SamplerParameterfv}  */
	static public function nglSamplerParameterfv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribP4uiv VertexAttribP4uiv}  */
/** JNI method for {@link #glVertexAttribP4uiv VertexAttribP4uiv}  */
	static public function nglVertexAttribP4uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glColorP4uiv ColorP4uiv}  */
/** JNI method for {@link #glColorP4uiv ColorP4uiv}  */
	static public function nglColorP4uiv(type:Int,color:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,color:haxe.Int64):Void {})
/** Unsafe version of {@link #glMultiTexCoordP1uiv MultiTexCoordP1uiv}  */
/** JNI method for {@link #glMultiTexCoordP1uiv MultiTexCoordP1uiv}  */
	static public function nglMultiTexCoordP1uiv(texture:Int,type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,type:Int,coords:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glVertexP4ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glVertex4f Vertex4f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
	static public function glVertexP4ui(type:Int,value:Int):Void;
/** JNI method for {@link #glTexCoordP4ui TexCoordP4ui}  */
	static public function nglTexCoordP4ui(type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glIsSampler IsSampler}  */
	static public function nglIsSampler(sampler:Int,__functionAddress:haxe.Int64):Bool;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glColorP3ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glColor3f Color3f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
	static public function glColorP3ui(type:Int,color:Int):Void;
/** Unsafe version of {@link #glVertexAttribP1uiv VertexAttribP1uiv}  */
/** JNI method for {@link #glVertexAttribP1uiv VertexAttribP1uiv}  */
	static public function nglVertexAttribP1uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP3.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glMultiTexCoordP3ui MultiTexCoordP3ui}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords  the packed value
 */
/** Alternative version of: {@link #glMultiTexCoordP3uiv MultiTexCoordP3uiv}  */
	static public function glMultiTexCoordP3uiv(texture:Int,type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,type:Int,coords:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glSamplerParameteri SamplerParameteri}  */
	static public function nglSamplerParameteri(sampler:Int,pname:Int,param:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMultiTexCoordP3ui MultiTexCoordP3ui}  */
	static public function nglMultiTexCoordP3ui(texture:Int,type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetSamplerParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pure integer version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}.
 *
 * @param sampler the name of the sampler object from which to retrieve parameters
 * @param pname   the symbolic name of a sampler parameter
 * @param params  the sampler parameters
 */
/** Alternative version of: {@link #glGetSamplerParameterIiv GetSamplerParameterIiv}  */
	static public function glGetSamplerParameterIiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glSamplerParameterf SamplerParameterf}  */
	static public function nglSamplerParameterf(sampler:Int,pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetQueryObject.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Unsigned version of {@link #glGetQueryObjecti64v GetQueryObjecti64v}.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjectui64v GetQueryObjectui64v}  */
	static public function glGetQueryObjectui64v(id:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribP3ui VertexAttribP3ui}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
/** Alternative version of: {@link #glVertexAttribP3uiv VertexAttribP3uiv}  */
	static public function glVertexAttribP3uiv(index:Int,type:Int,normalized:Bool,value:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexP3uiv VertexP3uiv}  */
/** JNI method for {@link #glVertexP3uiv VertexP3uiv}  */
	static public function nglVertexP3uiv(type:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP1ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL11#glTexCoord1f TexCoord1f}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
	static public function glTexCoordP1ui(type:Int,coords:Int):Void;
/** JNI method for {@link #glVertexAttribP1ui VertexAttribP1ui}  */
	static public function nglVertexAttribP1ui(index:Int,type:Int,normalized:Bool,value:Int,__functionAddress:haxe.Int64):Void;
/** CharSequence version of: {@link #glBindFragDataLocationIndexed BindFragDataLocationIndexed}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindFragDataLocationIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a user-defined varying out variable to a fragment shader color number and index.
 *
 * @param program     the name of the program containing varying out variable whose binding to modify
 * @param colorNumber the color number to bind the user-defined varying out variable to
 * @param index       the index of the color input to bind the user-defined varying out variable to
 * @param name        the name of the user-defined varying out variable whose binding to modify
 */
	static public function glBindFragDataLocationIndexed(program:Int,colorNumber:Int,index:Int,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,colorNumber:Int,index:Int,name:java.lang.CharSequence):Void {})
/** Unsafe version of {@link #glGetSamplerParameterIiv GetSamplerParameterIiv}  */
/** JNI method for {@link #glGetSamplerParameterIiv GetSamplerParameterIiv}  */
	static public function nglGetSamplerParameterIiv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribP2ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Packed component version of {@link GL20#glVertexAttrib2f VertexAttrib2f}.
 *
 * @param index      the index of the generic vertex attribute to be modified
 * @param type       type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param normalized whether values should be normalized or cast directly to floating-point
 * @param value      the packed value
 */
	static public function glVertexAttribP2ui(index:Int,type:Int,normalized:Bool,value:Int):Void;
/** Unsafe version of {@link #glMultiTexCoordP2uiv MultiTexCoordP2uiv}  */
/** JNI method for {@link #glMultiTexCoordP2uiv MultiTexCoordP2uiv}  */
	static public function nglMultiTexCoordP2uiv(texture:Int,type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,type:Int,coords:haxe.Int64):Void {})
/** JNI method for {@link #glColorP3ui ColorP3ui}  */
	static public function nglColorP3ui(type:Int,color:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glMultiTexCoordP4ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL13#glMultiTexCoord4f MultiTexCoord4f}.
 *
 * @param texture the coordinate set to be modified
 * @param type    type of packing used on the data. One of:<br>type, of, packing, used, on, the, data
 * @param coords  the packed value
 */
	static public function glMultiTexCoordP4ui(texture:Int,type:Int,coords:Int):Void;
/** Unsafe version of {@link #glSamplerParameterIiv SamplerParameterIiv}  */
/** JNI method for {@link #glSamplerParameterIiv SamplerParameterIiv}  */
	static public function nglSamplerParameterIiv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glSecondaryColorP3ui SecondaryColorP3ui}  */
	static public function nglSecondaryColorP3ui(type:Int,color:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glTexCoordP2uiv TexCoordP2uiv}  */
/** JNI method for {@link #glTexCoordP2uiv TexCoordP2uiv}  */
	static public function nglTexCoordP2uiv(type:Int,coords:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (type:Int,coords:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSamplerParameteri.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Set the integer value of a sampler parameter.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a single-valued sampler parameter. One of:<br>{@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}
 * @param param   the value of {@code pname}
 */
	static public function glSamplerParameteri(sampler:Int,pname:Int,param:Int):Void;
/** Unsafe version of {@link #glGetSamplerParameteriv GetSamplerParameteriv}  */
/** JNI method for {@link #glGetSamplerParameteriv GetSamplerParameteriv}  */
	static public function nglGetSamplerParameteriv(sampler:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sampler:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSamplerParameterf.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Float version of {@link #glSamplerParameteri SamplerParameteri}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a single-valued sampler parameter
 * @param param   the value of {@code pname}
 */
	static public function glSamplerParameterf(sampler:Int,pname:Int,param:Float):Void;
/** JNI method for {@link #glVertexAttribDivisor VertexAttribDivisor}  */
	static public function nglVertexAttribDivisor(index:Int,divisor:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glVertexP2.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glVertexP2ui VertexP2ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param value the packed value
 */
/** Alternative version of: {@link #glVertexP2uiv VertexP2uiv}  */
	static public function glVertexP2uiv(type:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribP2uiv VertexAttribP2uiv}  */
/** JNI method for {@link #glVertexAttribP2uiv VertexAttribP2uiv}  */
	static public function nglVertexAttribP2uiv(index:Int,type:Int,normalized:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,type:Int,normalized:Bool,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSamplerParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pure integer version of {@link #glSamplerParameteriv SamplerParameteriv}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameterIiv SamplerParameterIiv}  */
	static public function glSamplerParameterIiv(sampler:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexP4ui VertexP4ui}  */
	static public function nglVertexP4ui(type:Int,value:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBindSampler BindSampler}  */
	static public function nglBindSampler(unit:Int,sampler:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glColorP4.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glColorP4ui ColorP4ui}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
/** Alternative version of: {@link #glColorP4uiv ColorP4uiv}  */
	static public function glColorP4uiv(type:Int,color:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,color:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glQueryCounter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Records the GL time into a query object after all previous commands have reached the GL server but have not yet necessarily executed.
 *
 * @param id     the name of a query object into which to record the GL time
 * @param target the counter to query. Must be:<br>{@link #GL_TIMESTAMP TIMESTAMP}
 */
	static public function glQueryCounter(id:Int,target:Int):Void;
/** JNI method for {@link #glMultiTexCoordP2ui MultiTexCoordP2ui}  */
	static public function nglMultiTexCoordP2ui(texture:Int,type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link GL33} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL33;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glSamplerParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Float version of {@link #glSamplerParameteriv SamplerParameteriv}.
 *
 * @param sampler the sampler object whose parameter to modify
 * @param pname   the symbolic name of a sampler parameter
 * @param params  an array where the value or values of {@code pname} are stored
 */
/** Alternative version of: {@link #glSamplerParameterfv SamplerParameterfv}  */
	static public function glSamplerParameterfv(sampler:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (sampler:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glTexCoordP1ui TexCoordP1ui}  */
	static public function nglTexCoordP1ui(type:Int,coords:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glTexCoordP1.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Pointer version of {@link #glTexCoordP1ui TexCoordP1ui}.
 *
 * @param type   type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param coords the packed value
 */
/** Alternative version of: {@link #glTexCoordP1uiv TexCoordP1uiv}  */
	static public function glTexCoordP1uiv(type:Int,coords:java.nio.IntBuffer):Void;
	@:overload(function (type:Int,coords:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man2/html/glSecondaryColorP3ui.xhtml">OpenGL SDK Reference</a> - <em>This function is deprecated and unavailable in the Core profile</em></p>
 * 
 * Packed component version of {@link GL14#glSecondaryColor3f SecondaryColor3f}.
 *
 * @param type  type of packing used on the data. One of:<br>{@link #GL_INT_2_10_10_10_REV INT_2_10_10_10_REV}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}
 * @param color the packed value
 */
	static public function glSecondaryColorP3ui(type:Int,color:Int):Void;

}
