package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBSeparateShaderObjects")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/separate_shader_objects.txt">ARB_separate_shader_objects</a> extension.
 * 
 * <p>Conventional GLSL requires multiple shader stages (vertex, fragment, geometry, tessellation control, and tessellation evaluation) to be linked into a
 * single monolithic program object to specify a GLSL shader for each stage.</p>
 * 
 * <p>While GLSL's monolithic approach has some advantages for optimizing shaders as a unit that span multiple stages, all existing GPU hardware supports the
 * more flexible mix-and-match approach.</p>
 * 
 * <p>Shaders written for HLSL9, Cg, the prior OpenGL assembly program extensions, and game console favor a more flexible "mix-and-match" approach to
 * specifying shaders independently for these different shader stages. Many developers build their shader content around the mix-and-match approach where
 * they can use a single vertex shader with multiple fragment shaders (or vice versa).</p>
 * 
 * <p>This extension adopts a "mix-and-match" shader stage model for GLSL allowing multiple different GLSL program objects to be bound at once each to an
 * individual rendering pipeline stage independently of other stage bindings. This allows program objects to contain only the shader stages that best suit
 * the applications needs.</p>
 * 
 * <p>This extension introduces the program pipeline object that serves as a container for the program bound to any particular rendering stage. It can be
 * bound, unbound, and rebound to simply save and restore the complete shader stage to program object bindings. Like framebuffer and vertex array objects,
 * program pipeline objects are "container" objects that are not shared between contexts.</p>
 * 
 * <p>To bind a program object to a specific shader stage or set of stages, {@link #glUseProgramStages UseProgramStages} is used. The {@link #GL_VERTEX_SHADER_BIT VERTEX_SHADER_BIT}, {@link #GL_GEOMETRY_SHADER_BIT GEOMETRY_SHADER_BIT},
 * {@link #GL_FRAGMENT_SHADER_BIT FRAGMENT_SHADER_BIT}, {@link #GL_TESS_CONTROL_SHADER_BIT TESS_CONTROL_SHADER_BIT}, and {@link #GL_TESS_EVALUATION_SHADER_BIT TESS_EVALUATION_SHADER_BIT} tokens refer to the conventional vertex, geometry, fragment,
 * tessellation control and tessellation evaluation stages respectively. {@link #glActiveShaderProgram ActiveShaderProgram} specifies the program that Uniform* commands will update.</p>
 * 
 * <p>While {@link #glActiveShaderProgram ActiveShaderProgram} allows the use of conventional Uniform* commands to update uniform variable values for separable program objects, this
 * extension provides a preferrable interface in a set of ProgramUniform* commands that update the same uniform variables but take a parameter indicating
 * the program object to be updated, rather than updating the currently active program object. These commands mirror those introduced in
 * <a href="http://www.opengl.org/registry/specs/EXT/direct_state_access.txt">EXT_direct_state_access</a>.</p>
 * 
 * <p>While {@link #glActiveShaderProgram ActiveShaderProgram} provides a selector for setting and querying uniform values of a program object, the glProgramUniform* commands provide a
 * selector-free way to modify uniforms of a GLSL program object without an explicit bind. This selector-free model reduces API overhead and provides a
 * cleaner interface for applications.</p>
 * 
 * <p>Separate linking creates the possibility that certain output varyings of a shader may go unread by the subsequent shader inputting varyings. In this
 * case, the output varyings are simply ignored. It is also possible input varyings from a shader may not be written as output varyings of a preceding
 * shader. In this case, the unwritten input varying values are undefined.</p>
 * 
 * <p>This extension builds on the proof-of-concept provided by <a href="http://www.opengl.org/registry/specs/EXT/separate_shader_objects.txt">EXT_separate_shader_objects</a> which demonstrated that separate shader
 * objects can work for GLSL. EXT_separate_shader_objects was a response to repeated requests for this functionality from 3D developers.</p>
 * 
 * <p>This ARB version addresses several "loose ends" in the prior EXT extension. In particular, it allows user-defined varyings with explicitly defined
 * locations or implicitly assigned locations.</p>
 * 
 * <p>This ARB extension extends the GLSL language's use of layout qualifiers to provide cross-stage interfacing.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0} or {@link ARBShaderObjects ARB_shader_objects}. Promoted to core in {@link GL41 OpenGL 4.1}.</p>
 */
extern class ARBSeparateShaderObjects 
{
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_VERTEX_SHADER_BIT:Int = 1;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_FRAGMENT_SHADER_BIT:Int = 2;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_GEOMETRY_SHADER_BIT:Int = 4;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_TESS_CONTROL_SHADER_BIT:Int = 8;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_TESS_EVALUATION_SHADER_BIT:Int = 16;
/** Accepted by {@code stages} parameter to UseProgramStages.  */
	inline static public var GL_ALL_SHADER_BITS:Int = -1;
/** Accepted by the {@code pname} parameter of ProgramParameteri and GetProgramiv.  */
	inline static public var GL_PROGRAM_SEPARABLE:Int = 33368;
/** Accepted by {@code type} parameter to GetProgramPipelineiv.  */
	inline static public var GL_ACTIVE_PROGRAM:Int = 33369;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_PROGRAM_PIPELINE_BINDING:Int = 33370;
/** Function address.  */
	public var UseProgramStages:haxe.Int64;
/** Function address.  */
	public var ActiveShaderProgram:haxe.Int64;
/** Function address.  */
	public var CreateShaderProgramv:haxe.Int64;
/** Function address.  */
	public var BindProgramPipeline:haxe.Int64;
/** Function address.  */
	public var DeleteProgramPipelines:haxe.Int64;
/** Function address.  */
	public var GenProgramPipelines:haxe.Int64;
/** Function address.  */
	public var IsProgramPipeline:haxe.Int64;
/** Function address.  */
	public var ProgramParameteri:haxe.Int64;
/** Function address.  */
	public var GetProgramPipelineiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4i:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4ui:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4f:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4d:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4iv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4uiv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x2fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x4fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x3fv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x3dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x2dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x4dv:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x3dv:haxe.Int64;
/** Function address.  */
	public var ValidateProgramPipeline:haxe.Int64;
/** Function address.  */
	public var GetProgramPipelineInfoLog:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #glProgramUniform3fv ProgramUniform3fv}  */
/**
 * Specifies the value of a single vec3 uniform variable or a vec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform2dv ProgramUniform2dv}  */
/**
 * Specifies the value of a single dvec2 uniform variable or a dvec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x4dv ProgramUniformMatrix2x4dv}  */
	static public function nglProgramUniformMatrix2x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2x4dv ProgramUniformMatrix2x4dv}  */
/**
 * Specifies the value of a single dmat2x4 uniform variable or a dmat2x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform1uiv ProgramUniform1uiv}  */
	static public function nglProgramUniform1uiv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2fv ProgramUniformMatrix2fv}  */
/**
 * Specifies the value of a single mat2 uniform variable or a mat2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix3x2dv ProgramUniformMatrix3x2dv}  */
/**
 * Specifies the value of a single dmat3x2 uniform variable or a dmat3x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
 * Specifies the value of a uvec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2ui(program:Int,location:Int,x:Int,y:Int):Void;
/** Alternative version of: {@link #glProgramUniform4iv ProgramUniform4iv}  */
/**
 * Specifies the value of a single ivec4 uniform variable or a ivec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform1iv ProgramUniform1iv}  */
	static public function nglProgramUniform1iv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix2fv ProgramUniformMatrix2fv}  */
	static public function nglProgramUniformMatrix2fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniform3uiv ProgramUniform3uiv}  */
/**
 * Specifies the value of a single uvec3 uniform variable or a uvec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/**
 * Specifies the value of a double uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1d(program:Int,location:Int,x:Float):Void;
/**
 * Binds stages of a program object to a program pipeline.
 *
 * @param pipeline the program pipeline object to which to bind stages from {@code program}
 * @param stages   a set of program stages to bind to the program pipeline object
 * @param program  the program object containing the shader executables to use in {@code pipeline}
 */
	static public function glUseProgramStages(pipeline:Int,stages:Int,program:Int):Void;
/**
 * Specifies the value of a float uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1f(program:Int,location:Int,x:Float):Void;
/**
 * Specifies the value of an int uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1i(program:Int,location:Int,x:Int):Void;
/** Unsafe version of {@link #glProgramUniform4uiv ProgramUniform4uiv}  */
	static public function nglProgramUniform4uiv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform4fv ProgramUniform4fv}  */
	static public function nglProgramUniform4fv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform3dv ProgramUniform3dv}  */
	static public function nglProgramUniform3dv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3x2dv ProgramUniformMatrix3x2dv}  */
	static public function nglProgramUniformMatrix3x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glGetProgramPipelineiv GetProgramPipelineiv}  */
	static public function nglGetProgramPipelineiv(pipeline:Int,pname:Int,params:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniform4fv ProgramUniform4fv}  */
