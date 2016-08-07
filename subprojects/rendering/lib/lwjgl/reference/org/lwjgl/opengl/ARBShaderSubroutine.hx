package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShaderSubroutine")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shader_subroutine.txt">ARB_shader_subroutine</a> extension.
 * 
 * <p>This extension adds support to shaders for "indirect subroutine calls", where a single shader can include many subroutines and dynamically select
 * through the API which subroutine is called from each call site. Switching subroutines dynamically in this fashion can avoid the cost of recompiling and
 * managing multiple shaders, while still retaining most of the performance of specialized shaders.</p>
 * 
 * <p>Requires {@link ARBGPUShader5 ARB_gpu_shader5}. Promoted to core in {@link GL40 OpenGL 4.0}.</p>
 */
extern class ARBShaderSubroutine 
{
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
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** String return (w/ implicit max length) version of: {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
/** String return version of: {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
/** Alternative version of: {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
/**
 * Queries the name of an active shader subroutine uniform.
 *
 * @param program    the name of the program containing the subroutine
 * @param shadertype the shader stage from which to query for the subroutine parameter. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param index      the index of the shader subroutine uniform
 * @param bufsize    the size of the buffer whose address is given in {@code name}
 * @param length     the address of a variable into which is written the number of characters copied into {@code name}
 * @param name       the address of a buffer that will receive the name of the specified shader subroutine uniform
 */
	static public function glGetActiveSubroutineUniformName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,bufsize:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,length:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetProgramStageiv GetProgramStageiv}  */
	static public function nglGetProgramStageiv(program:Int,shadertype:Int,pname:Int,values:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveSubroutineUniformiv GetActiveSubroutineUniformiv}  */
	static public function nglGetActiveSubroutineUniformiv(program:Int,shadertype:Int,index:Int,pname:Int,values:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveSubroutineUniformName GetActiveSubroutineUniformName}  */
	static public function nglGetActiveSubroutineUniformName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:haxe.Int64,name:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
	static public function nglGetActiveSubroutineName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:haxe.Int64,name:haxe.Int64):Void;
/** Unsafe version of {@link #glGetUniformSubroutineuiv GetUniformSubroutineuiv}  */
	static public function nglGetUniformSubroutineuiv(shadertype:Int,location:Int,params:haxe.Int64):Void;
/**
 * Queries a property of an active shader subroutine uniform.
 *
 * @param program    the name of the program containing the subroutine
 * @param shadertype the shader stage from which to query for the subroutine parameter. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param index      the index of the shader subroutine uniform
 * @param pname      the parameter of the shader subroutine uniform to query. One of:<br>{@link #GL_NUM_COMPATIBLE_SUBROUTINES NUM_COMPATIBLE_SUBROUTINES}, {@link #GL_COMPATIBLE_SUBROUTINES COMPATIBLE_SUBROUTINES}, {@link GL31#GL_UNIFORM_SIZE UNIFORM_SIZE}, {@link GL31#GL_UNIFORM_NAME_LENGTH UNIFORM_NAME_LENGTH}
 * @param values     the address of a buffer into which the queried value or values will be placed
 */
/** Alternative version of: {@link #glGetActiveSubroutineUniformiv GetActiveSubroutineUniformiv}  */
	static public function glGetActiveSubroutineUniformiv(program:Int,shadertype:Int,index:Int,pname:Int,values:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int,pname:Int,values:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetActiveSubroutineUniformiv GetActiveSubroutineUniformiv}  */
	static public function glGetActiveSubroutineUniformi(program:Int,shadertype:Int,index:Int,pname:Int):Int;
/** CharSequence version of: {@link #glGetSubroutineUniformLocation GetSubroutineUniformLocation}  */
/**
 * Retrieves the location of a subroutine uniform of a given shader stage within a program.
 *
 * @param program    the name of the program containing shader stage
 * @param shadertype the shader stage from which to query for subroutine uniform index. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param name       the name of the subroutine uniform whose index to query.
 */
	static public function glGetSubroutineUniformLocation(program:Int,shadertype:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,shadertype:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glGetSubroutineIndex GetSubroutineIndex}  */
	static public function nglGetSubroutineIndex(program:Int,shadertype:Int,name:haxe.Int64):Int;
/** Unsafe version of {@link #glUniformSubroutinesuiv UniformSubroutinesuiv}  */
	static public function nglUniformSubroutinesuiv(shadertype:Int,count:Int,indices:haxe.Int64):Void;
