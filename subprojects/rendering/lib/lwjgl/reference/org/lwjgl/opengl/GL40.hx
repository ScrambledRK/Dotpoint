package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL40")
@:final
/**
 * The core OpenGL 4.0 functionality. OpenGL 4.0 implementations support revision 4.00 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_query_lod.txt">ARB_texture_query_lod</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/draw_buffers_blend.txt">ARB_draw_buffers_blend</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/draw_indirect.txt">ARB_draw_indirect</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/gpu_shader5.txt">ARB_gpu_shader5</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/gpu_shader_fp64.txt">ARB_gpu_shader_fp64</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/sample_shading.txt">ARB_sample_shading</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_subroutine.txt">ARB_shader_subroutine</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/tessellation_shader.txt">ARB_tessellation_shader</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_buffer_object_rgb32.txt">ARB_texture_buffer_object_rgb32</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_cube_map_array.txt">ARB_texture_cube_map_array</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_gather.txt">ARB_texture_gather</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/transform_feedback2.txt">ARB_transform_feedback2</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/transform_feedback3.txt">ARB_transform_feedback3</a></li>
 * </ul></p>
 */
extern class GL40 
{
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferPointerv,
 * MapBufferRange, FlushMappedBufferRange, GetBufferParameteriv, and CopyBufferSubData.
 */
	inline static public var GL_DRAW_INDIRECT_BUFFER:Int = 36671;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_INDIRECT_BUFFER_BINDING:Int = 36675;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_GEOMETRY_SHADER_INVOCATIONS:Int = 34943;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_GEOMETRY_SHADER_INVOCATIONS:Int = 36442;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MIN_FRAGMENT_INTERPOLATION_OFFSET:Int = 36443;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_FRAGMENT_INTERPOLATION_OFFSET:Int = 36444;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_FRAGMENT_INTERPOLATION_OFFSET_BITS:Int = 36445;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_VEC2:Int = 36860;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_VEC3:Int = 36861;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_VEC4:Int = 36862;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT2:Int = 36678;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT3:Int = 36679;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT4:Int = 36680;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT2x3:Int = 36681;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT2x4:Int = 36682;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT3x2:Int = 36683;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT3x4:Int = 36684;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT4x2:Int = 36685;
/** Returned in the {@code type} parameter of GetActiveUniform, and GetTransformFeedbackVarying.  */
	inline static public var GL_DOUBLE_MAT4x3:Int = 36686;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_SHADING:Int = 35894;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MIN_SAMPLE_SHADING_VALUE:Int = 35895;
/** Accepted by the {@code pname} parameter of GetProgramStageiv.  */
	inline static public var GL_ACTIVE_SUBROUTINES:Int = 36325;
/** Accepted by the {@code pname} parameter of GetProgramStageiv.  */
	inline static public var GL_ACTIVE_SUBROUTINE_UNIFORMS:Int = 36326;
/** Accepted by the {@code pname} parameter of GetProgramStageiv.  */
	inline static public var GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS:Int = 36423;
/** Accepted by the {@code pname} parameter of GetProgramStageiv.  */
	inline static public var GL_ACTIVE_SUBROUTINE_MAX_LENGTH:Int = 36424;
/** Accepted by the {@code pname} parameter of GetProgramStageiv.  */
	inline static public var GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH:Int = 36425;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_SUBROUTINES:Int = 36327;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS:Int = 36328;
/** Accepted by the {@code pname} parameter of GetActiveSubroutineUniformiv.  */
	inline static public var GL_NUM_COMPATIBLE_SUBROUTINES:Int = 36426;
/** Accepted by the {@code pname} parameter of GetActiveSubroutineUniformiv.  */
	inline static public var GL_COMPATIBLE_SUBROUTINES:Int = 36427;
/** Accepted by the {@code mode} parameter of Begin and all vertex array functions that implicitly call Begin.  */
	inline static public var GL_PATCHES:Int = 14;
/** Accepted by the {@code pname} parameter of PatchParameteri, GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_PATCH_VERTICES:Int = 36466;
/** Accepted by the {@code pname} parameter of PatchParameterfv, GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv, and GetInteger64v.  */
	inline static public var GL_PATCH_DEFAULT_INNER_LEVEL:Int = 36467;
/** Accepted by the {@code pname} parameter of PatchParameterfv, GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv, and GetInteger64v.  */
	inline static public var GL_PATCH_DEFAULT_OUTER_LEVEL:Int = 36468;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_CONTROL_OUTPUT_VERTICES:Int = 36469;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_MODE:Int = 36470;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_SPACING:Int = 36471;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_VERTEX_ORDER:Int = 36472;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TESS_GEN_POINT_MODE:Int = 36473;
/** Returned by GetProgramiv when {@code pname} is TESS_GEN_MODE.  */
	inline static public var GL_ISOLINES:Int = 36474;
/** Returned by GetProgramiv when {@code pname} is TESS_GEN_SPACING.  */
	inline static public var GL_FRACTIONAL_ODD:Int = 36475;
/** Returned by GetProgramiv when {@code pname} is TESS_GEN_SPACING.  */
	inline static public var GL_FRACTIONAL_EVEN:Int = 36476;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_PATCH_VERTICES:Int = 36477;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_GEN_LEVEL:Int = 36478;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS:Int = 36479;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS:Int = 36480;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS:Int = 36481;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS:Int = 36482;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS:Int = 36483;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_PATCH_COMPONENTS:Int = 36484;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS:Int = 36485;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS:Int = 36486;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS:Int = 36489;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS:Int = 36490;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_INPUT_COMPONENTS:Int = 34924;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS:Int = 34925;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS:Int = 36382;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS:Int = 36383;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER:Int = 34032;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER:Int = 34033;
/** Accepted by the {@code type} parameter of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_TESS_EVALUATION_SHADER:Int = 36487;
/** Accepted by the {@code type} parameter of CreateShader and returned by the {@code params} parameter of GetShaderiv.  */
	inline static public var GL_TESS_CONTROL_SHADER:Int = 36488;
/** Accepted by the {@code target} parameter of TexParameteri, TexParameteriv, TexParameterf, TexParameterfv, BindTexture, and GenerateMipmap.  */
	inline static public var GL_TEXTURE_CUBE_MAP_ARRAY:Int = 36873;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_CUBE_MAP_ARRAY:Int = 36874;
/** Accepted by the {@code target} parameter of TexImage3D, TexSubImage3D, CompressedTeximage3D, CompressedTexSubImage3D and CopyTexSubImage3D.  */
	inline static public var GL_PROXY_TEXTURE_CUBE_MAP_ARRAY:Int = 36875;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_CUBE_MAP_ARRAY:Int = 36876;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW:Int = 36877;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_CUBE_MAP_ARRAY:Int = 36878;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY:Int = 36879;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET:Int = 36446;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET:Int = 36447;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS:Int = 36767;
/** Accepted by the {@code target} parameter of BindTransformFeedback.  */
	inline static public var GL_TRANSFORM_FEEDBACK:Int = 36386;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED:Int = 36387;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE:Int = 36388;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BINDING:Int = 36389;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TRANSFORM_FEEDBACK_BUFFERS:Int = 36464;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_VERTEX_STREAMS:Int = 36465;
/** Function address.  */
	public var BlendEquationi:haxe.Int64;
/** Function address.  */
	public var BlendEquationSeparatei:haxe.Int64;
/** Function address.  */
	public var BlendFunci:haxe.Int64;
/** Function address.  */
	public var BlendFuncSeparatei:haxe.Int64;
/** Function address.  */
	public var DrawArraysIndirect:haxe.Int64;
/** Function address.  */
	public var DrawElementsIndirect:haxe.Int64;
/** Function address.  */
	public var Uniform1d:haxe.Int64;
/** Function address.  */
	public var Uniform2d:haxe.Int64;
/** Function address.  */
	public var Uniform3d:haxe.Int64;
/** Function address.  */
	public var Uniform4d:haxe.Int64;
/** Function address.  */
	public var Uniform1dv:haxe.Int64;
/** Function address.  */
	public var Uniform2dv:haxe.Int64;
/** Function address.  */
	public var Uniform3dv:haxe.Int64;
/** Function address.  */
	public var Uniform4dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix2dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix3dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix4dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix2x3dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix2x4dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix3x2dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix3x4dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix4x2dv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix4x3dv:haxe.Int64;
/** Function address.  */
	public var GetUniformdv:haxe.Int64;
/** Function address.  */
	public var MinSampleShading:haxe.Int64;
/** Function address.  */
	public var GetSubroutineUniformLocation:haxe.Int64;
/** Function address.  */
	public var GetSubroutineIndex:haxe.Int64;
/** Function address.  */
	public var GetActiveSubroutineUniformiv:haxe.Int64;
/** Function address.  */
	public var GetActiveSubroutineUniformName:haxe.Int64;
/** Function address.  */
	public var GetActiveSubroutineName:haxe.Int64;
/** Function address.  */
	public var UniformSubroutinesuiv:haxe.Int64;
/** Function address.  */
	public var GetUniformSubroutineuiv:haxe.Int64;
/** Function address.  */
	public var GetProgramStageiv:haxe.Int64;
/** Function address.  */
	public var PatchParameteri:haxe.Int64;
/** Function address.  */
	public var PatchParameterfv:haxe.Int64;
/** Function address.  */
	public var BindTransformFeedback:haxe.Int64;
/** Function address.  */
	public var DeleteTransformFeedbacks:haxe.Int64;
/** Function address.  */
	public var GenTransformFeedbacks:haxe.Int64;
/** Function address.  */
	public var IsTransformFeedback:haxe.Int64;
/** Function address.  */
	public var PauseTransformFeedback:haxe.Int64;
/** Function address.  */
	public var ResumeTransformFeedback:haxe.Int64;
/** Function address.  */
	public var DrawTransformFeedback:haxe.Int64;
/** Function address.  */
	public var DrawTransformFeedbackStream:haxe.Int64;
/** Function address.  */
	public var BeginQueryIndexed:haxe.Int64;
/** Function address.  */
	public var EndQueryIndexed:haxe.Int64;
/** Function address.  */
	public var GetQueryIndexediv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glMinSampleShading MinSampleShading}  */
	static public function nglMinSampleShading(value:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniform3dv Uniform3dv}  */
