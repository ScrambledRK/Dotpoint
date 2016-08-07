package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL20")
@:final
/**
 * The core OpenGL 2.0 functionality.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_objects.txt">ARB_shader_objects</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/vertex_shader.txt">ARB_vertex_shader</a> and <a href="http://www.opengl.org/registry/specs/ARB/fragment_shader.txt">ARB_fragment_shader</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shading_language_100.txt">ARB_shading_language_100</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/draw_buffers.txt">ARB_draw_buffers</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_non_power_of_two.txt">ARB_texture_non_power_of_two</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/point_sprite.txt">ARB_point_sprite</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ATI/separate_stencil.txt">ATI_separate_stencil</a> and <a href="http://www.opengl.org/registry/specs/EXT/stencil_two_side.txt">EXT_stencil_two_side</a></li>
 * </ul></p>
 */
extern class GL20 
{
/** Accepted by the {@code name} parameter of GetString.  */
	inline static public var GL_SHADING_LANGUAGE_VERSION:Int = 35724;
/** Accepted by the {@code pname} parameter of GetInteger.  */
	inline static public var GL_CURRENT_PROGRAM:Int = 35725;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_SHADER_TYPE:Int = 35663;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_DELETE_STATUS:Int = 35712;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_COMPILE_STATUS:Int = 35713;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_LINK_STATUS:Int = 35714;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_VALIDATE_STATUS:Int = 35715;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_INFO_LOG_LENGTH:Int = 35716;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_ATTACHED_SHADERS:Int = 35717;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_ACTIVE_UNIFORMS:Int = 35718;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_ACTIVE_UNIFORM_MAX_LENGTH:Int = 35719;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_ACTIVE_ATTRIBUTES:Int = 35721;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_ACTIVE_ATTRIBUTE_MAX_LENGTH:Int = 35722;
/** Accepted by the {@code pname} parameter of GetShaderiv.  */
	inline static public var GL_SHADER_SOURCE_LENGTH:Int = 35720;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_VEC2:Int = 35664;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_VEC3:Int = 35665;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_VEC4:Int = 35666;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_VEC2:Int = 35667;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_VEC3:Int = 35668;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_VEC4:Int = 35669;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_BOOL:Int = 35670;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_BOOL_VEC2:Int = 35671;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_BOOL_VEC3:Int = 35672;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_BOOL_VEC4:Int = 35673;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT2:Int = 35674;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT3:Int = 35675;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT4:Int = 35676;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_1D:Int = 35677;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_2D:Int = 35678;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_3D:Int = 35679;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_CUBE:Int = 35680;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_1D_SHADOW:Int = 35681;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_2D_SHADOW:Int = 35682;
/** Accepted by the {@code type} argument of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_VERTEX_SHADER:Int = 35633;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_UNIFORM_COMPONENTS:Int = 35658;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VARYING_FLOATS:Int = 35659;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_ATTRIBS:Int = 34921;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TEXTURE_IMAGE_UNITS:Int = 34930;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int = 35660;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int = 35661;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TEXTURE_COORDS:Int = 34929;
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_VERTEX_PROGRAM_POINT_SIZE:Int = 34370;
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_VERTEX_PROGRAM_TWO_SIDE:Int = 34371;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}v.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_ENABLED:Int = 34338;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}v.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_SIZE:Int = 34339;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}v.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_STRIDE:Int = 34340;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}v.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_TYPE:Int = 34341;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}v.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_NORMALIZED:Int = 34922;
/** Accepted by the {@code pname} parameter of GetVertexAttrib{dfi}v.  */
	inline static public var GL_CURRENT_VERTEX_ATTRIB:Int = 34342;
/** Accepted by the {@code pname} parameter of GetVertexAttribPointerv.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_POINTER:Int = 34373;
/** Accepted by the {@code type} argument of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_FRAGMENT_SHADER:Int = 35632;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_UNIFORM_COMPONENTS:Int = 35657;
/** Accepted by the {@code target} parameter of Hint and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_FRAGMENT_SHADER_DERIVATIVE_HINT:Int = 35723;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_DRAW_BUFFERS:Int = 34852;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER0:Int = 34853;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER1:Int = 34854;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER2:Int = 34855;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER3:Int = 34856;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER4:Int = 34857;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER5:Int = 34858;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER6:Int = 34859;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER7:Int = 34860;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER8:Int = 34861;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER9:Int = 34862;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER10:Int = 34863;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER11:Int = 34864;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER12:Int = 34865;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER13:Int = 34866;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER14:Int = 34867;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_BUFFER15:Int = 34868;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of TexEnvi, TexEnviv, TexEnvf, TexEnvfv, GetTexEnviv, and GetTexEnvfv.
 */
	inline static public var GL_POINT_SPRITE:Int = 34913;
/**
 * When the {@code target} parameter of TexEnvf, TexEnvfv, TexEnvi, TexEnviv, GetTexEnvfv, or GetTexEnviv is POINT_SPRITE, then the value of
 * {@code pname} may be.
 */
	inline static public var GL_COORD_REPLACE:Int = 34914;
/** Accepted by the {@code pname} parameter of PointParameter{if}v.  */
	inline static public var GL_POINT_SPRITE_COORD_ORIGIN:Int = 36000;
/** Accepted by the {@code param} parameter of PointParameter{if}v.  */
	inline static public var GL_LOWER_LEFT:Int = 36001;
/** Accepted by the {@code param} parameter of PointParameter{if}v.  */
	inline static public var GL_UPPER_LEFT:Int = 36002;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_EQUATION_RGB:Int = 32777;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_EQUATION_ALPHA:Int = 34877;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_STENCIL_BACK_FUNC_ATI:Int = 34816;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_STENCIL_BACK_FAIL_ATI:Int = 34817;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI:Int = 34818;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI:Int = 34819;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_STENCIL_BACK_REF:Int = 36003;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_STENCIL_BACK_VALUE_MASK:Int = 36004;
/** Accepted by the {@code pname} parameter of GetIntegerv.  */
	inline static public var GL_STENCIL_BACK_WRITEMASK:Int = 36005;
/** Function address.  */
	public var CreateProgram:haxe.Int64;
/** Function address.  */
	public var DeleteProgram:haxe.Int64;
/** Function address.  */
	public var IsProgram:haxe.Int64;
/** Function address.  */
	public var CreateShader:haxe.Int64;
/** Function address.  */
	public var DeleteShader:haxe.Int64;
/** Function address.  */
	public var IsShader:haxe.Int64;
/** Function address.  */
	public var AttachShader:haxe.Int64;
/** Function address.  */
	public var DetachShader:haxe.Int64;
/** Function address.  */
	public var ShaderSource:haxe.Int64;
/** Function address.  */
	public var CompileShader:haxe.Int64;
/** Function address.  */
	public var LinkProgram:haxe.Int64;
/** Function address.  */
	public var UseProgram:haxe.Int64;
/** Function address.  */
	public var ValidateProgram:haxe.Int64;
/** Function address.  */
	public var Uniform1f:haxe.Int64;
/** Function address.  */
	public var Uniform2f:haxe.Int64;
/** Function address.  */
	public var Uniform3f:haxe.Int64;
/** Function address.  */
	public var Uniform4f:haxe.Int64;
/** Function address.  */
	public var Uniform1i:haxe.Int64;
/** Function address.  */
	public var Uniform2i:haxe.Int64;
/** Function address.  */
	public var Uniform3i:haxe.Int64;
/** Function address.  */
	public var Uniform4i:haxe.Int64;
/** Function address.  */
	public var Uniform1fv:haxe.Int64;
/** Function address.  */
	public var Uniform2fv:haxe.Int64;
/** Function address.  */
	public var Uniform3fv:haxe.Int64;
/** Function address.  */
	public var Uniform4fv:haxe.Int64;
/** Function address.  */
	public var Uniform1iv:haxe.Int64;
/** Function address.  */
	public var Uniform2iv:haxe.Int64;
/** Function address.  */
	public var Uniform3iv:haxe.Int64;
/** Function address.  */
	public var Uniform4iv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix2fv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix3fv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix4fv:haxe.Int64;
/** Function address.  */
	public var GetShaderiv:haxe.Int64;
/** Function address.  */
	public var GetProgramiv:haxe.Int64;
/** Function address.  */
	public var GetShaderInfoLog:haxe.Int64;
/** Function address.  */
	public var GetProgramInfoLog:haxe.Int64;
/** Function address.  */
	public var GetAttachedShaders:haxe.Int64;
/** Function address.  */
	public var GetUniformLocation:haxe.Int64;
/** Function address.  */
	public var GetActiveUniform:haxe.Int64;
/** Function address.  */
	public var GetUniformfv:haxe.Int64;
/** Function address.  */
	public var GetUniformiv:haxe.Int64;
/** Function address.  */
	public var GetShaderSource:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1f:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1s:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1d:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2f:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2s:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2d:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3f:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3s:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3d:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4f:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4s:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4d:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4Nub:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1fv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1sv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib1dv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2fv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2sv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib2dv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3fv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3sv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib3dv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4fv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4sv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4dv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4iv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4bv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4ubv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4usv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4Nbv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4Nsv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4Niv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4Nubv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4Nusv:haxe.Int64;
/** Function address.  */
	public var VertexAttrib4Nuiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribPointer:haxe.Int64;
/** Function address.  */
	public var EnableVertexAttribArray:haxe.Int64;
/** Function address.  */
	public var DisableVertexAttribArray:haxe.Int64;
/** Function address.  */
	public var BindAttribLocation:haxe.Int64;
/** Function address.  */
	public var GetActiveAttrib:haxe.Int64;
/** Function address.  */
	public var GetAttribLocation:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribiv:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribfv:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribdv:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribPointerv:haxe.Int64;
/** Function address.  */
	public var DrawBuffers:haxe.Int64;
/** Function address.  */
	public var BlendEquationSeparate:haxe.Int64;
/** Function address.  */
	public var StencilOpSeparate:haxe.Int64;
/** Function address.  */
	public var StencilFuncSeparate:haxe.Int64;
/** Function address.  */
	public var StencilMaskSeparate:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Single string version of: {@link #glShaderSource ShaderSource}  */
/** Array version of: {@link #glShaderSource ShaderSource}  */
/** Alternative version of: {@link #glShaderSource ShaderSource}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glShaderSource.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the source code in {@code shader} to the source code in the array of strings specified by {@code strings}. Any source code previously stored in the
 * shader object is completely replaced. The number of strings in the array is specified by {@code count}. If {@code length} is NULL, each string is
 * assumed to be null terminated. If {@code length} is a value other than NULL, it points to an array containing a string length for each of the
 * corresponding elements of {@code strings}. Each element in the length array may contain the length of the corresponding string (the null character is not
 * counted as part of the string length) or a value less than 0 to indicate that the string is null terminated. The source code strings are not scanned or
 * parsed at this time; they are simply copied into the specified shader object.
 *
 * @param shader  the shader object whose source code is to be replaced
 * @param count   the number of elements in the string and length arrays
 * @param strings an array of pointers to strings containing the source code to be loaded into the shader
 * @param length  an array of string lengths
 */
	static public function glShaderSource(shader:Int,count:Int,strings:java.nio.ByteBuffer,length:java.nio.ByteBuffer):Void;
	@:overload(function (shader:Int,string:java.lang.CharSequence):Void {})
	@:overload(function (shader:Int,strings:java.NativeArray<java.lang.CharSequence>):Void {})
	@:overload(function (shader:Int,strings:org.lwjgl.PointerBuffer,length:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetVertexAttribiv GetVertexAttribiv}  */
/** JNI method for {@link #glGetVertexAttribiv GetVertexAttribiv}  */
	static public function nglGetVertexAttribiv(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4Nub.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Normalized unsigned byte version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 * @param w     the vertex attribute w component
 */
	static public function glVertexAttrib4Nub(index:Int,x:Int8,y:Int8,z:Int8,w:Int8):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib4d VertexAttrib4d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4dv VertexAttrib4dv}  */
	static public function glVertexAttrib4dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glUniform4fv Uniform4fv}  */
/** JNI method for {@link #glUniform4fv Uniform4fv}  */
	static public function nglUniform4fv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4usv VertexAttrib4usv}  */
/** JNI method for {@link #glVertexAttrib4usv VertexAttrib4usv}  */
	static public function nglVertexAttrib4usv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniform1iv Uniform1iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single int uniform variable or a int uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform1iv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glStencilFuncSeparate StencilFuncSeparate}  */
	static public function nglStencilFuncSeparate(face:Int,func:Int,ref:Int,mask:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glAttachShader AttachShader}  */
	static public function nglAttachShader(program:Int,shader:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 * @param v3    the vertex attribute w component
 */
	static public function glVertexAttrib4f(index:Int,v0:Float,v1:Float,v2:Float,v3:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Double version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 * @param v3    the vertex attribute w component
 */
	static public function glVertexAttrib4d(index:Int,v0:Float,v1:Float,v2:Float,v3:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Double version of {@link #glGetVertexAttribiv GetVertexAttribiv}.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribdv GetVertexAttribdv}  */
	static public function glGetVertexAttribdv(index:Int,pname:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4ubv VertexAttrib4ubv}  */
/** JNI method for {@link #glVertexAttrib4ubv VertexAttrib4ubv}  */
	static public function nglVertexAttrib4ubv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetProgramiv GetProgramiv}  */
/** JNI method for {@link #glGetProgramiv GetProgramiv}  */
	static public function nglGetProgramiv(program:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,pname:Int,params:haxe.Int64):Void {})
/** CharSequence version of: {@link #glBindAttribLocation BindAttribLocation}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindAttribLocation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Associates a generic vertex attribute index with a named attribute variable.
 *
 * @param program the program object in which the association is to be made
 * @param index   the index of the generic vertex attribute to be bound
 * @param name    a null terminated string containing the name of the vertex shader attribute variable to which {@code index} is to be bound
 */
	static public function glBindAttribLocation(program:Int,index:Int,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,index:Int,name:java.lang.CharSequence):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4N.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Normalized short pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4Nsv VertexAttrib4Nsv}  */
	static public function glVertexAttrib4Nsv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glCompileShader CompileShader}  */
	static public function nglCompileShader(shader:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetShaderSource GetShaderSource}  */