/**
 * Specifies the value of a single vec4 uniform variable or a vec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x4fv ProgramUniformMatrix2x4fv}  */
	static public function nglProgramUniformMatrix2x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix2x3dv ProgramUniformMatrix2x3dv}  */
	static public function nglProgramUniformMatrix2x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform1fv ProgramUniform1fv}  */
	static public function nglProgramUniform1fv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform3uiv ProgramUniform3uiv}  */
	static public function nglProgramUniform3uiv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
	static public function nglGetProgramPipelineInfoLog(pipeline:Int,bufSize:Int,length:haxe.Int64,infoLog:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix4dv ProgramUniformMatrix4dv}  */
	static public function nglProgramUniformMatrix4dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3fv ProgramUniformMatrix3fv}  */
/**
 * Specifies the value of a single mat3 uniform variable or a mat3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix2dv ProgramUniformMatrix2dv}  */
/**
 * Specifies the value of a single dmat2 uniform variable or a dmat2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
 * Specifies the value of a uvec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3ui(program:Int,location:Int,x:Int,y:Int,z:Int):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x4fv ProgramUniformMatrix3x4fv}  */
/**
 * Specifies the value of a single mat3x4 uniform variable or a mat3x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform3dv ProgramUniform3dv}  */
/**
 * Specifies the value of a single dvec3 uniform variable or a dvec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/**
 * Validates a program pipeline object against current GL state.
 *
 * @param pipeline the name of a program pipeline object to validate
 */
	static public function glValidateProgramPipeline(pipeline:Int):Void;