/** JNI method for {@link #glUniform3dv Uniform3dv}  */
	static public function nglUniform3dv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glDrawTransformFeedbackStream DrawTransformFeedbackStream}  */
	static public function nglDrawTransformFeedbackStream(mode:Int,id:Int,stream:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPatchParameteri.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the integer value of the specified parameter for patch primitives.
 *
 * @param pname the name of the parameter to set. Must be:<br>{@link #GL_PATCH_VERTICES PATCH_VERTICES}
 * @param value the new value for the parameter given by {@code pname}
 */
	static public function glPatchParameteri(pname:Int,value:Int):Void;
/** Unsafe version of {@link #glUniformMatrix4x2dv UniformMatrix4x2dv}  */
/** JNI method for {@link #glUniformMatrix4x2dv UniformMatrix4x2dv}  */
	static public function nglUniformMatrix4x2dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glBindTransformFeedback BindTransformFeedback}  */
	static public function nglBindTransformFeedback(target:Int,id:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glResumeTransformFeedback.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Resumes transform feedback operations for the currently bound transform feedback object.
 * 
 * <p>The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated by {@link #glResumeTransformFeedback ResumeTransformFeedback} if the currently bound transform feedback is not active or is not paused.</p>
 */
	static public function glResumeTransformFeedback():Void;
/** CharSequence version of: {@link #glGetSubroutineUniformLocation GetSubroutineUniformLocation}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetSubroutineUniformLocation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the location of a subroutine uniform of a given shader stage within a program.
 *
 * @param program    the name of the program containing shader stage
 * @param shadertype the shader stage from which to query for subroutine uniform index. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param name       the name of the subroutine uniform whose index to query.
 */
	static public function glGetSubroutineUniformLocation(program:Int,shadertype:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,shadertype:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glGetSubroutineIndex GetSubroutineIndex}  */
/** JNI method for {@link #glGetSubroutineIndex GetSubroutineIndex}  */
	static public function nglGetSubroutineIndex(program:Int,shadertype:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,shadertype:Int,name:haxe.Int64):Int {})
/** JNI method for {@link #glResumeTransformFeedback ResumeTransformFeedback}  */
	static public function nglResumeTransformFeedback(__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBlendFunci BlendFunci}  */
	static public function nglBlendFunci(buf:Int,sfactor:Int,dfactor:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform2d Uniform2d}  */
	static public function nglUniform2d(location:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendFuncSeparatei.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies pixel arithmetic for RGB and alpha components separately for the specified draw buffer.
 *
 * @param buf      the index of the draw buffer for which to set the blend functions
 * @param srcRGB   how the red, green, and blue blending factors are computed
 * @param dstRGB   how the red, green, and blue destination blending factors are computed
 * @param srcAlpha how the alpha source blending factor is computed
 * @param dstAlpha how the alpha destination blending factor is computed
 */
	static public function glBlendFuncSeparatei(buf:Int,srcRGB:Int,dstRGB:Int,srcAlpha:Int,dstAlpha:Int):Void;
/** Alternative version of: {@link #glUniformMatrix4x3dv UniformMatrix4x3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix4x3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat4x3 uniform variable or a dmat4x3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix4x3dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glUniformMatrix3x4dv UniformMatrix3x4dv}  */
/** JNI method for {@link #glUniformMatrix3x4dv UniformMatrix3x4dv}  */
	static public function nglUniformMatrix3x4dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glDeleteTransformFeedbacks DeleteTransformFeedbacks}  */
/** JNI method for {@link #glDeleteTransformFeedbacks DeleteTransformFeedbacks}  */
	static public function nglDeleteTransformFeedbacks(n:Int,ids:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,ids:haxe.Int64):Void {})
/** JNI method for {@link #glBlendEquationi BlendEquationi}  */
	static public function nglBlendEquationi(buf:Int,mode:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformMatrix3dv UniformMatrix3dv}  */
/** JNI method for {@link #glUniformMatrix3dv UniformMatrix3dv}  */
	static public function nglUniformMatrix3dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Single value version of: {@link #glUniformSubroutinesuiv UniformSubroutinesuiv}  */
	static public function glUniformSubroutinesui(shadertype:Int,index:Int):Void;
/** Unsafe version of {@link #glGetSubroutineUniformLocation GetSubroutineUniformLocation}  */
/** JNI method for {@link #glGetSubroutineUniformLocation GetSubroutineUniformLocation}  */
	static public function nglGetSubroutineUniformLocation(program:Int,shadertype:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,shadertype:Int,name:haxe.Int64):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendFunci.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies pixel arithmetic for the specified draw buffer.
 *
 * @param buf     the index of the draw buffer for which to set the blend function
 * @param sfactor how the red, green, blue, and alpha source blending factors are computed
 * @param dfactor how the red, green, blue, and alpha destination blending factors are computed
 */
	static public function glBlendFunci(buf:Int,sfactor:Int,dfactor:Int):Void;
/** Alternative version of: {@link #glUniform3dv Uniform3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dvec3 uniform variable or a dvec3 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform3dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/** JNI method for {@link #glUniform3d Uniform3d}  */
	static public function nglUniform3d(location:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glDrawElementsIndirect DrawElementsIndirect}  */
/** JNI method for {@link #glDrawElementsIndirect DrawElementsIndirect}  */
	static public function nglDrawElementsIndirect(mode:Int,type:Int,indirect:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,type:Int,indirect:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniformMatrix2x4dv UniformMatrix2x4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix2x4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat2x4 uniform variable or a dmat2x4 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix2x4dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix4dv UniformMatrix4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat4 uniform variable or a dmat4 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix4dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glDrawArraysIndirect DrawArraysIndirect}  */
/** JNI method for {@link #glDrawArraysIndirect DrawArraysIndirect}  */
	static public function nglDrawArraysIndirect(mode:Int,indirect:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,indirect:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniformMatrix3x2dv UniformMatrix3x2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix3x2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat3x2 uniform variable or a dmat3x2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix3x2dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** JNI method for {@link #glPauseTransformFeedback PauseTransformFeedback}  */
	static public function nglPauseTransformFeedback(__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetUniformdv GetUniformdv}  */
	static public function glGetUniformd(program:Int,location:Int):Float;
/** Unsafe version of {@link #glUniform2dv Uniform2dv}  */
/** JNI method for {@link #glUniform2dv Uniform2dv}  */
	static public function nglUniform2dv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetUniformSubroutineuiv GetUniformSubroutineuiv}  */
/** JNI method for {@link #glGetUniformSubroutineuiv GetUniformSubroutineuiv}  */
	static public function nglGetUniformSubroutineuiv(shadertype:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shadertype:Int,location:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginQueryIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Begins a query object on an indexed target
 *
 * @param target the target type of query object established between {@code glBeginQueryIndexed} and the subsequent {@link #glEndQueryIndexed EndQueryIndexed}. One of:<br>{@link GL15#GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param index  the index of the query target upon which to begin the query
 * @param id     the name of a query object
 */
	static public function glBeginQueryIndexed(target:Int,index:Int,id:Int):Void;
/** JNI method for {@link #glDrawTransformFeedback DrawTransformFeedback}  */
	static public function nglDrawTransformFeedback(mode:Int,id:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform4d Uniform4d}  */
	static public function nglUniform4d(location:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformSubroutinesuiv UniformSubroutinesuiv}  */
/** JNI method for {@link #glUniformSubroutinesuiv UniformSubroutinesuiv}  */
	static public function nglUniformSubroutinesuiv(shadertype:Int,count:Int,indices:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shadertype:Int,count:Int,indices:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniformMatrix4x2dv UniformMatrix4x2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix4x2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat4x2 uniform variable or a dmat4x2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix4x2dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Single value version of: {@link #glDeleteTransformFeedbacks DeleteTransformFeedbacks}  */
/** Alternative version of: {@link #glDeleteTransformFeedbacks DeleteTransformFeedbacks}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteTransformFeedbacks.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes transform feedback objects.
 *
 * @param n   the number of transform feedback objects to delete
 * @param ids an array of names of transform feedback objects to delete
 */
	static public function glDeleteTransformFeedbacks(n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function (id:Int):Void {})
	@:overload(function (ids:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMinSampleShading.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the minimum rate at which sample shading takes place.
 *
 * @param value the rate at which samples are shaded within each covered pixel
 */
	static public function glMinSampleShading(value:Float):Void;
/** Unsafe version of {@link #glUniformMatrix4dv UniformMatrix4dv}  */
/** JNI method for {@link #glUniformMatrix4dv UniformMatrix4dv}  */
	static public function nglUniformMatrix4dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendEquationSeparate.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the RGB blend equation and the alpha blend equation separately for the specified draw buffer.
 *
 * @param buf       the index of the draw buffer for which to set the blend equations
 * @param modeRGB   the RGB blend equation, how the red, green, and blue components of the source and destination colors are combined. One of:<br>{@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MIN MIN}, {@link GL14#GL_MAX MAX}
 * @param modeAlpha the alpha blend equation, how the alpha component of the source and destination colors are combined. One of:<br>{@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MIN MIN}, {@link GL14#GL_MAX MAX}
 */
	static public function glBlendEquationSeparatei(buf:Int,modeRGB:Int,modeAlpha:Int):Void;
/** Alternative version of: {@link #glUniform2dv Uniform2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dvec2 uniform variable or a dvec2 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform2dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glPatchParameterfv PatchParameterfv}  */
/** JNI method for {@link #glPatchParameterfv PatchParameterfv}  */
	static public function nglPatchParameterfv(pname:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,values:haxe.Int64):Void {})
/** Single return value version of: {@link #glGenTransformFeedbacks GenTransformFeedbacks}  */
/** Alternative version of: {@link #glGenTransformFeedbacks GenTransformFeedbacks}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenTransformFeedbacks.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Reserves transform feedback object names.
 *
 * @param n   the number of transform feedback object names to reserve
 * @param ids an array of into which the reserved names will be written
 */
	static public function glGenTransformFeedbacks(n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (ids:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix3dv UniformMatrix3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat3 uniform variable or a dmat3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix3dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Single return value version of: {@link #glGetUniformSubroutineuiv GetUniformSubroutineuiv}  */
	static public function glGetUniformSubroutineui(shadertype:Int,location:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlendEquation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the equation used for both the RGB blend equation and the Alpha blend equation for the specified draw buffer.
 *
 * @param buf  the index of the draw buffer for which to set the blend equation
 * @param mode how source and destination colors are combined. One of:<br>{@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MIN MIN}, {@link GL14#GL_MAX MAX}
 */
	static public function glBlendEquationi(buf:Int,mode:Int):Void;
/** JNI method for {@link #glBlendFuncSeparatei BlendFuncSeparatei}  */
	static public function nglBlendFuncSeparatei(buf:Int,srcRGB:Int,dstRGB:Int,srcAlpha:Int,dstAlpha:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the double value(s) of a uniform variable.
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param params   the value of the specified uniform variable
 */
/** Alternative version of: {@link #glGetUniformdv GetUniformdv}  */
	static public function glGetUniformdv(program:Int,location:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
/** JNI method for {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
	static public function nglGetActiveSubroutineUniformName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int,bufsize:Int,length:haxe.Int64,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
/** JNI method for {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
	static public function nglGetActiveSubroutineName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int,bufsize:Int,length:haxe.Int64,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform1dv Uniform1dv}  */
/** JNI method for {@link #glUniform1dv Uniform1dv}  */
	static public function nglUniform1dv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a dvec2 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glUniform2d(location:Int,x:Float,y:Float):Void;
/** JNI method for {@link #glBeginQueryIndexed BeginQueryIndexed}  */
	static public function nglBeginQueryIndexed(target:Int,index:Int,id:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformMatrix3x2dv UniformMatrix3x2dv}  */
/** JNI method for {@link #glUniformMatrix3x2dv UniformMatrix3x2dv}  */
	static public function nglUniformMatrix3x2dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPauseTransformFeedback.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pauses transform feedback operations for the currently bound transform feedback object.
 * 
 * <p>When transform feedback operations are paused, transform feedback is still considered active and changing most transform feedback state related to the
 * object results in an error. However, a new transform feedback object may be bound while transform feedback is paused. The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION}
 * is generated by PauseTransformFeedback if the currently bound transform feedback is not active or is paused.</p>
 * 
 * <p>When transform feedback is active and not paused, all geometric primitives generated must be compatible with the value of {@code primitiveMode} passed
 * to {@link GL30#glBeginTransformFeedback BeginTransformFeedback}. The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated by {@link GL11#glBegin Begin} or any operation that implicitly calls {@link GL11#glBegin Begin}
 * (such as {@link GL11#glDrawElements DrawElements}) if {@code mode} is not one of the allowed modes. If a geometry shader is active, its output primitive type is used instead
 * of the {@code mode} parameter passed to {@link GL11#glBegin Begin} for the purposes of this error check. Any primitive type may be used while transform feedback is
 * paused.</p>
 */
	static public function glPauseTransformFeedback():Void;
/** Single return value version of: {@link #glGetQueryIndexediv GetQueryIndexediv}  */
	static public function glGetQueryIndexedi(target:Int,index:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetProgramStage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves properties of a program object corresponding to a specified shader stage.
 *
 * @param program    the name of the program containing shader stage
 * @param shadertype the shader stage from which to query for the subroutine parameter. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param pname      the parameter of the shader to query. One of:<br>{@link #GL_ACTIVE_SUBROUTINES ACTIVE_SUBROUTINES}, {@link #GL_ACTIVE_SUBROUTINE_UNIFORMS ACTIVE_SUBROUTINE_UNIFORMS}, {@link #GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS}, {@link #GL_ACTIVE_SUBROUTINE_MAX_LENGTH ACTIVE_SUBROUTINE_MAX_LENGTH}, {@link #GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH}
 * @param values     a variable into which the queried value or values will be placed
 */
/** Alternative version of: {@link #glGetProgramStageiv GetProgramStageiv}  */
	static public function glGetProgramStageiv(program:Int,shadertype:Int,pname:Int,values:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,pname:Int,values:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetQueryIndexediv GetQueryIndexediv}  */
/** JNI method for {@link #glGetQueryIndexediv GetQueryIndexediv}  */
	static public function nglGetQueryIndexediv(target:Int,index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glBlendEquationSeparatei BlendEquationSeparatei}  */
	static public function nglBlendEquationSeparatei(buf:Int,modeRGB:Int,modeAlpha:Int,__functionAddress:haxe.Int64):Void;
/** Buffer object offset version of: {@link #glDrawArraysIndirect DrawArraysIndirect}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawArraysIndirect.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders primitives from array data, taking parameters from memory.
 * 
 * <p>{@code glDrawArraysIndirect} behaves similarly to {@link GL42#glDrawArraysInstancedBaseInstance DrawArraysInstancedBaseInstance}, except that the parameters to
 * glDrawArraysInstancedBaseInstance are stored in memory at the address given by {@code indirect}.</p>
 * 
 * <p>The parameters addressed by {@code indirect} are packed into a structure that takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint first;
 * 	uint baseInstance; // must be 0 unless OpenGL 4.2 is supported
 * } DrawArraysIndirectCommand;
 * 
 * const DrawArraysIndirectCommand *cmd = (const DrawArraysIndirectCommand *)indirect;
 * glDrawArraysInstancedBaseInstance(mode, cmd->first, cmd->count, cmd->primCount, cmd->baseInstance);</code></pre></p>
 *
 * @param mode     what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link #GL_PATCHES PATCHES}
 * @param indirect a structure containing the draw parameters
 */
/** IntBuffer version of: {@link #glDrawArraysIndirect DrawArraysIndirect}  */
	static public function glDrawArraysIndirect(mode:Int,indirect:java.nio.IntBuffer):Void;
	@:overload(function (mode:Int,indirectOffset:haxe.Int64):Void {})
	@:overload(function (mode:Int,indirect:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glUniformMatrix2x4dv UniformMatrix2x4dv}  */
/** JNI method for {@link #glUniformMatrix2x4dv UniformMatrix2x4dv}  */
	static public function nglUniformMatrix2x4dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPatchParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies an array of float values for the specified parameter for patch primitives.
 *
 * @param pname  the name of the parameter to set. One of:<br>{@link #GL_PATCH_DEFAULT_OUTER_LEVEL PATCH_DEFAULT_OUTER_LEVEL}, {@link #GL_PATCH_DEFAULT_INNER_LEVEL PATCH_DEFAULT_INNER_LEVEL}
 * @param values an array containing the new values for the parameter given by {@code pname}
 */
/** Alternative version of: {@link #glPatchParameterfv PatchParameterfv}  */
	static public function glPatchParameterfv(pname:Int,values:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,values:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix3x4dv UniformMatrix3x4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix3x4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat3x4 uniform variable or a dmat3x4 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix3x4dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a dvec3 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glUniform3d(location:Int,x:Float,y:Float,z:Float):Void;
/** JNI method for {@link #glIsTransformFeedback IsTransformFeedback}  */
	static public function nglIsTransformFeedback(id:Int,__functionAddress:haxe.Int64):Bool;
/** Alternative version of: {@link #glUniform1dv Uniform1dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single double uniform variable or a double uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform1dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a dvec4 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glUniform4d(location:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Alternative version of: {@link #glUniformMatrix2dv UniformMatrix2dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat2 uniform variable or a dmat2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix2dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Single return value version of: {@link #glGetProgramStageiv GetProgramStageiv}  */
	static public function glGetProgramStagei(program:Int,shadertype:Int,pname:Int):Int;
/** JNI method for {@link #glPatchParameteri PatchParameteri}  */
	static public function nglPatchParameteri(pname:Int,value:Int,__functionAddress:haxe.Int64):Void;
/** String return (w/ implicit max length) version of: {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
/** String return version of: {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
/** Alternative version of: {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveSubroutineName.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the name of an active shader subroutine.
 *
 * @param program    the name of the program containing the subroutine
 * @param shadertype the shader stage from which to query the subroutine name. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param index      the index of the shader subroutine uniform
 * @param bufsize    the size of the buffer whose address is given in {@code name}
 * @param length     a variable which is to receive the length of the shader subroutine uniform name
 * @param name       an array into which the name of the shader subroutine uniform will be written
 */
	static public function glGetActiveSubroutineName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,bufsize:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,length:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetQueryIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns parameters of an indexed query object target.
 *
 * @param target a query object target. One of:<br>{@link GL15#GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param index  the index of the query object target
 * @param pname  the symbolic name of a query object target parameter
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryIndexediv GetQueryIndexediv}  */
	static public function glGetQueryIndexediv(target:Int,index:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glUniform4dv Uniform4dv}  */
/** JNI method for {@link #glUniform4dv Uniform4dv}  */
	static public function nglUniform4dv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
/** String return version of: {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
/** Alternative version of: {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveSubroutineUniformName.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the name of an active shader subroutine uniform.
 *
 * @param program    the name of the program containing the subroutine
 * @param shadertype the shader stage from which to query for the subroutine parameter. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param index      the index of the shader subroutine uniform
 * @param bufsize    the size of the buffer whose address is given in {@code name}
 * @param length     the address of a variable into which is written the number of characters copied into {@code name}
 * @param name       the address of a buffer that will receive the name of the specified shader subroutine uniform
 */
	static public function glGetActiveSubroutineUniformName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,bufsize:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,length:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetActiveSubroutineUniformiv GetActiveSubroutineUniformiv}  */
/** JNI method for {@link #glGetActiveSubroutineUniformiv GetActiveSubroutineUniformiv}  */
	static public function nglGetActiveSubroutineUniformiv(program:Int,shadertype:Int,index:Int,pname:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int,pname:Int,values:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsTransformFeedback.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a transform feedback object.
 *
 * @param id a value that may be the name of a transform feedback object
 */
	static public function glIsTransformFeedback(id:Int):Bool;
/** Unsafe version of {@link #glUniformMatrix4x3dv UniformMatrix4x3dv}  */
/** JNI method for {@link #glUniformMatrix4x3dv UniformMatrix4x3dv}  */
	static public function nglUniformMatrix4x3dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** CharSequence version of: {@link #glGetSubroutineIndex GetSubroutineIndex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetSubroutineIndex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the index of a subroutine function of a given shader stage within a program.
 *
 * @param program    the name of the program containing shader stage
 * @param shadertype the shader stage from which to query for subroutine function index. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param name       the name of the subroutine function whose index to query
 */
	static public function glGetSubroutineIndex(program:Int,shadertype:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,shadertype:Int,name:java.lang.CharSequence):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniformSubroutine.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the value of a subroutine uniform of a given shader stage of the current program.
 *
 * @param shadertype the shader stage from which to query for subroutine uniform index. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param location   the location of the subroutine uniform
 * @param params     a variable to receive the value or values of the subroutine uniform
 */
/** Alternative version of: {@link #glGetUniformSubroutineuiv GetUniformSubroutineuiv}  */
	static public function glGetUniformSubroutineuiv(shadertype:Int,location:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (shadertype:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetUniformdv GetUniformdv}  */
/** JNI method for {@link #glGetUniformdv GetUniformdv}  */
	static public function nglGetUniformdv(program:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix2dv UniformMatrix2dv}  */
/** JNI method for {@link #glUniformMatrix2dv UniformMatrix2dv}  */
	static public function nglUniformMatrix2dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawTransformFeedback.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Render primitives using a count derived from a transform feedback object.
 *
 * @param mode what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link #GL_PATCHES PATCHES}
 * @param id   the name of a transform feedback object from which to retrieve a primitive count
 */
	static public function glDrawTransformFeedback(mode:Int,id:Int):Void;
/** Unsafe version of {@link #glGetProgramStageiv GetProgramStageiv}  */
/** JNI method for {@link #glGetProgramStageiv GetProgramStageiv}  */
	static public function nglGetProgramStageiv(program:Int,shadertype:Int,pname:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,shadertype:Int,pname:Int,values:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix2x3dv UniformMatrix2x3dv}  */
/** JNI method for {@link #glUniformMatrix2x3dv UniformMatrix2x3dv}  */
	static public function nglUniformMatrix2x3dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glEndQueryIndexed EndQueryIndexed}  */
	static public function nglEndQueryIndexed(target:Int,index:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform1d Uniform1d}  */
	static public function nglUniform1d(location:Int,x:Float,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveSubroutineUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries a property of an active shader subroutine uniform.
 *
 * @param program    the name of the program containing the subroutine
 * @param shadertype the shader stage from which to query for the subroutine parameter. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param index      the index of the shader subroutine uniform
 * @param pname      the parameter of the shader subroutine uniform to query. One of:<br>{@link #GL_NUM_COMPATIBLE_SUBROUTINES NUM_COMPATIBLE_SUBROUTINES}, {@link #GL_COMPATIBLE_SUBROUTINES COMPATIBLE_SUBROUTINES}, {@link GL31#GL_UNIFORM_SIZE UNIFORM_SIZE}, {@link GL31#GL_UNIFORM_NAME_LENGTH UNIFORM_NAME_LENGTH}
 * @param values     the address of a buffer into which the queried value or values will be placed
 */
/** Alternative version of: {@link #glGetActiveSubroutineUniformiv GetActiveSubroutineUniformiv}  */
	static public function glGetActiveSubroutineUniformiv(program:Int,shadertype:Int,index:Int,pname:Int,values:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int,pname:Int,values:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1d.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a double uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glUniform1d(location:Int,x:Float):Void;
/** Alternative version of: {@link #glUniformMatrix2x3dv UniformMatrix2x3dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix2x3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dmat2x3 uniform variable or a dmat2x3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix2x3dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Single return value version of: {@link #glGetActiveSubroutineUniformiv GetActiveSubroutineUniformiv}  */
	static public function glGetActiveSubroutineUniformi(program:Int,shadertype:Int,index:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawTransformFeedbackStream.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders primitives using a count derived from a specifed stream of a transform feedback object.
 *
 * @param mode   what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link #GL_PATCHES PATCHES}
 * @param id     the name of a transform feedback object from which to retrieve a primitive count
 * @param stream the index of the transform feedback stream from which to retrieve a primitive count
 */
	static public function glDrawTransformFeedbackStream(mode:Int,id:Int,stream:Int):Void;
/** Alternative version of: {@link #glUniform4dv Uniform4dv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single dvec4 uniform variable or a dvec4 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform4dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/** Buffer object offset version of: {@link #glDrawElementsIndirect DrawElementsIndirect}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawElementsIndirect.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders indexed primitives from array data, taking parameters from memory.
 * 
 * <p>{@code glDrawElementsIndirect} behaves similarly to {@link GL42#glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}, execpt that the parameters to
 * glDrawElementsInstancedBaseVertexBaseInstance are stored in memory at the address given by {@code indirect}.</p>
 * 
 * <p>The parameters addressed by {@code indirect} are packed into a structure that takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint count;
 * 	uint primCount;
 * 	uint firstIndex;
 * 	uint baseVertex;
 * 	uint baseInstance;
 * } DrawElementsIndirectCommand;</code></pre></p>
 * 
 * <p>{@code glDrawElementsIndirect} is equivalent to:
 * <pre><code style="font-family: monospace">
 * void glDrawElementsIndirect(GLenum mode, GLenum type, const void *indirect) {
 * 	const DrawElementsIndirectCommand *cmd  = (const DrawElementsIndirectCommand *)indirect;
 * 	glDrawElementsInstancedBaseVertexBaseInstance(
 * 		mode,
 * 		cmd->count,
 * 		type,
 * 		cmd->firstIndex + size-of-type,
 * 		cmd->primCount,
 * 		cmd->baseVertex,
 * 		cmd->baseInstance
 * 	);
 * }</code></pre></p>
 *
 * @param mode     what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link #GL_PATCHES PATCHES}
 * @param type     the type of data in the buffer bound to the {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER} binding. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indirect the address of a structure containing the draw parameters
 */
/** IntBuffer version of: {@link #glDrawElementsIndirect DrawElementsIndirect}  */
	static public function glDrawElementsIndirect(mode:Int,type:Int,indirect:java.nio.IntBuffer):Void;
	@:overload(function (mode:Int,type:Int,indirectOffset:haxe.Int64):Void {})
	@:overload(function (mode:Int,type:Int,indirect:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glUniformSubroutinesuiv UniformSubroutinesuiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformSubroutines.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Loads active subroutine uniforms.
 *
 * @param shadertype the shader stage to update. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link #GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link #GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param count      the number of uniform indices stored in {@code indices}
 * @param indices    an array holding the indices to load into the shader subroutine variables
 */
	static public function glUniformSubroutinesuiv(shadertype:Int,count:Int,indices:java.nio.ByteBuffer):Void;
	@:overload(function (shadertype:Int,indices:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGenTransformFeedbacks GenTransformFeedbacks}  */
/** JNI method for {@link #glGenTransformFeedbacks GenTransformFeedbacks}  */
	static public function nglGenTransformFeedbacks(n:Int,ids:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,ids:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginQueryIndexed.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Ends a query object on an indexed target
 *
 * @param target the target type of query object to be concluded. One of:<br>{@link GL15#GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param index  the index of the query target upon which to end the query
 */
	static public function glEndQueryIndexed(target:Int,index:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindTransformFeedback.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a transform feedback object.
 *
 * @param target the target to which to bind the transform feedback object {@code id}. Must be:<br>{@link #GL_TRANSFORM_FEEDBACK TRANSFORM_FEEDBACK}
 * @param id     the name of a transform feedback object
 */
	static public function glBindTransformFeedback(target:Int,id:Int):Void;
/** Returns the {@link GL40} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL40;

}