/** JNI method for {@link #glGetShaderSource GetShaderSource}  */
	static public function nglGetShaderSource(shader:Int,maxLength:Int,length:haxe.Int64,source:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shader:Int,maxLength:Int,length:haxe.Int64,source:haxe.Int64):Void {})
/** JNI method for {@link #glUseProgram UseProgram}  */
	static public function nglUseProgram(program:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib3s VertexAttrib3s}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib3sv VertexAttrib3sv}  */
	static public function glVertexAttrib3sv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4s.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Short version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 * @param v3    the vertex attribute w component
 */
	static public function glVertexAttrib4s(index:Int,v0:Int16,v1:Int16,v2:Int16,v3:Int16):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4Nb.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Normalized byte pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4Nbv(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glGetAttribLocation GetAttribLocation}  */
/** JNI method for {@link #glGetAttribLocation GetAttribLocation}  */
	static public function nglGetAttribLocation(program:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,name:haxe.Int64):Int {})
/** GL_DOUBLE version of: {@link #glVertexAttribPointer VertexAttribPointer}  */
/** GL_FLOAT version of: {@link #glVertexAttribPointer VertexAttribPointer}  */
/** GL_INT version of: {@link #glVertexAttribPointer VertexAttribPointer}  */
/** GL_UNSIGNED_BYTE / GL_BYTE version of: {@link #glVertexAttribPointer VertexAttribPointer}  */
/** GL_UNSIGNED_SHORT / GL_SHORT version of: {@link #glVertexAttribPointer VertexAttribPointer}  */
/** Buffer object offset version of: {@link #glVertexAttribPointer VertexAttribPointer}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribPointer.xhtml">OpenGL SDK Reference</a></p>
 * 
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
	static public function glVertexAttribPointer(index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void;
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.DoubleBuffer):Void {})
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.FloatBuffer):Void {})
	@:overload(function (index:Int,size:Int,normalized:Bool,stride:Int,pointer:java.nio.IntBuffer):Void {})
	@:overload(function (index:Int,size:Int,unsigned:Bool,normalized:Bool,stride:Int,pointer:java.nio.ByteBuffer):Void {})
	@:overload(function (index:Int,size:Int,unsigned:Bool,normalized:Bool,stride:Int,pointer:java.nio.ShortBuffer):Void {})
	@:overload(function (index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointerOffset:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetUniformfv GetUniformfv}  */
	static public function glGetUniformf(program:Int,location:Int):Float;
