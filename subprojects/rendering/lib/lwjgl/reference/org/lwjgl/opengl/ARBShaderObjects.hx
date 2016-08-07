package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShaderObjects")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shader_objects.txt">ARB_shader_objects</a> extension.
 * 
 * <p>This extension adds API calls that are necessary to manage shader objects and program objects as defined in the OpenGL 2.0 white papers by 3Dlabs.</p>
 * 
 * <p>The generation of an executable that runs on one of OpenGL's programmable units is modeled to that of developing a typical C/C++ application. There are
 * one or more source files, each of which are stored by OpenGL in a shader object. Each shader object (source file) needs to be compiled and attached to a
 * program object. Once all shader objects are compiled successfully, the program object needs to be linked to produce an executable. This executable is
 * part of the program object, and can now be loaded onto the programmable units to make it part of the current OpenGL state. Both the compile and link
 * stages generate a text string that can be queried to get more information. This information could be, but is not limited to, compile errors, link errors,
 * optimization hints, etc. Values for uniform variables, declared in a shader, can be set by the application and used to control a shader's behavior.</p>
 * 
 * <p>This extension defines functions for creating shader objects and program objects, for compiling shader objects, for linking program objects, for
 * attaching shader objects to program objects, and for using a program object as part of current state. Functions to load uniform values are also defined.
 * Some house keeping functions, like deleting an object and querying object state, are also provided.</p>
 * 
 * <p>Although this extension defines the API for creating shader objects, it does not define any specific types of shader objects. It is assumed that this
 * extension will be implemented along with at least one such additional extension for creating a specific type of OpenGL 2.0 shader (e.g., the
 * {@link ARBFragmentShader ARB_fragment_shader} extension or the {@link ARBVertexShader ARB_vertex_shader} extension).</p>
 * 
 * <p>Promoted to core in {@link GL20 OpenGL 2.0}.</p>
 */