/**
 * Retrieves properties of a program pipeline object.
 *
 * @param pipeline the name of a program pipeline object whose parameter retrieve
 * @param pname    the name of the parameter to retrieve. One of:<br>{@link #GL_ACTIVE_PROGRAM ACTIVE_PROGRAM}, {@link GL20#GL_INFO_LOG_LENGTH INFO_LOG_LENGTH}, {@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param params   a variable into which will be written the value or values of {@code pname} for {@code pipeline}
 */
/** Alternative version of: {@link #glGetProgramPipelineiv GetProgramPipelineiv}  */
	static public function glGetProgramPipelineiv(pipeline:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (pipeline:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform2iv ProgramUniform2iv}  */
	static public function nglProgramUniform2iv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniform1iv ProgramUniform1iv}  */
/**
 * Specifies the value of a single float uniform variable or a float uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4x3dv ProgramUniformMatrix4x3dv}  */
	static public function nglProgramUniformMatrix4x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix4x2fv ProgramUniformMatrix4x2fv}  */
/**
 * Specifies the value of a single mat4x2 uniform variable or a mat4x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform1uiv ProgramUniform1uiv}  */
/**
 * Specifies the value of a single uint uniform variable or a uint uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform4dv ProgramUniform4dv}  */
	static public function nglProgramUniform4dv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/**
 * Determines if a name corresponds to a program pipeline object.
 *
 * @param pipeline a value that may be the name of a program pipeline object
 */
	static public function glIsProgramPipeline(pipeline:Int):Bool;
