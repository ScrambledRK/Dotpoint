package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBGetProgramBinary")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/get_program_binary.txt">ARB_get_program_binary</a> extension.
 * 
 * <p>This extension introduces new commands to retrieve and set the binary representation of a program object. {@link #glGetProgramBinary GetProgramBinary} allows an application to
 * cache compiled and linked programs to avoid compiling and linking when used again. This may even allow the GL itself to act as an offline compiler. The
 * resulting program binary can be reloaded into the GL via {@link #glProgramBinary ProgramBinary}. This is a very useful path for applications that wish to remain portable by
 * shipping pure GLSL source shaders, yet would like to avoid the cost of compiling their shaders at runtime. Instead an application can supply its GLSL
 * source shaders during first application run, or even during installation. The application then compiles and links its shaders and reads back the program
 * binaries. On subsequent runs, only the program binaries need be supplied.</p>
 * 
 * <p>{@link #glProgramBinary ProgramBinary} may also accept binaries in vendor-specific formats produced by specialized offline compilation tools. This extension does not add any
 * such formats, but allows for them in further extensions. Though the level of optimization may not be identical -- the offline shader compiler may have
 * the luxury of more aggressive optimization at its disposal -- program binaries generated online by the GL are interchangeable with those generated
 * offline by an SDK tool.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}. Promoted to core in {@link GL41 OpenGL 4.1}.</p>
 */
extern class ARBGetProgramBinary 
{
/** Accepted by the {@code pname} parameter of ProgramParameteri and GetProgramiv.  */
	inline static public var GL_PROGRAM_BINARY_RETRIEVABLE_HINT:Int = 33367;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_PROGRAM_BINARY_LENGTH:Int = 34625;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv and GetDoublev.  */
	inline static public var GL_NUM_PROGRAM_BINARY_FORMATS:Int = 34814;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv and GetDoublev.  */
	inline static public var GL_PROGRAM_BINARY_FORMATS:Int = 34815;
/** Function address.  */
	public var GetProgramBinary:haxe.Int64;
/** Function address.  */
	public var ProgramBinary:haxe.Int64;
/** Function address.  */
	public var ProgramParameteri:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glGetProgramBinary GetProgramBinary}  */
	static public function nglGetProgramBinary(program:Int,bufSize:Int,length:haxe.Int64,binaryFormat:haxe.Int64,binary:haxe.Int64):Void;
/** Buffer return (w/ implicit max length) version of: {@link #glGetProgramBinary GetProgramBinary}  */
/** Buffer return version of: {@link #glGetProgramBinary GetProgramBinary}  */
/** Alternative version of: {@link #glGetProgramBinary GetProgramBinary}  */
/**
 * Returns a binary representation of a program object's compiled and linked executable source.
 *
 * @param program      the name of a program object whose binary representation to retrieve
 * @param bufSize      the size of the buffer whose address is given by {@code binary}
 * @param length       the address of a variable to receive the number of bytes written into {@code binary}
 * @param binaryFormat a variable to receive a token indicating the format of the binary data returned by the GL
 * @param binary       an array into which the GL will return {@code program}'s binary representation
 */
	static public function glGetProgramBinary(program:Int,bufSize:Int,length:java.nio.ByteBuffer,binaryFormat:java.nio.ByteBuffer,binary:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,binaryFormat:java.nio.IntBuffer):java.nio.ByteBuffer {})
	@:overload(function (program:Int,bufSize:Int,binaryFormat:java.nio.IntBuffer):java.nio.ByteBuffer {})
	@:overload(function (program:Int,length:java.nio.IntBuffer,binaryFormat:java.nio.IntBuffer,binary:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glProgramBinary ProgramBinary}  */
	static public function nglProgramBinary(program:Int,binaryFormat:Int,binary:haxe.Int64,length:Int):Void;
/** Alternative version of: {@link #glProgramBinary ProgramBinary}  */
/**
 * Loads a program object with a program binary.
 *
 * @param program      the name of a program object into which to load a program binary
 * @param binaryFormat the format of the binary data in binary
 * @param binary       an array containing the binary to be loaded into {@code program}
 * @param length       the number of bytes contained in {@code binary}
 */
	static public function glProgramBinary(program:Int,binaryFormat:Int,binary:java.nio.ByteBuffer,length:Int):Void;
	@:overload(function (program:Int,binaryFormat:Int,binary:java.nio.ByteBuffer):Void {})
/** Returns the {@link ARBGetProgramBinary} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBGetProgramBinary;
/**
 * Specifies the integer value of a program object parameter.
 *
 * @param program the name of a program object whose parameter to modify
 * @param pname   the name of the parameter to modify. One of:<br>{@link #GL_PROGRAM_BINARY_RETRIEVABLE_HINT PROGRAM_BINARY_RETRIEVABLE_HINT}, {@link GL41#GL_PROGRAM_SEPARABLE PROGRAM_SEPARABLE}
 * @param value   the new value of the parameter specified by {@code pname} for {@code program}
 */
	static public function glProgramParameteri(program:Int,pname:Int,value:Int):Void;

}