extern class ARBShaderObjects 
{
/** Accepted by the {@code pname} argument of GetHandleARB.  */
	inline static public var GL_PROGRAM_OBJECT_ARB:Int = 35648;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_TYPE_ARB:Int = 35662;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_SUBTYPE_ARB:Int = 35663;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_DELETE_STATUS_ARB:Int = 35712;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_COMPILE_STATUS_ARB:Int = 35713;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_LINK_STATUS_ARB:Int = 35714;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_VALIDATE_STATUS_ARB:Int = 35715;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_INFO_LOG_LENGTH_ARB:Int = 35716;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_ATTACHED_OBJECTS_ARB:Int = 35717;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_ACTIVE_UNIFORMS_ARB:Int = 35718;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB:Int = 35719;
/** Accepted by the {@code pname} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_OBJECT_SHADER_SOURCE_LENGTH_ARB:Int = 35720;
/** Returned by the {@code params} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_SHADER_OBJECT_ARB:Int = 35656;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_FLOAT:Int = 5126;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_FLOAT_VEC2_ARB:Int = 35664;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_FLOAT_VEC3_ARB:Int = 35665;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_FLOAT_VEC4_ARB:Int = 35666;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_INT:Int = 5124;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_INT_VEC2_ARB:Int = 35667;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_INT_VEC3_ARB:Int = 35668;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_INT_VEC4_ARB:Int = 35669;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_BOOL_ARB:Int = 35670;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_BOOL_VEC2_ARB:Int = 35671;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_BOOL_VEC3_ARB:Int = 35672;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_BOOL_VEC4_ARB:Int = 35673;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_FLOAT_MAT2_ARB:Int = 35674;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_FLOAT_MAT3_ARB:Int = 35675;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_FLOAT_MAT4_ARB:Int = 35676;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_1D_ARB:Int = 35677;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_2D_ARB:Int = 35678;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_3D_ARB:Int = 35679;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_CUBE_ARB:Int = 35680;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_1D_SHADOW_ARB:Int = 35681;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_2D_SHADOW_ARB:Int = 35682;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_2D_RECT_ARB:Int = 35683;
/** Returned by the {@code type} parameter of GetActiveUniformARB.  */
	inline static public var GL_SAMPLER_2D_RECT_SHADOW_ARB:Int = 35684;
/** Function address.  */
	public var DeleteObjectARB:haxe.Int64;
/** Function address.  */
	public var GetHandleARB:haxe.Int64;
/** Function address.  */
	public var DetachObjectARB:haxe.Int64;
/** Function address.  */
	public var CreateShaderObjectARB:haxe.Int64;
/** Function address.  */
	public var ShaderSourceARB:haxe.Int64;
/** Function address.  */
	public var CompileShaderARB:haxe.Int64;
/** Function address.  */
	public var CreateProgramObjectARB:haxe.Int64;
/** Function address.  */
	public var AttachObjectARB:haxe.Int64;
/** Function address.  */
	public var LinkProgramARB:haxe.Int64;
/** Function address.  */
	public var UseProgramObjectARB:haxe.Int64;
/** Function address.  */
	public var ValidateProgramARB:haxe.Int64;
/** Function address.  */
	public var Uniform1fARB:haxe.Int64;
/** Function address.  */
	public var Uniform2fARB:haxe.Int64;
/** Function address.  */
	public var Uniform3fARB:haxe.Int64;
/** Function address.  */
	public var Uniform4fARB:haxe.Int64;
/** Function address.  */
	public var Uniform1iARB:haxe.Int64;
/** Function address.  */
	public var Uniform2iARB:haxe.Int64;
/** Function address.  */
	public var Uniform3iARB:haxe.Int64;
/** Function address.  */
	public var Uniform4iARB:haxe.Int64;
/** Function address.  */
	public var Uniform1fvARB:haxe.Int64;
/** Function address.  */
	public var Uniform2fvARB:haxe.Int64;
/** Function address.  */
	public var Uniform3fvARB:haxe.Int64;
/** Function address.  */
	public var Uniform4fvARB:haxe.Int64;
/** Function address.  */
	public var Uniform1ivARB:haxe.Int64;
/** Function address.  */
	public var Uniform2ivARB:haxe.Int64;
/** Function address.  */
	public var Uniform3ivARB:haxe.Int64;
/** Function address.  */
	public var Uniform4ivARB:haxe.Int64;
/** Function address.  */
	public var UniformMatrix2fvARB:haxe.Int64;
/** Function address.  */
	public var UniformMatrix3fvARB:haxe.Int64;
/** Function address.  */
	public var UniformMatrix4fvARB:haxe.Int64;
/** Function address.  */
	public var GetObjectParameterfvARB:haxe.Int64;
/** Function address.  */
	public var GetObjectParameterivARB:haxe.Int64;
/** Function address.  */
	public var GetInfoLogARB:haxe.Int64;
/** Function address.  */
	public var GetAttachedObjectsARB:haxe.Int64;
/** Function address.  */
	public var GetUniformLocationARB:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformARB:haxe.Int64;
/** Function address.  */
	public var GetUniformfvARB:haxe.Int64;
/** Function address.  */
	public var GetUniformivARB:haxe.Int64;
/** Function address.  */
	public var GetShaderSourceARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Validates the program object {@code programObj} against the GL state at that moment. Each program object has a Boolean status,
 * {@link #GL_OBJECT_VALIDATE_STATUS_ARB OBJECT_VALIDATE_STATUS_ARB}, that is modified as a result of validation. This status can be queried with {@link #glGetObjectParameteriARB GetObjectParameteriARB}. If validation
 * succeeded this status will be set to {@link GL11#GL_TRUE TRUE}, otherwise it will be set to {@link GL11#GL_FALSE FALSE}. If validation succeeded the program object is guaranteed to
 * execute, given the current GL state. If validation failed, the program object is guaranteed to not execute, given the current GL state. If
 * {@code programObj} is not of type {@link #GL_PROGRAM_OBJECT_ARB PROGRAM_OBJECT_ARB}, the error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated.
 * 
 * <p>ValidateProgramARB will validate at least as much as is done when a rendering command is issued, and it could validate more. For example, it could give
 * a hint on how to optimize some piece of shader code.</p>
 * 
 * <p>ValidateProgramARB will store its information in the info log. This information will either be an empty string or it will contain validation information.</p>
 * 
 * <p>ValidateProgramARB is typically only useful during application development. An application should not expect different OpenGL implementations to produce
 * identical information.</p>
 *
 * @param programObj the program object to validate
 */
	static public function glValidateProgramARB(programObj:Int):Void;
/** JNI method for {@link #glUniform1fARB Uniform1fARB}  */
	static public function nglUniform1fARB(location:Int,v0:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glShaderSourceARB ShaderSourceARB}  */
/** JNI method for {@link #glShaderSourceARB ShaderSourceARB}  */
	static public function nglShaderSourceARB(shaderObj:Int,count:Int,string:haxe.Int64,length:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (shaderObj:Int,count:Int,string:haxe.Int64,length:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetObjectParameterivARB GetObjectParameterivARB}  */
/** JNI method for {@link #glGetObjectParameterivARB GetObjectParameterivARB}  */
	static public function nglGetObjectParameterivARB(obj:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (obj:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glUseProgramObjectARB UseProgramObjectARB}  */
	static public function nglUseProgramObjectARB(programObj:Int,__functionAddress:haxe.Int64):Void;
/**
 * Links a program object.
 * 
 * <p>Each program object has a Boolean status, {@link #GL_OBJECT_LINK_STATUS_ARB OBJECT_LINK_STATUS_ARB}, that is modified as a result of linking. This status can be queried with
 * {@link #glGetObjectParameteriARB GetObjectParameteriARB}. This status will be set to {@link GL11#GL_TRUE TRUE} if a valid executable is created, and {@link GL11#GL_FALSE FALSE} otherwise. Linking can fail for a
 * variety of reasons as specified in the OpenGL Shading Language Specification. Linking will also fail if one or more of the shader objects, attached to
 * {@code programObj}, are not compiled successfully, or if more active uniform or active sampler variables are used in {@code programObj} than allowed.
 * If LinkProgramARB failed, any information about a previous link is lost and is not restored. Thus a failed link does not restore the old state of
 * {@code programObj}. If {@code programObj} is not of type {@link #GL_PROGRAM_OBJECT_ARB PROGRAM_OBJECT_ARB}, the error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated.</p>
 * 
 * <p>Each program object has an information log that is modified as a result of a link operation. This information log can be queried with {@link #glGetInfoLogARB GetInfoLogARB}
 * to obtain more information about the link operation.</p>
 *
 * @param programObj the program object to link
 */
	static public function glLinkProgramARB(programObj:Int):Void;
/** Single return value version of: {@link #glGetUniformfvARB GetUniformfvARB}  */
	static public function glGetUniformfARB(programObj:Int,location:Int):Float;
/** String return (w/ implicit max length) version of: {@link #glGetInfoLogARB GetInfoLogARB}  */
/** String return version of: {@link #glGetInfoLogARB GetInfoLogARB}  */
/** Alternative version of: {@link #glGetInfoLogARB GetInfoLogARB}  */
/**
 * A string that contains information about the last link or validation attempt and last compilation attempt are kept per program or shader object. This
 * string is called the info log and can be obtained with this command.
 * 
 * <p>This string will be null terminated. The number of characters in the info log is given by {@link #GL_OBJECT_INFO_LOG_LENGTH_ARB OBJECT_INFO_LOG_LENGTH_ARB}, which can be queried with
 * {@link #glGetObjectParameteriARB GetObjectParameteriARB}. If {@code obj} is a shader object, the returned info log will either be an empty string or it will contain
 * information about the last compilation attempt for that object. If {@code obj} is a program object, the returned info log will either be an empty string
 * or it will contain information about the last link attempt or last validation attempt for that object. If {@code obj} is not of type {@link #GL_PROGRAM_OBJECT_ARB PROGRAM_OBJECT_ARB}
 * or {@link #GL_SHADER_OBJECT_ARB SHADER_OBJECT_ARB}, the error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated. If an error occurred, the return parameters {@code length} and {@code infoLog}
 * will be unmodified.</p>
 * 
 * <p>The info log is typically only useful during application development and an application should not expect different OpenGL implementations to produce
 * identical info logs.</p>
 *
 * @param obj       the shader object to query
 * @param maxLength the maximum number of characters the GL is allowed to write into {@code infoLog}
 * @param length    the actual number of characters written by the GL into {@code infoLog} is returned in {@code length}, excluding the null termination. If
 *                  {@code length} is {@code NULL} then the GL ignores this parameter.
 * @param infoLog   a buffer in which to return the info log
 */
	static public function glGetInfoLogARB(obj:Int,maxLength:Int,length:java.nio.ByteBuffer,infoLog:java.nio.ByteBuffer):Void;
	@:overload(function (obj:Int):String {})
	@:overload(function (obj:Int,maxLength:Int):String {})
	@:overload(function (obj:Int,length:java.nio.IntBuffer,infoLog:java.nio.ByteBuffer):Void {})
/** Buffer return (w/ implicit max length) version of: {@link #glGetAttachedObjectsARB GetAttachedObjectsARB}  */
/** Buffer return version of: {@link #glGetAttachedObjectsARB GetAttachedObjectsARB}  */
/** Alternative version of: {@link #glGetAttachedObjectsARB GetAttachedObjectsARB}  */
/**
 * Returns the handles of objects attached to {@code containerObj} in {@code obj}. . The number of objects attached to {@code containerObj} is given by
 * {@link #GL_OBJECT_ATTACHED_OBJECTS_ARB OBJECT_ATTACHED_OBJECTS_ARB}, which can be queried with {@link #glGetObjectParameteriARB GetObjectParameteriARB}. If {@code containerObj} is not of type {@link #GL_PROGRAM_OBJECT_ARB PROGRAM_OBJECT_ARB}, the
 * error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated. If an error occurred, the return parameters {@code count} and {@code obj} will be unmodified.
 *
 * @param containerObj the container object to query
 * @param maxCount     the maximum number of handles the GL is allowed to write into {@code obj}
 * @param count        a buffer in which to return the actual number of object handles written by the GL into {@code obj}. If {@code NULL} then the GL ignores this parameter.
 * @param obj          a buffer in which to return the attached object handles
 */
	static public function glGetAttachedObjectsARB(containerObj:Int,maxCount:Int,count:java.nio.ByteBuffer,obj:java.nio.ByteBuffer):Void;
	@:overload(function (containerObj:Int):java.nio.IntBuffer {})
	@:overload(function (containerObj:Int,maxCount:Int):java.nio.IntBuffer {})
	@:overload(function (containerObj:Int,count:java.nio.IntBuffer,obj:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glUniform4ivARB Uniform4ivARB}  */
/**
 * Loads integer values {@code count} times into a uniform location defined as an array of ivec4 vectors.
 *
 * @param location the uniform variable location
 * @param count    the number of ivec4 vectors to load
 * @param value    the values to load
 */
	static public function glUniform4ivARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glUniform3iARB Uniform3iARB}  */
	static public function nglUniform3iARB(location:Int,v0:Int,v1:Int,v2:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform2iARB Uniform2iARB}  */
	static public function nglUniform2iARB(location:Int,v0:Int,v1:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glGetHandleARB GetHandleARB}  */
	static public function nglGetHandleARB(pname:Int,__functionAddress:haxe.Int64):Int;
/**
 * int version of {@link #glUniform1fARB Uniform1fARB}.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 */
	static public function glUniform1iARB(location:Int,v0:Int):Void;
/** JNI method for {@link #glDetachObjectARB DetachObjectARB}  */
	static public function nglDetachObjectARB(containerObj:Int,attachedObj:Int,__functionAddress:haxe.Int64):Void;
/** CharSequence version of: {@link #glGetUniformLocationARB GetUniformLocationARB}  */
/**
 * Returns the location of uniform variable {@code name}. {@code name} has to be a null terminated string, without white space. The value of -1 will be
 * returned if {@code name} does not correspond to an active uniform variable name in {@code programObj} or if {@code name} starts with the reserved prefix
 * "gl_". If {@code programObj} has not been successfully linked, or if {@code programObj} is not of type {@link #GL_PROGRAM_OBJECT_ARB PROGRAM_OBJECT_ARB}, the error
 * {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated. The location of a uniform variable does not change until the next link command is issued.
 * 
 * <p>A valid {@code name} cannot be a structure, an array of structures, or a subcomponent of a vector or a matrix. In order to identify a valid {@code name},
 * the "." (dot) and "[]" operators can be used in {@code name} to operate on a structure or to operate on an array.</p>
 * 
 * <p>The first element of a uniform array is identified using the name of the uniform array appended with "[0]". Except if the last part of the string
 * {@code name} indicates a uniform array, then the location of the first element of that array can be retrieved by either using the name of the uniform
 * array, or the name of the uniform array appended with "[0]".</p>
 *
 * @param programObj the program object to query
 * @param name       the name of the uniform variable whose location is to be queried
 */
	static public function glGetUniformLocationARB(programObj:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (programObj:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glUniform2fvARB Uniform2fvARB}  */
/** JNI method for {@link #glUniform2fvARB Uniform2fvARB}  */
	static public function nglUniform2fvARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * Attaches an object to a container object.
 *
 * @param containerObj the container object
 * @param obj          the object to attach
 */
	static public function glAttachObjectARB(containerObj:Int,obj:Int):Void;
/** Unsafe version of {@link #glUniformMatrix4fvARB UniformMatrix4fvARB}  */
/** JNI method for {@link #glUniformMatrix4fvARB UniformMatrix4fvARB}  */
	static public function nglUniformMatrix4fvARB(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetShaderSourceARB GetShaderSourceARB}  */
/** String return version of: {@link #glGetShaderSourceARB GetShaderSourceARB}  */
/** Alternative version of: {@link #glGetShaderSourceARB GetShaderSourceARB}  */
/**
 * Returns the string making up the source code for a shader object.
 * 
 * <p>The string {@code source} is a concatenation of the strings passed to OpenGL using {@link #glShaderSourceARB ShaderSourceARB}. The length of this concatenation is given by
 * {@link #GL_OBJECT_SHADER_SOURCE_LENGTH_ARB OBJECT_SHADER_SOURCE_LENGTH_ARB}, which can be queried with {@link #glGetObjectParameteriARB GetObjectParameteriARB}. If {@code obj} is not of type {@link #GL_SHADER_OBJECT_ARB SHADER_OBJECT_ARB}, the error
 * {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated. If an error occurred, the return parameters {@code length} and {@code source} will be unmodified.</p>
 *
 * @param obj       the shader object to query
 * @param maxLength the maximum number of characters the GL is allowed to write into {@code source}
 * @param length    a buffer in which to return the actual number of characters written by the GL into {@code source}, excluding the null termination. If {@code length} is NULL
 *                  then the GL ignores this parameter.
 * @param source    a buffer in which to return the shader object source
 */
	static public function glGetShaderSourceARB(obj:Int,maxLength:Int,length:java.nio.ByteBuffer,source:java.nio.ByteBuffer):Void;
	@:overload(function (obj:Int):String {})
	@:overload(function (obj:Int,maxLength:Int):String {})
	@:overload(function (obj:Int,length:java.nio.IntBuffer,source:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glAttachObjectARB AttachObjectARB}  */
	static public function nglAttachObjectARB(containerObj:Int,obj:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetUniformivARB GetUniformivARB}  */
	static public function glGetUniformiARB(programObj:Int,location:Int):Int;
/** Unsafe version of {@link #glUniform2ivARB Uniform2ivARB}  */
/** JNI method for {@link #glUniform2ivARB Uniform2ivARB}  */
	static public function nglUniform2ivARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform1fvARB Uniform1fvARB}  */
/** JNI method for {@link #glUniform1fvARB Uniform1fvARB}  */
	static public function nglUniform1fvARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glDeleteObjectARB DeleteObjectARB}  */
	static public function nglDeleteObjectARB(obj:Int,__functionAddress:haxe.Int64):Void;
/**
 * Compiles a shader object. Each shader object has a Boolean status, {@link #GL_OBJECT_COMPILE_STATUS_ARB OBJECT_COMPILE_STATUS_ARB}, that is modified as a result of compilation. This status
 * can be queried with {@link #glGetObjectParameteriARB GetObjectParameteriARB}. This status will be set to {@link GL11#GL_TRUE TRUE} if the shader {@code shaderObj} was compiled without errors and is
 * ready for use, and {@link GL11#GL_FALSE FALSE} otherwise. Compilation can fail for a variety of reasons as listed in the OpenGL Shading Language Specification. If
 * CompileShaderARB failed, any information about a previous compile is lost and is not restored. Thus a failed compile does not restore the old state of
 * {@code shaderObj}. If {@code shaderObj} does not reference a shader object, the error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated.
 * 
 * <p>Note that changing the source code of a shader object, through ShaderSourceARB, does not change its compile status {@link #GL_OBJECT_COMPILE_STATUS_ARB OBJECT_COMPILE_STATUS_ARB}.</p>
 * 
 * <p>Each shader object has an information log that is modified as a result of compilation. This information log can be queried with {@link #glGetInfoLogARB GetInfoLogARB} to
 * obtain more information about the compilation attempt.</p>
 *
 * @param shaderObj the shader object to compile
 */
	static public function glCompileShaderARB(shaderObj:Int):Void;
/** Alternative version of: {@link #glUniform4fvARB Uniform4fvARB}  */
/**
 * Loads floating-point values {@code count} times into a uniform location defined as an array of vec4 vectors.
 *
 * @param location the uniform variable location
 * @param count    the number of vec4 vectors to load
 * @param value    the values to load
 */
	static public function glUniform4fvARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glUniform1fvARB Uniform1fvARB}  */
/**
 * Loads floating-point values {@code count} times into a uniform location defined as an array of float values.
 *
 * @param location the uniform variable location
 * @param count    the number of float values to load
 * @param value    the values to load
 */
	static public function glUniform1fvARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glUniform4fvARB Uniform4fvARB}  */
/** JNI method for {@link #glUniform4fvARB Uniform4fvARB}  */
	static public function nglUniform4fvARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix2fvARB UniformMatrix2fvARB}  */
/** JNI method for {@link #glUniformMatrix2fvARB UniformMatrix2fvARB}  */
	static public function nglUniformMatrix2fvARB(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniformMatrix3fvARB UniformMatrix3fvARB}  */
/**
 * Loads a 3x3 matrix of floating-point values {@code count} times into a uniform location defined as a matrix or an array of matrices.
 *
 * @param location  the uniform variable location
 * @param count     the number of 3x3 matrices to load
 * @param transpose if {@link GL11#GL_FALSE FALSE}, the matrix is specified in column major order, otherwise in row major order
 * @param value     the matrix values to load
 */
	static public function glUniformMatrix3fvARB(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glGetUniformfvARB GetUniformfvARB}  */
/** JNI method for {@link #glGetUniformfvARB GetUniformfvARB}  */
	static public function nglGetUniformfvARB(programObj:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (programObj:Int,location:Int,params:haxe.Int64):Void {})
/**
 * Installs the executable code as part of current rendering state if the program object {@code programObj} contains valid executable code, i.e. has been
 * linked successfully. If UseProgramObjectARB is called with the handle set to 0, it is as if the GL had no programmable stages and the fixed
 * functionality paths will be used instead. If {@code programObj} cannot be made part of the current rendering state, an {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error will
 * be generated and the current rendering state left unmodified. This error will be set, for example, if {@code programObj} has not been linked
 * successfully. If {@code programObj} is not of type {@link #GL_PROGRAM_OBJECT_ARB PROGRAM_OBJECT_ARB}, the error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated.
 * 
 * <p>While a program object is in use, applications are free to modify attached shader objects, compile attached shader objects, attach additional shader
 * objects, and detach shader objects. This does not affect the link status {@link #GL_OBJECT_LINK_STATUS_ARB OBJECT_LINK_STATUS_ARB} of the program object. This does not affect the
 * executable code that is part of the current state either. That executable code is only affected when the program object has been re-linked successfully.
 * After such a successful re-link, the {@link #glLinkProgramARB LinkProgramARB} command will install the generated executable code as part of the current rendering state if the
 * specified program object was already in use as a result of a previous call to UseProgramObjectARB. If this re-link failed, then the executable code part
 * of the current state does not change.</p>
 *
 * @param programObj the program object to use
 */
	static public function glUseProgramObjectARB(programObj:Int):Void;
/** JNI method for {@link #glUniform4iARB Uniform4iARB}  */
	static public function nglUniform4iARB(location:Int,v0:Int,v1:Int,v2:Int,v3:Int,__functionAddress:haxe.Int64):Void;
/**
 * float version of {@link #glUniform4fARB Uniform4fARB}.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 */
	static public function glUniform1fARB(location:Int,v0:Float):Void;
/**
 * Creates a program object.
 * 
 * <p>A program object is a container object. Shader objects are attached to a program object with the command AttachObjectARB. It is permissible to attach
 * shader objects to program objects before source code has been loaded into the shader object, or before the shader object has been compiled. It is
 * permissible to attach multiple shader objects of the same type to a single program object, and it is permissible to attach a shader object to more than
 * one program object.</p>
 */
	static public function glCreateProgramObjectARB():Int;
/**
 * vec3 version of {@link #glUniform4fARB Uniform4fARB}.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 */
	static public function glUniform3fARB(location:Int,v0:Float,v1:Float,v2:Float):Void;
/**
 * Returns the floating-point value or values of a uniform.
 *
 * @param programObj the program object to query
 * @param location   the uniform variable location
 * @param params     a buffer in which to return the uniform values
 */
/** Alternative version of: {@link #glGetUniformfvARB GetUniformfvARB}  */
	static public function glGetUniformfvARB(programObj:Int,location:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (programObj:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Returns object specific parameter values.
 *
 * @param obj    the object to query
 * @param pname  the parameter to query
 * @param params a buffer in which to return the parameter value
 */
/** Alternative version of: {@link #glGetObjectParameterfvARB GetObjectParameterfvARB}  */
	static public function glGetObjectParameterfvARB(obj:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (obj:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetUniformLocationARB GetUniformLocationARB}  */
/** JNI method for {@link #glGetUniformLocationARB GetUniformLocationARB}  */
	static public function nglGetUniformLocationARB(programObj:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (programObj:Int,name:haxe.Int64):Int {})
/** Unsafe version of {@link #glGetUniformivARB GetUniformivARB}  */
/** JNI method for {@link #glGetUniformivARB GetUniformivARB}  */
	static public function nglGetUniformivARB(programObj:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (programObj:Int,location:Int,params:haxe.Int64):Void {})
/**
 * Either deletes the object, or flags it for deletion. An object that is attached to a container object is not deleted until it is no longer attached to
 * any container object, for any context. If it is still attached to at least one container object, the object is flagged for deletion. If the object is
 * part of the current rendering state, it is not deleted until it is no longer part of the current rendering state for any context. If the object is still
 * part of the rendering state of at least one context, it is flagged for deletion.
 * 
 * <p>If an object is flagged for deletion, its Boolean status bit {@link #GL_OBJECT_DELETE_STATUS_ARB OBJECT_DELETE_STATUS_ARB} is set to true.</p>
 * 
 * <p>DeleteObjectARB will silently ignore the value zero.</p>
 * 
 * <p>When a container object is deleted, it will detach each attached object as part of the deletion process. When an object is deleted, all information for
 * the object referenced is lost. The data for the object is also deleted.</p>
 *
 * @param obj the shader object to delete
 */
	static public function glDeleteObjectARB(obj:Int):Void;
/** Alternative version of: {@link #glUniform2ivARB Uniform2ivARB}  */
/**
 * Loads integer values {@code count} times into a uniform location defined as an array of ivec2 vectors.
 *
 * @param location the uniform variable location
 * @param count    the number of ivec2 vectors to load
 * @param value    the values to load
 */
	static public function glUniform2ivARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/**
 * Loads a vec4 value into a uniform variable of the program object that is currently in use.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 * @param v3       the uniform w value
 */
	static public function glUniform4fARB(location:Int,v0:Float,v1:Float,v2:Float,v3:Float):Void;
/** Alternative version of: {@link #glUniformMatrix2fvARB UniformMatrix2fvARB}  */
/**
 * Loads a 2x2 matrix of floating-point values {@code count} times into a uniform location defined as a matrix or an array of matrices.
 *
 * @param location  the uniform variable location
 * @param count     the number of 2x2 matrices to load
 * @param transpose if {@link GL11#GL_FALSE FALSE}, the matrix is specified in column major order, otherwise in row major order
 * @param value     the matrix values to load
 */
	static public function glUniformMatrix2fvARB(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/**
 * vec2 version of {@link #glUniform4fARB Uniform4fARB}.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 */
	static public function glUniform2fARB(location:Int,v0:Float,v1:Float):Void;
/** Alternative version of: {@link #glUniform3fvARB Uniform3fvARB}  */
/**
 * Loads floating-point values {@code count} times into a uniform location defined as an array of vec3 vectors.
 *
 * @param location the uniform variable location
 * @param count    the number of vec3 vectors to load
 * @param value    the values to load
 */
	static public function glUniform3fvARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/**
 * Detaches an object from the container object it is attached to.
 *
 * @param containerObj the container object
 * @param attachedObj  the object to detach
 */
	static public function glDetachObjectARB(containerObj:Int,attachedObj:Int):Void;
/**
 * Returns the handle to an object that is in use as part of current state.
 *
 * @param pname the state item for which the current object is to be returned. Must be:<br>{@link #GL_PROGRAM_OBJECT_ARB PROGRAM_OBJECT_ARB}
 */
	static public function glGetHandleARB(pname:Int):Int;
/** Unsafe version of {@link #glGetActiveUniformARB GetActiveUniformARB}  */
/** JNI method for {@link #glGetActiveUniformARB GetActiveUniformARB}  */
	static public function nglGetActiveUniformARB(programObj:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (programObj:Int,index:Int,maxLength:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform3ivARB Uniform3ivARB}  */
/** JNI method for {@link #glUniform3ivARB Uniform3ivARB}  */
	static public function nglUniform3ivARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glUniform4fARB Uniform4fARB}  */
	static public function nglUniform4fARB(location:Int,v0:Float,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glUniform3ivARB Uniform3ivARB}  */
/**
 * Loads integer values {@code count} times into a uniform location defined as an array of ivec3 vectors.
 *
 * @param location the uniform variable location
 * @param count    the number of ivec3 vectors to load
 * @param value    the values to load
 */
	static public function glUniform3ivARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glUniform2fvARB Uniform2fvARB}  */
/**
 * Loads floating-point values {@code count} times into a uniform location defined as an array of vec2 vectors.
 *
 * @param location the uniform variable location
 * @param count    the number of vec2 vectors to load
 * @param value    the values to load
 */
	static public function glUniform2fvARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix4fvARB UniformMatrix4fvARB}  */
/**
 * Loads a 4x4 matrix of floating-point values {@code count} times into a uniform location defined as a matrix or an array of matrices.
 *
 * @param location  the uniform variable location
 * @param count     the number of 4x4 matrices to load
 * @param transpose if {@link GL11#GL_FALSE FALSE}, the matrix is specified in column major order, otherwise in row major order
 * @param value     the matrix values to load
 */
	static public function glUniformMatrix4fvARB(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glGetAttachedObjectsARB GetAttachedObjectsARB}  */
/** JNI method for {@link #glGetAttachedObjectsARB GetAttachedObjectsARB}  */
	static public function nglGetAttachedObjectsARB(containerObj:Int,maxCount:Int,count:haxe.Int64,obj:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (containerObj:Int,maxCount:Int,count:haxe.Int64,obj:haxe.Int64):Void {})
/** Single string version of: {@link #glShaderSourceARB ShaderSourceARB}  */
/** Array version of: {@link #glShaderSourceARB ShaderSourceARB}  */
/** Alternative version of: {@link #glShaderSourceARB ShaderSourceARB}  */
/**
 * Sets the source code for the specified shader object {@code shaderObj} to the text strings in the {@code string} array. If the object previously had
 * source code loaded into it, it is completely replaced.
 * 
 * <p>The strings that are loaded into a shader object are expected to form the source code for a valid shader as defined in the OpenGL Shading Language
 * Specification.</p>
 *
 * @param shaderObj the shader object
 * @param count     the number of strings in the array
 * @param string    an array of pointers to one or more, optionally null terminated, character strings that make up the source code
 * @param length    an array with the number of charARBs in each string (the string length). Each element in this array can be set to negative one (or smaller),
 *                  indicating that its accompanying string is null terminated. If {@code length} is set to {@code NULL}, all strings in the {@code string} argument are
 *                  considered null terminated.
 */
	static public function glShaderSourceARB(shaderObj:Int,count:Int,string:java.nio.ByteBuffer,length:java.nio.ByteBuffer):Void;
	@:overload(function (shaderObj:Int,string:java.lang.CharSequence):Void {})
	@:overload(function (shaderObj:Int,string:java.NativeArray<java.lang.CharSequence>):Void {})
	@:overload(function (shaderObj:Int,string:org.lwjgl.PointerBuffer,length:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glUniform1iARB Uniform1iARB}  */
	static public function nglUniform1iARB(location:Int,v0:Int,__functionAddress:haxe.Int64):Void;
/**
 * ivec3 version of {@link #glUniform3fARB Uniform3fARB}.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 */
	static public function glUniform3iARB(location:Int,v0:Int,v1:Int,v2:Int):Void;
/** Single return value version of: {@link #glGetObjectParameterivARB GetObjectParameterivARB}  */
	static public function glGetObjectParameteriARB(obj:Int,pname:Int):Int;
/**
 * Returns the integer value or values of a uniform.
 *
 * @param programObj the program object to query
 * @param location   the uniform variable location
 * @param params     a buffer in which to return the uniform values
 */
/** Alternative version of: {@link #glGetUniformivARB GetUniformivARB}  */
	static public function glGetUniformivARB(programObj:Int,location:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (programObj:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glCompileShaderARB CompileShaderARB}  */
	static public function nglCompileShaderARB(shaderObj:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform3fARB Uniform3fARB}  */
	static public function nglUniform3fARB(location:Int,v0:Float,v1:Float,v2:Float,__functionAddress:haxe.Int64):Void;
/**
 * ivec2 version of {@link #glUniform2fARB Uniform2fARB}.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 */
	static public function glUniform2iARB(location:Int,v0:Int,v1:Int):Void;
/** Unsafe version of {@link #glGetInfoLogARB GetInfoLogARB}  */
/** JNI method for {@link #glGetInfoLogARB GetInfoLogARB}  */
	static public function nglGetInfoLogARB(obj:Int,maxLength:Int,length:haxe.Int64,infoLog:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (obj:Int,maxLength:Int,length:haxe.Int64,infoLog:haxe.Int64):Void {})
/** JNI method for {@link #glCreateProgramObjectARB CreateProgramObjectARB}  */
	static public function nglCreateProgramObjectARB(__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #glUniformMatrix3fvARB UniformMatrix3fvARB}  */
/** JNI method for {@link #glUniformMatrix3fvARB UniformMatrix3fvARB}  */
	static public function nglUniformMatrix3fvARB(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform3fvARB Uniform3fvARB}  */
/** JNI method for {@link #glUniform3fvARB Uniform3fvARB}  */
	static public function nglUniform3fvARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetActiveUniformARB GetActiveUniformARB}  */
/** String return version of: {@link #glGetActiveUniformARB GetActiveUniformARB}  */
/** Alternative version of: {@link #glGetActiveUniformARB GetActiveUniformARB}  */
/**
 * Determines which of the declared uniform variables are active and their sizes and types.
 * 
 * <p>This command provides information about the uniform selected by {@code index}. The {@code index} of 0 selects the first active uniform, and
 * {@code index} of {@link #GL_OBJECT_ACTIVE_UNIFORMS_ARB OBJECT_ACTIVE_UNIFORMS_ARB} - 1 selects the last active uniform. The value of {@link #GL_OBJECT_ACTIVE_UNIFORMS_ARB OBJECT_ACTIVE_UNIFORMS_ARB} can be queried with
 * {@link #glGetObjectParameteriARB GetObjectParameteriARB}. If {@code index} is greater than or equal to {@link #GL_OBJECT_ACTIVE_UNIFORMS_ARB OBJECT_ACTIVE_UNIFORMS_ARB}, the error {@link GL11#GL_INVALID_VALUE INVALID_VALUE} is generated.</p>
 * 
 * <p>If an error occurred, the return parameters {@code length}, {@code size}, {@code type} and {@code name} will be unmodified.</p>
 * 
 * <p>The returned uniform name can be the name of built-in uniform state as well. The length of the longest uniform name in {@code programObj} is given by
 * {@link #GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB}, which can be queried with {@link #glGetObjectParameteriARB GetObjectParameteriARB}.</p>
 * 
 * <p>Each uniform variable, declared in a shader, is broken down into one or more strings using the "." (dot) and "[]" operators, if necessary, to the point
 * that it is legal to pass each string back into {@link #glGetUniformLocationARB GetUniformLocationARB}. Each of these strings constitutes one active uniform, and each string is
 * assigned an index.</p>
 * 
 * <p>If one or more elements of an array are active, GetActiveUniformARB will return the name of the array in {@code name}, subject to the restrictions
 * listed above. The type of the array is returned in {@code type}. The {@code size} parameter contains the highest array element index used, plus one. The
 * compiler or linker determines the highest index used. There will be only one active uniform reported by the GL per uniform array.</p>
 * 
 * <p>This command will return as much information about active uniforms as possible. If no information is available, {@code length} will be set to zero and
 * {@code name} will be an empty string. This situation could arise if GetActiveUniformARB is issued after a failed link.</p>
 *
 * @param programObj a handle to a program object for which the command {@link #glLinkProgramARB LinkProgramARB} has been issued in the past. It is not necessary for {@code programObj} to have
 *                   been linked successfully. The link could have failed because the number of active uniforms exceeded the limit.
 * @param index      the uniform index
 * @param maxLength  the maximum number of characters the GL is allowed to write into {@code name}.
 * @param length     a buffer in which to return the actual number of characters written by the GL into {@code name}. This count excludes the null termination. If
 *                   {@code length} is {@code NULL} then the GL ignores this parameter.
 * @param size       a buffer in which to return the uniform size. The size is in units of the type returned in {@code type}.
 * @param type       a buffer in which to return the uniform type
 * @param name       a buffer in which to return the uniform name
 */
	static public function glGetActiveUniformARB(programObj:Int,index:Int,maxLength:Int,length:java.nio.ByteBuffer,size:java.nio.ByteBuffer,type:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (programObj:Int,index:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (programObj:Int,index:Int,maxLength:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (programObj:Int,index:Int,length:java.nio.IntBuffer,size:java.nio.IntBuffer,type:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/**
 * Creates a shader object.
 *
 * @param shaderType the type of the shader object to be created. One of:<br>{@link ARBVertexShader#GL_VERTEX_SHADER_ARB VERTEX_SHADER_ARB}, {@link ARBFragmentShader#GL_FRAGMENT_SHADER_ARB FRAGMENT_SHADER_ARB}
 */
	static public function glCreateShaderObjectARB(shaderType:Int):Int;
/**
 * ivec4 version of {@link #glUniform4fARB Uniform4fARB}.
 *
 * @param location the uniform variable location
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 * @param v3       the uniform w value
 */
	static public function glUniform4iARB(location:Int,v0:Int,v1:Int,v2:Int,v3:Int):Void;
/** Unsafe version of {@link #glUniform4ivARB Uniform4ivARB}  */
/** JNI method for {@link #glUniform4ivARB Uniform4ivARB}  */
	static public function nglUniform4ivARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glValidateProgramARB ValidateProgramARB}  */
	static public function nglValidateProgramARB(programObj:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniform1ivARB Uniform1ivARB}  */
/** JNI method for {@link #glUniform1ivARB Uniform1ivARB}  */
	static public function nglUniform1ivARB(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetObjectParameterfvARB GetObjectParameterfvARB}  */
/** JNI method for {@link #glGetObjectParameterfvARB GetObjectParameterfvARB}  */
	static public function nglGetObjectParameterfvARB(obj:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (obj:Int,pname:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniform1ivARB Uniform1ivARB}  */
/**
 * Loads integer values {@code count} times into a uniform location defined as an array of integer values.
 *
 * @param location the uniform variable location
 * @param count    the number of integer values to load
 * @param value    the values to load
 */
	static public function glUniform1ivARB(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glLinkProgramARB LinkProgramARB}  */
	static public function nglLinkProgramARB(programObj:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glCreateShaderObjectARB CreateShaderObjectARB}  */
	static public function nglCreateShaderObjectARB(shaderType:Int,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #glGetShaderSourceARB GetShaderSourceARB}  */
/** JNI method for {@link #glGetShaderSourceARB GetShaderSourceARB}  */
	static public function nglGetShaderSourceARB(obj:Int,maxLength:Int,length:haxe.Int64,source:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (obj:Int,maxLength:Int,length:haxe.Int64,source:haxe.Int64):Void {})
/** Returns the {@link ARBShaderObjects} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBShaderObjects;
/** JNI method for {@link #glUniform2fARB Uniform2fARB}  */
	static public function nglUniform2fARB(location:Int,v0:Float,v1:Float,__functionAddress:haxe.Int64):Void;
/**
 * Returns object specific parameter values.
 *
 * @param obj    the object to query
 * @param pname  the parameter to query. One of:<br>{@link #GL_OBJECT_TYPE_ARB OBJECT_TYPE_ARB}, {@link #GL_OBJECT_SUBTYPE_ARB OBJECT_SUBTYPE_ARB}, {@link #GL_OBJECT_DELETE_STATUS_ARB OBJECT_DELETE_STATUS_ARB}, {@link #GL_OBJECT_COMPILE_STATUS_ARB OBJECT_COMPILE_STATUS_ARB}, {@link #GL_OBJECT_LINK_STATUS_ARB OBJECT_LINK_STATUS_ARB}, {@link #GL_OBJECT_VALIDATE_STATUS_ARB OBJECT_VALIDATE_STATUS_ARB}, {@link #GL_OBJECT_INFO_LOG_LENGTH_ARB OBJECT_INFO_LOG_LENGTH_ARB}, {@link #GL_OBJECT_ATTACHED_OBJECTS_ARB OBJECT_ATTACHED_OBJECTS_ARB}, {@link #GL_OBJECT_ACTIVE_UNIFORMS_ARB OBJECT_ACTIVE_UNIFORMS_ARB}, {@link #GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB}, {@link #GL_OBJECT_SHADER_SOURCE_LENGTH_ARB OBJECT_SHADER_SOURCE_LENGTH_ARB}
 * @param params a buffer in which to return the parameter value
 */
/** Alternative version of: {@link #glGetObjectParameterivARB GetObjectParameterivARB}  */
	static public function glGetObjectParameterivARB(obj:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (obj:Int,pname:Int,params:java.nio.ByteBuffer):Void {})

}