/** Unsafe version of {@link #glProgramUniformMatrix3x2fv ProgramUniformMatrix3x2fv}  */
	static public function nglProgramUniformMatrix3x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2x3fv ProgramUniformMatrix2x3fv}  */
/**
 * Specifies the value of a single mat2x3 uniform variable or a mat2x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x3fv ProgramUniformMatrix2x3fv}  */
	static public function nglProgramUniformMatrix2x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/**
 * Binds a program pipeline to the current context.
 *
 * @param pipeline the name of the pipeline object to bind to the context
 */
	static public function glBindProgramPipeline(pipeline:Int):Void;
/** Alternative version of: {@link #glProgramUniform1fv ProgramUniform1fv}  */
/**
 * Specifies the value of a single float uniform variable or a float uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform2fv ProgramUniform2fv}  */
	static public function nglProgramUniform2fv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniform4uiv ProgramUniform4uiv}  */
/**
 * Specifies the value of a single uvec4 uniform variable or a uvec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/**
 * Specifies the value of an ivec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4i(program:Int,location:Int,x:Int,y:Int,z:Int,w:Int):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3dv ProgramUniformMatrix3dv}  */
	static public function nglProgramUniformMatrix3dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Single string version of: {@link #glCreateShaderProgramv CreateShaderProgramv}  */
/** Array version of: {@link #glCreateShaderProgramv CreateShaderProgramv}  */
/** Alternative version of: {@link #glCreateShaderProgramv CreateShaderProgramv}  */
/**
 * Creates a stand-alone program from an array of null-terminated source code strings.
 * 
 * <p>{@code glCreateShaderProgram} is equivalent (assuming no errors are generated) to:
 * <pre><code style="font-family: monospace">
 * const GLuint shader = glCreateShader(type);
 * if (shader) {
 * 	glShaderSource(shader, count, strings, NULL);
 * 	glCompileShader(shader);
 * 	const GLuint program = glCreateProgram();
 * 	if (program) {
 * 		GLint compiled = GL_FALSE;
 * 		glGetShaderiv(shader, GL_COMPILE_STATUS, &compiled);
 * 		glProgramParameteri(program, GL_PROGRAM_SEPARABLE, GL_TRUE);
 * 		if (compiled) {
 * 			glAttachShader(program, shader);
 * 			glLinkProgram(program);
 * 			glDetachShader(program, shader);
 * 		}
 * 		// append-shader-info-log-to-program-info-log
 * 	}
 * 	glDeleteShader(shader);
 * 	return program;
 * } else {
 * 	return 0;
 * }</code></pre>
 * The program object created by glCreateShaderProgram has its GL_PROGRAM_SEPARABLE status set to GL_TRUE.</p>
 *
 * @param type    the type of shader to create
 * @param count   the number of source code strings in the array {@code strings}
 * @param strings an array of pointers to source code strings from which to create the program object
 */
	static public function glCreateShaderProgramv(type:Int,count:Int,strings:java.nio.ByteBuffer):Int;
	@:overload(function (type:Int,string:java.lang.CharSequence):Int {})
	@:overload(function (type:Int,strings:java.NativeArray<java.lang.CharSequence>):Int {})
	@:overload(function (type:Int,strings:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #glProgramUniformMatrix4fv ProgramUniformMatrix4fv}  */
	static public function nglProgramUniformMatrix4fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3dv ProgramUniformMatrix3dv}  */
/**
 * Specifies the value of a single dmat3 uniform variable or a dmat3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4fv ProgramUniformMatrix4fv}  */
/**
 * Specifies the value of a single mat4 uniform variable or a mat4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * Specifies the value of a dvec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4d(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * Specifies the value of a uvec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4ui(program:Int,location:Int,x:Int,y:Int,z:Int,w:Int):Void;
/**
 * Specifies the value of a vec4 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4f(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x4dv ProgramUniformMatrix3x4dv}  */
/**
 * Specifies the value of a single dmat3x4 uniform variable or a dmat3x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glDeleteProgramPipelines DeleteProgramPipelines}  */
	static public function nglDeleteProgramPipelines(n:Int,pipelines:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniform4dv ProgramUniform4dv}  */
/**
 * Specifies the value of a single dvec4 uniform variable or a dvec4 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform2iv ProgramUniform2iv}  */
/**
 * Specifies the value of a single ivec2 uniform variable or a ivec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform3iv ProgramUniform3iv}  */
	static public function nglProgramUniform3iv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix4x2dv ProgramUniformMatrix4x2dv}  */
	static public function nglProgramUniformMatrix4x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix4x2dv ProgramUniformMatrix4x2dv}  */