/** CharSequence version of: {@link #glGetSubroutineIndex GetSubroutineIndex}  */
/**
 * Retrieves the index of a subroutine function of a given shader stage within a program.
 *
 * @param program    the name of the program containing shader stage
 * @param shadertype the shader stage from which to query for subroutine function index. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param name       the name of the subroutine function whose index to query
 */
	static public function glGetSubroutineIndex(program:Int,shadertype:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,shadertype:Int,name:java.lang.CharSequence):Int {})
/** Alternative version of: {@link #glUniformSubroutinesuiv UniformSubroutinesuiv}  */
/**
 * Loads active subroutine uniforms.
 *
 * @param shadertype the shader stage to update. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param count      the number of uniform indices stored in {@code indices}
 * @param indices    an array holding the indices to load into the shader subroutine variables
 */
	static public function glUniformSubroutinesuiv(shadertype:Int,count:Int,indices:java.nio.ByteBuffer):Void;
	@:overload(function (shadertype:Int,indices:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetUniformSubroutineuiv GetUniformSubroutineuiv}  */
	static public function glGetUniformSubroutineui(shadertype:Int,location:Int):Int;
/** Single return value version of: {@link #glGetProgramStageiv GetProgramStageiv}  */
	static public function glGetProgramStagei(program:Int,shadertype:Int,pname:Int):Int;
/**
 * Retrieves the value of a subroutine uniform of a given shader stage of the current program.
 *
 * @param shadertype the shader stage from which to query for subroutine uniform index. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param location   the location of the subroutine uniform
 * @param params     a variable to receive the value or values of the subroutine uniform
 */
/** Alternative version of: {@link #glGetUniformSubroutineuiv GetUniformSubroutineuiv}  */
	static public function glGetUniformSubroutineuiv(shadertype:Int,location:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (shadertype:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Retrieves properties of a program object corresponding to a specified shader stage.
 *
 * @param program    the name of the program containing shader stage
 * @param shadertype the shader stage from which to query for the subroutine parameter. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param pname      the parameter of the shader to query. One of:<br>{@link #GL_ACTIVE_SUBROUTINES ACTIVE_SUBROUTINES}, {@link #GL_ACTIVE_SUBROUTINE_UNIFORMS ACTIVE_SUBROUTINE_UNIFORMS}, {@link #GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS}, {@link #GL_ACTIVE_SUBROUTINE_MAX_LENGTH ACTIVE_SUBROUTINE_MAX_LENGTH}, {@link #GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH}
 * @param values     a variable into which the queried value or values will be placed
 */
/** Alternative version of: {@link #glGetProgramStageiv GetProgramStageiv}  */
	static public function glGetProgramStageiv(program:Int,shadertype:Int,pname:Int,values:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,pname:Int,values:java.nio.ByteBuffer):Void {})
/** Single value version of: {@link #glUniformSubroutinesuiv UniformSubroutinesuiv}  */
	static public function glUniformSubroutinesui(shadertype:Int,index:Int):Void;
/** Returns the {@link ARBShaderSubroutine} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBShaderSubroutine;
/** Unsafe version of {@link #glGetSubroutineUniformLocation GetSubroutineUniformLocation}  */
	static public function nglGetSubroutineUniformLocation(program:Int,shadertype:Int,name:haxe.Int64):Int;
/** String return (w/ implicit max length) version of: {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
/** String return version of: {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
/** Alternative version of: {@link #glGetActiveSubroutineName GetActiveSubroutineName}  */
/**
 * Queries the name of an active shader subroutine.
 *
 * @param program    the name of the program containing the subroutine
 * @param shadertype the shader stage from which to query the subroutine name. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}, {@link GL32#GL_GEOMETRY_SHADER GEOMETRY_SHADER}, {@link GL40#GL_TESS_CONTROL_SHADER TESS_CONTROL_SHADER}, {@link GL40#GL_TESS_EVALUATION_SHADER TESS_EVALUATION_SHADER}
 * @param index      the index of the shader subroutine uniform
 * @param bufsize    the size of the buffer whose address is given in {@code name}
 * @param length     a variable which is to receive the length of the shader subroutine uniform name
 * @param name       an array into which the name of the shader subroutine uniform will be written
 */
	static public function glGetActiveSubroutineName(program:Int,shadertype:Int,index:Int,bufsize:Int,length:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,shadertype:Int,index:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,bufsize:Int):String {})
	@:overload(function (program:Int,shadertype:Int,index:Int,length:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})

}