/** Single return value version of: {@link #glGetUniformiv GetUniformiv}  */
	static public function glGetUniformi(program:Int,location:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4b.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Byte pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4bv(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glUniform3fv Uniform3fv}  */
/** JNI method for {@link #glUniform3fv Uniform3fv}  */
	static public function nglUniform3fv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Unsigned short pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4usv VertexAttrib4usv}  */
	static public function glVertexAttrib4usv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetShaderiv GetShaderiv}  */
	static public function glGetShaderi(shader:Int,pname:Int):Int;
/** JNI method for {@link #glCreateProgram CreateProgram}  */
	static public function nglCreateProgram(__functionAddress:haxe.Int64):Int;
/** Single return value version of: {@link #glGetVertexAttribiv GetVertexAttribiv}  */
	static public function glGetVertexAttribi(index:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4Nub.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Normalized unsigned byte pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4Nubv(index:Int,v:java.nio.ByteBuffer):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4ub.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib4Nub VertexAttrib4Nub}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
	static public function glVertexAttrib4ubv(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glGetShaderiv GetShaderiv}  */
/** JNI method for {@link #glGetShaderiv GetShaderiv}  */
	static public function nglGetShaderiv(shader:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shader:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glEnableVertexAttribArray EnableVertexAttribArray}  */
	static public function nglEnableVertexAttribArray(index:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib4Nub VertexAttrib4Nub}  */
	static public function nglVertexAttrib4Nub(index:Int,x:Int8,y:Int8,z:Int8,w:Int8,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib1fv VertexAttrib1fv}  */
/** JNI method for {@link #glVertexAttrib1fv VertexAttrib1fv}  */
	static public function nglVertexAttrib1fv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform4iv Uniform4iv}  */
/** JNI method for {@link #glUniform4iv Uniform4iv}  */
	static public function nglUniform4iv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glValidateProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Validates a program object.
 *
 * @param program the program object to be validated
 */
	static public function glValidateProgram(program:Int):Void;
/** CharSequence version of: {@link #glGetUniformLocation GetUniformLocation}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniformLocation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the location of a uniform variable.
 *
 * @param program the program object to be queried
 * @param name    a null terminated string containing the name of the uniform variable whose location is to be queried
 */
	static public function glGetUniformLocation(program:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,name:java.lang.CharSequence):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib4s VertexAttrib4s}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4sv VertexAttrib4sv}  */
	static public function glVertexAttrib4sv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glIsShader IsShader}  */
	static public function nglIsShader(shader:Int,__functionAddress:haxe.Int64):Bool;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Float version of {@link #glGetVertexAttribiv GetVertexAttribiv}.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribfv GetVertexAttribfv}  */
	static public function glGetVertexAttribfv(index:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glUniform2fv Uniform2fv}  */
/** JNI method for {@link #glUniform2fv Uniform2fv}  */
	static public function nglUniform2fv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniform3iv Uniform3iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single ivec3 uniform variable or a ivec3 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform3iv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4sv VertexAttrib4sv}  */
/** JNI method for {@link #glVertexAttrib4sv VertexAttrib4sv}  */
	static public function nglVertexAttrib4sv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a vec2 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 */
	static public function glUniform2f(location:Int,v0:Float,v1:Float):Void;
/** Unsafe version of {@link #glBindAttribLocation BindAttribLocation}  */
/** JNI method for {@link #glBindAttribLocation BindAttribLocation}  */
	static public function nglBindAttribLocation(program:Int,index:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,index:Int,name:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a ivec2 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 */
	static public function glUniform2i(location:Int,v0:Int,v1:Int):Void;
/** Unsafe version of {@link #glVertexAttrib4bv VertexAttrib4bv}  */
/** JNI method for {@link #glVertexAttrib4bv VertexAttrib4bv}  */
	static public function nglVertexAttrib4bv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexAttribPointerv GetVertexAttribPointerv}  */
/** JNI method for {@link #glGetVertexAttribPointerv GetVertexAttribPointerv}  */
	static public function nglGetVertexAttribPointerv(index:Int,pname:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,pointer:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform3iv Uniform3iv}  */
/** JNI method for {@link #glUniform3iv Uniform3iv}  */
	static public function nglUniform3iv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexAttribdv GetVertexAttribdv}  */
/** JNI method for {@link #glGetVertexAttribdv GetVertexAttribdv}  */
	static public function nglGetVertexAttribdv(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glIsProgram IsProgram}  */
	static public function nglIsProgram(program:Int,__functionAddress:haxe.Int64):Bool;