/**
 * Specifies the value of a single dmat4x2 uniform variable or a dmat4x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x2dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x3fv ProgramUniformMatrix4x3fv}  */
/**
 * Specifies the value of a single mat4x3 uniform variable or a mat4x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * Specifies the integer value of a program object parameter.
 *
 * @param program the name of a program object whose parameter to modify
 * @param pname   the name of the parameter to modify. One of:<br>{@link GL41#GL_PROGRAM_BINARY_RETRIEVABLE_HINT PROGRAM_BINARY_RETRIEVABLE_HINT}, {@link #GL_PROGRAM_SEPARABLE PROGRAM_SEPARABLE}
 * @param value   the new value of the parameter specified by {@code pname} for {@code program}
 */
	static public function glProgramParameteri(program:Int,pname:Int,value:Int):Void;
/**
 * Sets the active program object for a program pipeline object.
 *
 * @param pipeline the program pipeline object to set the active program object for
 * @param program  the program object to set as the active program pipeline object {@code pipeline}
 */
	static public function glActiveShaderProgram(pipeline:Int,program:Int):Void;
/** Unsafe version of {@link #glProgramUniformMatrix4x3fv ProgramUniformMatrix4x3fv}  */
	static public function nglProgramUniformMatrix4x3fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glGenProgramPipelines GenProgramPipelines}  */
	static public function nglGenProgramPipelines(n:Int,pipelines:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform1dv ProgramUniform1dv}  */
	static public function nglProgramUniform1dv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3x4dv ProgramUniformMatrix3x4dv}  */
	static public function nglProgramUniformMatrix3x4dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniform1dv ProgramUniform1dv}  */
/**
 * Specifies the value of a single double uniform variable or a double uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1dv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform2fv ProgramUniform2fv}  */
/**
 * Specifies the value of a single vec2 uniform variable or a vec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2fv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4dv ProgramUniformMatrix4dv}  */
/**
 * Specifies the value of a single dmat4 uniform variable or a dmat4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform2uiv ProgramUniform2uiv}  */
/**
 * Specifies the value of a single uvec2 uniform variable or a uvec2 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2uiv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Single value version of: {@link #glDeleteProgramPipelines DeleteProgramPipelines}  */
/** Alternative version of: {@link #glDeleteProgramPipelines DeleteProgramPipelines}  */
/**
 * Deletes program pipeline objects.
 *
 * @param n         the number of program pipeline objects to delete
 * @param pipelines an array of names of program pipeline objects to delete
 */
	static public function glDeleteProgramPipelines(n:Int,pipelines:java.nio.ByteBuffer):Void;
	@:overload(function (pipeline:Int):Void {})
	@:overload(function (pipelines:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix2x3dv ProgramUniformMatrix2x3dv}  */
/**
 * Specifies the value of a single dmat2x3 uniform variable or a dmat2x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix2x4fv ProgramUniformMatrix2x4fv}  */
/**
 * Specifies the value of a single mat2x4 uniform variable or a mat2x4 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * Specifies the value of a vec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2f(program:Int,location:Int,x:Float,y:Float):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x2fv ProgramUniformMatrix3x2fv}  */
/**
 * Specifies the value of a single mat3x2 uniform variable or a mat3x2 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * Specifies the value of an ivec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2i(program:Int,location:Int,x:Int,y:Int):Void;
/** Unsafe version of {@link #glProgramUniformMatrix2dv ProgramUniformMatrix2dv}  */
	static public function nglProgramUniformMatrix2dv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glCreateShaderProgramv CreateShaderProgramv}  */
	static public function nglCreateShaderProgramv(type:Int,count:Int,strings:haxe.Int64):Int;