/** JNI method for {@link #glStencilOpSeparate StencilOpSeparate}  */
	static public function nglStencilOpSeparate(face:Int,sfail:Int,dpfail:Int,dppass:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glEnableVertexAttribArray.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Enables a generic vertex attribute array.
 *
 * @param index the index of the generic vertex attribute to be enabled
 */
	static public function glEnableVertexAttribArray(index:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes a program object.
 *
 * @param program the program object to be deleted
 */
	static public function glDeleteProgram(program:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4N.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Normalized unsigned short pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4Nusv VertexAttrib4Nusv}  */
	static public function glVertexAttrib4Nusv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a vec3 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 */
	static public function glUniform3f(location:Int,v0:Float,v1:Float,v2:Float):Void;
/** Alternative version of: {@link #glUniform2fv Uniform2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single vec2 uniform variable or a vec2 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform2fv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a ivec3 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 */
	static public function glUniform3i(location:Int,v0:Int,v1:Int,v2:Int):Void;
/** Unsafe version of {@link #glDrawBuffers DrawBuffers}  */
/** JNI method for {@link #glDrawBuffers DrawBuffers}  */
	static public function nglDrawBuffers(n:Int,bufs:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,bufs:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glEnableVertexAttribArray.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Disables a generic vertex attribute array.
 *
 * @param index the index of the generic vertex attribute to be disabled
 */
	static public function glDisableVertexAttribArray(index:Int):Void;
/** Unsafe version of {@link #glVertexAttrib4Niv VertexAttrib4Niv}  */
/** JNI method for {@link #glVertexAttrib4Niv VertexAttrib4Niv}  */
	static public function nglVertexAttrib4Niv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform1fv Uniform1fv}  */
/** JNI method for {@link #glUniform1fv Uniform1fv}  */
	static public function nglUniform1fv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniform2iv Uniform2iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single ivec2 uniform variable or a ivec2 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform2iv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetVertexAttribPointerv GetVertexAttribPointerv}  */
	static public function glGetVertexAttribPointer(index:Int,pname:Int):haxe.Int64;
/** String return (w/ implicit max length) version of: {@link #glGetShaderSource GetShaderSource}  */
/** String return version of: {@link #glGetShaderSource GetShaderSource}  */
/** Alternative version of: {@link #glGetShaderSource GetShaderSource}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetShaderSource.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the source code string from a shader object.
 *
 * @param shader    the shader object to be queried
 * @param maxLength the size of the character buffer for storing the returned source code string
 * @param length    the length of the string returned in source (excluding the null terminator)
 * @param source    an array of characters that is used to return the source code string
 */
	static public function glGetShaderSource(shader:Int,maxLength:Int,length:java.nio.ByteBuffer,source:java.nio.ByteBuffer):Void;
	@:overload(function (shader:Int):String {})
	@:overload(function (shader:Int,maxLength:Int):String {})
	@:overload(function (shader:Int,length:java.nio.IntBuffer,source:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetVertexAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the integer value of a generic vertex attribute parameter.
 *
 * @param index  the generic vertex attribute parameter to be queried
 * @param pname  the symbolic name of the vertex attribute parameter to be queried. One of:<br>{@link GL15#GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING VERTEX_ATTRIB_ARRAY_BUFFER_BINDING}, {@link #GL_VERTEX_ATTRIB_ARRAY_ENABLED VERTEX_ATTRIB_ARRAY_ENABLED}, {@link #GL_VERTEX_ATTRIB_ARRAY_SIZE VERTEX_ATTRIB_ARRAY_SIZE}, {@link #GL_VERTEX_ATTRIB_ARRAY_STRIDE VERTEX_ATTRIB_ARRAY_STRIDE}, {@link #GL_VERTEX_ATTRIB_ARRAY_TYPE VERTEX_ATTRIB_ARRAY_TYPE}, {@link #GL_VERTEX_ATTRIB_ARRAY_NORMALIZED VERTEX_ATTRIB_ARRAY_NORMALIZED}, {@link #GL_CURRENT_VERTEX_ATTRIB CURRENT_VERTEX_ATTRIB}, {@link GL30#GL_VERTEX_ATTRIB_ARRAY_INTEGER VERTEX_ATTRIB_ARRAY_INTEGER}, {@link GL33#GL_VERTEX_ATTRIB_ARRAY_DIVISOR VERTEX_ATTRIB_ARRAY_DIVISOR}
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribiv GetVertexAttribiv}  */
	static public function glGetVertexAttribiv(index:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glStencilOpSeparate.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets front and/or back stencil test actions.
 *
 * @param face   whether front and/or back stencil state is updated. One of:<br>{@link GL11#GL_FRONT FRONT}, {@link GL11#GL_BACK BACK}, {@link GL11#GL_FRONT_AND_BACK FRONT_AND_BACK}
 * @param sfail  the action to take when the stencil test fails. The initial value is GL_KEEP. One of:<br>{@link GL11#GL_KEEP KEEP}, {@link GL11#GL_ZERO ZERO}, {@link GL11#GL_REPLACE REPLACE}, {@link GL11#GL_INCR INCR}, {@link GL14#GL_INCR_WRAP INCR_WRAP}, {@link GL11#GL_DECR DECR}, {@link GL14#GL_DECR_WRAP DECR_WRAP}, {@link GL11#GL_INVERT INVERT}
 * @param dpfail the stencil action when the stencil test passes, but the depth test fails. The initial value is GL_KEEP
 * @param dppass the stencil action when both the stencil test and the depth test pass, or when the stencil test passes and either there is no depth buffer or depth
 *               testing is not enabled. The initial value is GL_KEEP
 */
	static public function glStencilOpSeparate(face:Int,sfail:Int,dpfail:Int,dppass:Int):Void;
/** Unsafe version of {@link #glUniform2iv Uniform2iv}  */
/** JNI method for {@link #glUniform2iv Uniform2iv}  */
	static public function nglUniform2iv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexAttribfv GetVertexAttribfv}  */
/** JNI method for {@link #glGetVertexAttribfv GetVertexAttribfv}  */
	static public function nglGetVertexAttribfv(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4N.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Normalized int pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4Niv VertexAttrib4Niv}  */
	static public function glVertexAttrib4Niv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetAttachedShaders GetAttachedShaders}  */
/** JNI method for {@link #glGetAttachedShaders GetAttachedShaders}  */
	static public function nglGetAttachedShaders(program:Int,maxCount:Int,count:haxe.Int64,shaders:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,maxCount:Int,count:haxe.Int64,shaders:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniform1fv Uniform1fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single float uniform variable or a float uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform1fv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4Nusv VertexAttrib4Nusv}  */
/** JNI method for {@link #glVertexAttrib4Nusv VertexAttrib4Nusv}  */
	static public function nglVertexAttrib4Nusv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a float uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform value
 */
	static public function glUniform1f(location:Int,v0:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCreateProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 *Creates a program object.
 */
	static public function glCreateProgram():Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an int uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform value
 */
	static public function glUniform1i(location:Int,v0:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetShader.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns a parameter from a shader object.
 *
 * @param shader the shader object to be queried
 * @param pname  the object parameter. One of:<br>{@link #GL_SHADER_TYPE SHADER_TYPE}, {@link #GL_DELETE_STATUS DELETE_STATUS}, {@link #GL_COMPILE_STATUS COMPILE_STATUS}, {@link #GL_INFO_LOG_LENGTH INFO_LOG_LENGTH}, {@link #GL_SHADER_SOURCE_LENGTH SHADER_SOURCE_LENGTH}
 * @param params the requested object parameter
 */
/** Alternative version of: {@link #glGetShaderiv GetShaderiv}  */
	static public function glGetShaderiv(shader:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (shader:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribPointer VertexAttribPointer}  */
/** JNI method for {@link #glVertexAttribPointer VertexAttribPointer}  */
	static public function nglVertexAttribPointer(index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,size:Int,type:Int,normalized:Bool,stride:Int,pointer:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetProgramiv GetProgramiv}  */
	static public function glGetProgrami(program:Int,pname:Int):Int;
/** Unsafe version of {@link #glVertexAttrib4Nubv VertexAttrib4Nubv}  */
/** JNI method for {@link #glVertexAttrib4Nubv VertexAttrib4Nubv}  */
	static public function nglVertexAttrib4Nubv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glDisableVertexAttribArray DisableVertexAttribArray}  */
	static public function nglDisableVertexAttribArray(index:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link GL20} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL20;
/** JNI method for {@link #glValidateProgram ValidateProgram}  */
	static public function nglValidateProgram(program:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform2i Uniform2i}  */
	static public function nglUniform2i(location:Int,v0:Int,v1:Int,__functionAddress:haxe.Int64):Void;
/** String return (w/ implicit max length) version of: {@link #glGetActiveUniform GetActiveUniform}  */
/** String return version of: {@link #glGetActiveUniform GetActiveUniform}  */
/** Alternative version of: {@link #glGetActiveUniform GetActiveUniform}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns information about an active uniform variable for the specified program object.
 *
 * @param program   the program object to be queried
 * @param index     the index of the uniform variable to be queried
 * @param maxLength the maximum number of characters OpenGL is allowed to write in the character buffer indicated by {@code name}
 * @param length    the number of characters actually written by OpenGL in the string indicated by {@code name} (excluding the null terminator) if a value other than NULL is passed
 * @param size      the size of the uniform variable
 * @param type      the data type of the uniform variable
 * @param name      a null terminated string containing the name of the uniform variable
 */
	static public function glGetActiveUniform(program:Int,index:Int,maxLength:Int,length:java.nio.ByteBuffer,size:java.nio.ByteBuffer,type:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,index:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,maxLength:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,length:java.nio.IntBuffer,size:java.nio.IntBuffer,type:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib1s VertexAttrib1s}  */
	static public function nglVertexAttrib1s(index:Int,v0:Int16,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCompileShader.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Compiles a shader object.
 *
 * @param shader the shader object to be compiled
 */
	static public function glCompileShader(shader:Int):Void;
/** JNI method for {@link #glUniform2f Uniform2f}  */
	static public function nglUniform2f(location:Int,v0:Float,v1:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib2sv VertexAttrib2sv}  */
/** JNI method for {@link #glVertexAttrib2sv VertexAttrib2sv}  */
	static public function nglVertexAttrib2sv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glLinkProgram LinkProgram}  */
	static public function nglLinkProgram(program:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib2f VertexAttrib2f}  */
	static public function nglVertexAttrib2f(index:Int,v0:Float,v1:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib2d VertexAttrib2d}  */
	static public function nglVertexAttrib2d(index:Int,v0:Float,v1:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniform1iv Uniform1iv}  */
/** JNI method for {@link #glUniform1iv Uniform1iv}  */
	static public function nglUniform1iv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glCreateShader CreateShader}  */
	static public function nglCreateShader(type:Int,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #glUniformMatrix4fv UniformMatrix4fv}  */
/** JNI method for {@link #glUniformMatrix4fv UniformMatrix4fv}  */
	static public function nglUniformMatrix4fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib3dv VertexAttrib3dv}  */
/** JNI method for {@link #glVertexAttrib3dv VertexAttrib3dv}  */
	static public function nglVertexAttrib3dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4fv VertexAttrib4fv}  */
/** JNI method for {@link #glVertexAttrib4fv VertexAttrib4fv}  */
	static public function nglVertexAttrib4fv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib1f VertexAttrib1f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib1fv VertexAttrib1fv}  */
	static public function glVertexAttrib1fv(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the int value(s) of a uniform variable.
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param params   the value of the specified uniform variable
 */
/** Alternative version of: {@link #glGetUniformiv GetUniformiv}  */
	static public function glGetUniformiv(program:Int,location:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsShader.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns {@link GL11#GL_TRUE TRUE} if {@code shader} is the name of a shader object. If {@code shader} is zero, or a nonzero value that is not the name of a shader
 * object, IsShader returns {@link GL11#GL_FALSE FALSE}. No error is generated if shader is not a valid shader object name.
 *
 * @param shader the shader object name to query
 */
	static public function glIsShader(shader:Int):Bool;
/** JNI method for {@link #glUniform3f Uniform3f}  */
	static public function nglUniform3f(location:Int,v0:Float,v1:Float,v2:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform3i Uniform3i}  */
	static public function nglUniform3i(location:Int,v0:Int,v1:Int,v2:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glStencilFuncSeparate.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets front and/or back function and reference value for stencil testing.
 *
 * @param face whether front and/or back stencil state is updated. One of:<br>{@link GL11#GL_FRONT FRONT}, {@link GL11#GL_BACK BACK}, {@link GL11#GL_FRONT_AND_BACK FRONT_AND_BACK}
 * @param func the test function. The initial value is GL_ALWAYS. One of:<br>{@link GL11#GL_NEVER NEVER}, {@link GL11#GL_LESS LESS}, {@link GL11#GL_LEQUAL LEQUAL}, {@link GL11#GL_GREATER GREATER}, {@link GL11#GL_GEQUAL GEQUAL}, {@link GL11#GL_EQUAL EQUAL}, {@link GL11#GL_NOTEQUAL NOTEQUAL}, {@link GL11#GL_ALWAYS ALWAYS}
 * @param ref  the reference value for the stencil test. {@code ref} is clamped to the range [0, 2n &ndash; 1], where {@code n} is the number of bitplanes in the stencil
 *             buffer. The initial value is 0.
 * @param mask a mask that is ANDed with both the reference value and the stored stencil value when the test is done. The initial value is all 1's.
 */
	static public function glStencilFuncSeparate(face:Int,func:Int,ref:Int,mask:Int):Void;
/** Alternative version of: {@link #glUniform4fv Uniform4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single vec4 uniform variable or a vec4 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform4fv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/** Buffer return (w/ implicit max length) version of: {@link #glGetAttachedShaders GetAttachedShaders}  */
/** Buffer return version of: {@link #glGetAttachedShaders GetAttachedShaders}  */
/** Alternative version of: {@link #glGetAttachedShaders GetAttachedShaders}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetAttachedShaders.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the shader objects attached to a program object.
 *
 * @param program  the program object to be queried
 * @param maxCount the size of the array for storing the returned object names
 * @param count    the number of names actually returned in {@code shaders}
 * @param shaders  an array that is used to return the names of attached shader objects
 */
	static public function glGetAttachedShaders(program:Int,maxCount:Int,count:java.nio.ByteBuffer,shaders:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int):java.nio.IntBuffer {})
	@:overload(function (program:Int,maxCount:Int):java.nio.IntBuffer {})
	@:overload(function (program:Int,count:java.nio.IntBuffer,shaders:java.nio.IntBuffer):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetShaderInfoLog GetShaderInfoLog}  */
/** String return version of: {@link #glGetShaderInfoLog GetShaderInfoLog}  */
/** Alternative version of: {@link #glGetShaderInfoLog GetShaderInfoLog}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetShaderInfoLog.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the information log for a shader object.
 *
 * @param shader    the shader object whose information log is to be queried
 * @param maxLength the size of the character buffer for storing the returned information log
 * @param length    the length of the string returned in {@code infoLog} (excluding the null terminator)
 * @param infoLog   an array of characters that is used to return the information log
 */
	static public function glGetShaderInfoLog(shader:Int,maxLength:Int,length:java.nio.ByteBuffer,infoLog:java.nio.ByteBuffer):Void;
	@:overload(function (shader:Int):String {})
	@:overload(function (shader:Int,maxLength:Int):String {})
	@:overload(function (shader:Int,length:java.nio.IntBuffer,infoLog:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib1d VertexAttrib1d}  */
	static public function nglVertexAttrib1d(index:Int,v0:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib1f VertexAttrib1f}  */
	static public function nglVertexAttrib1f(index:Int,v0:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glDeleteProgram DeleteProgram}  */
	static public function nglDeleteProgram(program:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib1d VertexAttrib1d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib1dv VertexAttrib1dv}  */
	static public function glVertexAttrib1dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib3s VertexAttrib3s}  */
	static public function nglVertexAttrib3s(index:Int,v0:Int16,v1:Int16,v2:Int16,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveUniform GetActiveUniform}  */
/** JNI method for {@link #glGetActiveUniform GetActiveUniform}  */
	static public function nglGetActiveUniform(program:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetUniformiv GetUniformiv}  */
/** JNI method for {@link #glGetUniformiv GetUniformiv}  */
	static public function nglGetUniformiv(program:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a vec4 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 * @param v3       the uniform w value
 */
	static public function glUniform4f(location:Int,v0:Float,v1:Float,v2:Float,v3:Float):Void;
/** Alternative version of: {@link #glUniform4iv Uniform4iv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single ivec4 uniform variable or a ivec4 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform4iv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib3sv VertexAttrib3sv}  */
/** JNI method for {@link #glVertexAttrib3sv VertexAttrib3sv}  */
	static public function nglVertexAttrib3sv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glUniform4i Uniform4i}  */
	static public function nglUniform4i(location:Int,v0:Int,v1:Int,v2:Int,v3:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a ivec4 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 * @param v3       the uniform w value
 */
	static public function glUniform4i(location:Int,v0:Int,v1:Int,v2:Int,v3:Int):Void;
/** JNI method for {@link #glUniform4f Uniform4f}  */
	static public function nglUniform4f(location:Int,v0:Float,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib4d VertexAttrib4d}  */
	static public function nglVertexAttrib4d(index:Int,v0:Float,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttrib4f VertexAttrib4f}  */
	static public function nglVertexAttrib4f(index:Int,v0:Float,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib4dv VertexAttrib4dv}  */
/** JNI method for {@link #glVertexAttrib4dv VertexAttrib4dv}  */
	static public function nglVertexAttrib4dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glDetachShader DetachShader}  */
	static public function nglDetachShader(program:Int,shader:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttrib4uiv VertexAttrib4uiv}  */
/** JNI method for {@link #glVertexAttrib4uiv VertexAttrib4uiv}  */
	static public function nglVertexAttrib4uiv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib2f VertexAttrib2f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib2fv VertexAttrib2fv}  */
	static public function glVertexAttrib2fv(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glVertexAttrib2s VertexAttrib2s}  */
	static public function nglVertexAttrib2s(index:Int,v0:Int16,v1:Int16,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glUniform3fv Uniform3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single vec3 uniform variable or a vec3 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform3fv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUseProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Installs a program object as part of current rendering state.
 *
 * @param program the program object whose executables are to be used as part of current rendering state
 */
	static public function glUseProgram(program:Int):Void;
/** JNI method for {@link #glVertexAttrib3f VertexAttrib3f}  */
	static public function nglVertexAttrib3f(index:Int,v0:Float,v1:Float,v2:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glDeleteShader DeleteShader}  */
	static public function nglDeleteShader(shader:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glUniformMatrix4fv UniformMatrix4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat4 uniform variable or a mat4 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix4fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** JNI method for {@link #glVertexAttrib3d VertexAttrib3d}  */
	static public function nglVertexAttrib3d(index:Int,v0:Float,v1:Float,v2:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4N.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Normalized unsigned int pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4Nuiv VertexAttrib4Nuiv}  */
	static public function glVertexAttrib4Nuiv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Unsigned int pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4uiv VertexAttrib4uiv}  */
	static public function glVertexAttrib4uiv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns a parameter from a program object.
 *
 * @param program the program object to be queried
 * @param pname   the object parameter. One of:<br>{@link #GL_DELETE_STATUS DELETE_STATUS}, {@link #GL_LINK_STATUS LINK_STATUS}, {@link #GL_VALIDATE_STATUS VALIDATE_STATUS}, {@link #GL_INFO_LOG_LENGTH INFO_LOG_LENGTH}, {@link #GL_ATTACHED_SHADERS ATTACHED_SHADERS}, {@link #GL_ACTIVE_ATTRIBUTES ACTIVE_ATTRIBUTES}, {@link #GL_ACTIVE_ATTRIBUTE_MAX_LENGTH ACTIVE_ATTRIBUTE_MAX_LENGTH}, {@link #GL_ACTIVE_UNIFORMS ACTIVE_UNIFORMS}, {@link #GL_ACTIVE_UNIFORM_MAX_LENGTH ACTIVE_UNIFORM_MAX_LENGTH}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER_MODE TRANSFORM_FEEDBACK_BUFFER_MODE}, {@link GL30#GL_TRANSFORM_FEEDBACK_VARYINGS TRANSFORM_FEEDBACK_VARYINGS}, {@link GL30#GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH}, {@link GL31#GL_ACTIVE_UNIFORM_BLOCKS ACTIVE_UNIFORM_BLOCKS}, {@link GL31#GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH}, {@link GL32#GL_GEOMETRY_VERTICES_OUT GEOMETRY_VERTICES_OUT}, {@link GL32#GL_GEOMETRY_INPUT_TYPE GEOMETRY_INPUT_TYPE}, {@link GL32#GL_GEOMETRY_OUTPUT_TYPE GEOMETRY_OUTPUT_TYPE}, {@link GL41#GL_PROGRAM_BINARY_LENGTH PROGRAM_BINARY_LENGTH}, {@link GL42#GL_ACTIVE_ATOMIC_COUNTER_BUFFERS ACTIVE_ATOMIC_COUNTER_BUFFERS}, {@link GL43#GL_COMPUTE_WORK_GROUP_SIZE COMPUTE_WORK_GROUP_SIZE}
 * @param params  the requested object parameter
 */
/** Alternative version of: {@link #glGetProgramiv GetProgramiv}  */
	static public function glGetProgramiv(program:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib3f VertexAttrib3f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib3fv VertexAttrib3fv}  */
	static public function glVertexAttrib3fv(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib1d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Double version of {@link #glVertexAttrib1f VertexAttrib1f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 */
	static public function glVertexAttrib1d(index:Int,v0:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib2d VertexAttrib2d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib2dv VertexAttrib2dv}  */
	static public function glVertexAttrib2dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetVertexAttribPointer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the address of the specified generic vertex attribute pointer.
 *
 * @param index   the generic vertex attribute parameter to be queried
 * @param pname   the symbolic name of the generic vertex attribute parameter to be returned. Must be:<br>{@link #GL_VERTEX_ATTRIB_ARRAY_POINTER VERTEX_ATTRIB_ARRAY_POINTER}
 * @param pointer the pointer value
 */
/** Alternative version of: {@link #glGetVertexAttribPointerv GetVertexAttribPointerv}  */
	static public function glGetVertexAttribPointerv(index:Int,pname:Int,pointer:org.lwjgl.PointerBuffer):Void;
	@:overload(function (index:Int,pname:Int,pointer:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendEquationSeparate.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the RGB blend equation and the alpha blend equation separately.
 *
 * @param modeRGB   the RGB blend equation, how the red, green, and blue components of the source and destination colors are combined. One of:<br>{@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MIN MIN}, {@link GL14#GL_MAX MAX}
 * @param modeAlpha the alpha blend equation, how the alpha component of the source and destination colors are combined
 */
	static public function glBlendEquationSeparate(modeRGB:Int,modeAlpha:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib1f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute. The y and z components are implicitly set to 0.0f and w to 1.0f.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 */
	static public function glVertexAttrib1f(index:Int,v0:Float):Void;
/** Unsafe version of {@link #glVertexAttrib4Nsv VertexAttrib4Nsv}  */
/** JNI method for {@link #glVertexAttrib4Nsv VertexAttrib4Nsv}  */
	static public function nglVertexAttrib4Nsv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4Nuiv VertexAttrib4Nuiv}  */
/** JNI method for {@link #glVertexAttrib4Nuiv VertexAttrib4Nuiv}  */
	static public function nglVertexAttrib4Nuiv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib1s.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Short version of {@link #glVertexAttrib1f VertexAttrib1f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 */
	static public function glVertexAttrib1s(index:Int,v0:Int16):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDetachShader.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Detaches a shader object from a program object to which it is attached.
 *
 * @param program the program object from which to detach the shader object
 * @param shader  the shader object to be detached
 */
	static public function glDetachShader(program:Int,shader:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glAttachShader.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches a shader object to a program object.
 * 
 * <p>In order to create a complete shader program, there must be a way to specify the list of things that will be linked together. Program objects provide
 * this mechanism. Shaders that are to be linked together in a program object must first be attached to that program object. glAttachShader attaches the
 * shader object specified by shader to the program object specified by program. This indicates that shader will be included in link operations that will
 * be performed on program.</p>
 * 
 * <p>All operations that can be performed on a shader object are valid whether or not the shader object is attached to a program object. It is permissible to
 * attach a shader object to a program object before source code has been loaded into the shader object or before the shader object has been compiled. It
 * is permissible to attach multiple shader objects of the same type because each may contain a portion of the complete shader. It is also permissible to
 * attach a shader object to more than one program object. If a shader object is deleted while it is attached to a program object, it will be flagged for
 * deletion, and deletion will not occur until glDetachShader is called to detach it from all program objects to which it is attached.</p>
 *
 * @param program the program object to which a shader object will be attached
 * @param shader  the shader object that is to be attached
 */
	static public function glAttachShader(program:Int,shader:Int):Void;
/** Unsafe version of {@link #glGetUniformfv GetUniformfv}  */
/** JNI method for {@link #glGetUniformfv GetUniformfv}  */
	static public function nglGetUniformfv(program:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix2fv UniformMatrix2fv}  */
/** JNI method for {@link #glUniformMatrix2fv UniformMatrix2fv}  */
	static public function nglUniformMatrix2fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib1dv VertexAttrib1dv}  */
/** JNI method for {@link #glVertexAttrib1dv VertexAttrib1dv}  */
	static public function nglVertexAttrib1dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib2fv VertexAttrib2fv}  */
/** JNI method for {@link #glVertexAttrib2fv VertexAttrib2fv}  */
	static public function nglVertexAttrib2fv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib4Nbv VertexAttrib4Nbv}  */
/** JNI method for {@link #glVertexAttrib4Nbv VertexAttrib4Nbv}  */
	static public function nglVertexAttrib4Nbv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** CharSequence version of: {@link #glGetAttribLocation GetAttribLocation}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetAttribLocation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the location of an attribute variable.
 *
 * @param program the program object to be queried
 * @param name    a null terminated string containing the name of the attribute variable whose location is to be queried
 */
	static public function glGetAttribLocation(program:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,name:java.lang.CharSequence):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCreateShader.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Creates a shader object.
 *
 * @param type the type of shader to be created. One of:<br>{@link #GL_VERTEX_SHADER VERTEX_SHADER}, {@link #GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 */
	static public function glCreateShader(type:Int):Int;
/** JNI method for {@link #glStencilMaskSeparate StencilMaskSeparate}  */
	static public function nglStencilMaskSeparate(face:Int,mask:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetUniformLocation GetUniformLocation}  */
/** JNI method for {@link #glGetUniformLocation GetUniformLocation}  */
	static public function nglGetUniformLocation(program:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,name:haxe.Int64):Int {})
/** JNI method for {@link #glVertexAttrib4s VertexAttrib4s}  */
	static public function nglVertexAttrib4s(index:Int,v0:Int16,v1:Int16,v2:Int16,v3:Int16,__functionAddress:haxe.Int64):Void;
/** Single value version of: {@link #glDrawBuffers DrawBuffers}  */
/** Alternative version of: {@link #glDrawBuffers DrawBuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawBuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies a list of color buffers to be drawn into.
 *
 * @param n    the number of buffers in {@code bufs}
 * @param bufs an array of symbolic constants specifying the buffers into which fragment colors or data values will be written. One of:<br>{@link GL11#GL_NONE NONE}, {@link GL11#GL_FRONT_LEFT FRONT_LEFT}, {@link GL11#GL_FRONT_RIGHT FRONT_RIGHT}, {@link GL11#GL_BACK_LEFT BACK_LEFT}, {@link GL11#GL_BACK_RIGHT BACK_RIGHT}, {@link GL11#GL_AUX0 AUX0}, {@link GL11#GL_AUX1 AUX1}, {@link GL11#GL_AUX2 AUX2}, {@link GL11#GL_AUX3 AUX3}, {@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, GL30.GL_COLOR_ATTACHMENT[1-15]
 */
	static public function glDrawBuffers(n:Int,bufs:java.nio.ByteBuffer):Void;
	@:overload(function (buf:Int):Void {})
	@:overload(function (bufs:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix3fv UniformMatrix3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat3 uniform variable or a mat3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix3fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib1s VertexAttrib1s}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib1sv VertexAttrib1sv}  */
	static public function glVertexAttrib1sv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetProgramInfoLog GetProgramInfoLog}  */
/** String return version of: {@link #glGetProgramInfoLog GetProgramInfoLog}  */
/** Alternative version of: {@link #glGetProgramInfoLog GetProgramInfoLog}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramInfoLog.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the information log for a program object.
 *
 * @param program   the program object whose information log is to be queried
 * @param maxLength the size of the character buffer for storing the returned information log
 * @param length    the length of the string returned in {@code infoLog} (excluding the null terminator)
 * @param infoLog   an array of characters that is used to return the information log
 */
	static public function glGetProgramInfoLog(program:Int,maxLength:Int,length:java.nio.ByteBuffer,infoLog:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int):String {})
	@:overload(function (program:Int,maxLength:Int):String {})
	@:overload(function (program:Int,length:java.nio.IntBuffer,infoLog:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteShader.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes a shader object.
 *
 * @param shader the shader object to be deleted
 */
	static public function glDeleteShader(shader:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Integer pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4iv VertexAttrib4iv}  */
	static public function glVertexAttrib4iv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttrib4iv VertexAttrib4iv}  */
/** JNI method for {@link #glVertexAttrib4iv VertexAttrib4iv}  */
	static public function nglVertexAttrib4iv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib3f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute. The w is implicitly set to 1.0f.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 */
	static public function glVertexAttrib3f(index:Int,v0:Float,v1:Float,v2:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib4f VertexAttrib4f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib4fv VertexAttrib4fv}  */
	static public function glVertexAttrib4fv(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the float value(s) of a uniform variable.
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param params   the value of the specified uniform variable
 */
/** Alternative version of: {@link #glGetUniformfv GetUniformfv}  */
	static public function glGetUniformfv(program:Int,location:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib3d VertexAttrib3d}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib3dv VertexAttrib3dv}  */
	static public function glVertexAttrib3dv(index:Int,v:java.nio.DoubleBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glStencilMaskSeparate.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Controls the front and/or back writing of individual bits in the stencil planes.
 *
 * @param face whether front and/or back stencil writemask is updated. One of:<br>{@link GL11#GL_FRONT FRONT}, {@link GL11#GL_BACK BACK}, {@link GL11#GL_FRONT_AND_BACK FRONT_AND_BACK}
 * @param mask a bit mask to enable and disable writing of individual bits in the stencil planes. Initially, the mask is all 1's.
 */
	static public function glStencilMaskSeparate(face:Int,mask:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib3d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Double version of {@link #glVertexAttrib3f VertexAttrib3f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 */
	static public function glVertexAttrib3d(index:Int,v0:Float,v1:Float,v2:Float):Void;
/** Unsafe version of {@link #glGetActiveAttrib GetActiveAttrib}  */
/** JNI method for {@link #glGetActiveAttrib GetActiveAttrib}  */
	static public function nglGetActiveAttrib(program:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetShaderInfoLog GetShaderInfoLog}  */
/** JNI method for {@link #glGetShaderInfoLog GetShaderInfoLog}  */
	static public function nglGetShaderInfoLog(shader:Int,maxLength:Int,length:haxe.Int64,infoLog:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shader:Int,maxLength:Int,length:haxe.Int64,infoLog:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib1sv VertexAttrib1sv}  */
/** JNI method for {@link #glVertexAttrib1sv VertexAttrib1sv}  */
	static public function nglVertexAttrib1sv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glBlendEquationSeparate BlendEquationSeparate}  */
	static public function nglBlendEquationSeparate(modeRGB:Int,modeAlpha:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib3s.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Short version of {@link #glVertexAttrib3f VertexAttrib3f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 * @param v2    the vertex attribute z component
 */
	static public function glVertexAttrib3s(index:Int,v0:Int16,v1:Int16,v2:Int16):Void;
/** Unsafe version of {@link #glUniformMatrix3fv UniformMatrix3fv}  */
/** JNI method for {@link #glUniformMatrix3fv UniformMatrix3fv}  */
	static public function nglUniformMatrix3fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib2dv VertexAttrib2dv}  */
/** JNI method for {@link #glVertexAttrib2dv VertexAttrib2dv}  */
	static public function nglVertexAttrib2dv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttrib3fv VertexAttrib3fv}  */
/** JNI method for {@link #glVertexAttrib3fv VertexAttrib3fv}  */
	static public function nglVertexAttrib3fv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib2f.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a generic vertex attribute. The y component is implicitly set to 0.0f and w to 1.0f.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 */
	static public function glVertexAttrib2f(index:Int,v0:Float,v1:Float):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib2d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Double version of {@link #glVertexAttrib2f VertexAttrib2f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 */
	static public function glVertexAttrib2d(index:Int,v0:Float,v1:Float):Void;
/** JNI method for {@link #glUniform1i Uniform1i}  */
	static public function nglUniform1i(location:Int,v0:Int,__functionAddress:haxe.Int64):Void;
/** String return (w/ implicit max length) version of: {@link #glGetActiveAttrib GetActiveAttrib}  */
/** String return version of: {@link #glGetActiveAttrib GetActiveAttrib}  */
/** Alternative version of: {@link #glGetActiveAttrib GetActiveAttrib}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveAttrib.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns information about an active attribute variable for the specified program object.
 *
 * @param program   the program object to be queried
 * @param index     the index of the attribute variable to be queried
 * @param maxLength the maximum number of characters OpenGL is allowed to write in the character buffer indicated by {@code name}
 * @param length    the number of characters actually written by OpenGL in the string indicated by {@code name} (excluding the null terminator) if a value other than NULL is passed
 * @param size      the size of the attribute variable
 * @param type      the data type of the attribute variable
 * @param name      a null terminated string containing the name of the attribute variable
 */
	static public function glGetActiveAttrib(program:Int,index:Int,maxLength:Int,length:java.nio.ByteBuffer,size:java.nio.ByteBuffer,type:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,index:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,maxLength:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,length:java.nio.IntBuffer,size:java.nio.IntBuffer,type:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns {@link GL11#GL_TRUE TRUE} if {@code program} is the name of a program object. If {@code program} is zero, or a non-zero value that is not the name of a program
 * object, IsProgram returns {@link GL11#GL_FALSE FALSE}. No error is generated if program is not a valid program object name.
 *
 * @param program the program object name to query
 */
	static public function glIsProgram(program:Int):Bool;
/** JNI method for {@link #glUniform1f Uniform1f}  */
	static public function nglUniform1f(location:Int,v0:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetProgramInfoLog GetProgramInfoLog}  */
/** JNI method for {@link #glGetProgramInfoLog GetProgramInfoLog}  */
	static public function nglGetProgramInfoLog(program:Int,maxLength:Int,length:haxe.Int64,infoLog:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,maxLength:Int,length:haxe.Int64,infoLog:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniformMatrix2fv UniformMatrix2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat2 uniform variable or a mat2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix2fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttrib2s VertexAttrib2s}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v     the vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttrib2sv VertexAttrib2sv}  */
	static public function glVertexAttrib2sv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttrib2s.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Short version of {@link #glVertexAttrib2f VertexAttrib2f}.
 *
 * @param index the index of the generic vertex attribute to be modified
 * @param v0    the vertex attribute x component
 * @param v1    the vertex attribute y component
 */
	static public function glVertexAttrib2s(index:Int,v0:Int16,v1:Int16):Void;
/** Unsafe version of {@link #glShaderSource ShaderSource}  */
/** JNI method for {@link #glShaderSource ShaderSource}  */
	static public function nglShaderSource(shader:Int,count:Int,strings:haxe.Int64,length:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shader:Int,count:Int,strings:haxe.Int64,length:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glLinkProgram.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Links a program object.
 *
 * @param program the program object to be linked
 */
	static public function glLinkProgram(program:Int):Void;

}