/**
 * Specifies the value of a uint uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1ui(program:Int,location:Int,x:Int):Void;
/**
 * Specifies the value of a dvec2 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2d(program:Int,location:Int,x:Float,y:Float):Void;
/** Alternative version of: {@link #glProgramUniform3iv ProgramUniform3iv}  */
/**
 * Specifies the value of a single ivec3 uniform variable or a ivec3 uniform variable array for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3iv(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glProgramUniform4iv ProgramUniform4iv}  */
	static public function nglProgramUniform4iv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix3fv ProgramUniformMatrix3fv}  */
	static public function nglProgramUniformMatrix3fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix4x3dv ProgramUniformMatrix4x3dv}  */
/**
 * Specifies the value of a single dmat4x3 uniform variable or a dmat4x3 uniform variable array for the current program object.
 *
 * @param program   the handle of the program containing the uniform variable to be modified
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x3dv(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4x2fv ProgramUniformMatrix4x2fv}  */
	static public function nglProgramUniformMatrix4x2fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform2uiv ProgramUniform2uiv}  */
	static public function nglProgramUniform2uiv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** String return (w/ implicit max length) version of: {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
/** String return version of: {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
/** Alternative version of: {@link #glGetProgramPipelineInfoLog GetProgramPipelineInfoLog}  */
/**
 * Retrieves the info log string from a program pipeline object.
 *
 * @param pipeline the name of a program pipeline object from which to retrieve the info log
 * @param bufSize  the maximum number of characters, including the null terminator, that may be written into {@code infoLog}
 * @param length   a variable into which will be written the number of characters written into {@code infoLog}
 * @param infoLog  an array of characters into which will be written the info log for {@code pipeline}
 */
	static public function glGetProgramPipelineInfoLog(pipeline:Int,bufSize:Int,length:java.nio.ByteBuffer,infoLog:java.nio.ByteBuffer):Void;
	@:overload(function (pipeline:Int):String {})
	@:overload(function (pipeline:Int,bufSize:Int):String {})
	@:overload(function (pipeline:Int,length:java.nio.IntBuffer,infoLog:java.nio.ByteBuffer):Void {})
/**
 * Specifies the value of a vec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3f(program:Int,location:Int,x:Float,y:Float,z:Float):Void;
/**
 * Specifies the value of an ivec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3i(program:Int,location:Int,x:Int,y:Int,z:Int):Void;
/** Single return value version of: {@link #glGetProgramPipelineiv GetProgramPipelineiv}  */
	static public function glGetProgramPipelinei(pipeline:Int,pname:Int):Int;
/** Unsafe version of {@link #glProgramUniform3fv ProgramUniform3fv}  */
	static public function nglProgramUniform3fv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform2dv ProgramUniform2dv}  */
	static public function nglProgramUniform2dv(program:Int,location:Int,count:Int,value:haxe.Int64):Void;
/** Returns the {@link ARBSeparateShaderObjects} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBSeparateShaderObjects;
/** Unsafe version of {@link #glProgramUniformMatrix3x4fv ProgramUniformMatrix3x4fv}  */
	static public function nglProgramUniformMatrix3x4fv(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Single return value version of: {@link #glGenProgramPipelines GenProgramPipelines}  */
/** Alternative version of: {@link #glGenProgramPipelines GenProgramPipelines}  */
/**
 * Reserves program pipeline object names.
 *
 * @param n         the number of program pipeline object names to reserve
 * @param pipelines an array of into which the reserved names will be written
 */
	static public function glGenProgramPipelines(n:Int,pipelines:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (pipelines:java.nio.IntBuffer):Void {})
/**
 * Specifies the value of a dvec3 uniform variable for a specified program object.
 *
 * @param program  the handle of the program containing the uniform variable to be modified
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3d(program:Int,location:Int,x:Float,y:Float,z:Float):Void;

}
