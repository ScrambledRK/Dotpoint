package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBGPUShaderFP64")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/gpu_shader_fp64.txt">ARB_gpu_shader_fp64</a> extension.
 * 
 * <p>This extension allows GLSL shaders to use double-precision floating-point data types, including vectors and matrices of doubles. Doubles may be used as
 * inputs, outputs, and uniforms.</p>
 * 
 * <p>The shading language supports various arithmetic and comparison operators on double-precision scalar, vector, and matrix types, and provides a set of
 * built-in functions including:
 * <ul>
 * <li>square roots and inverse square roots;</li>
 * <li>fused floating-point multiply-add operations;</li>
 * <li>splitting a floating-point number into a significand and exponent (frexp), or building a floating-point number from a significand and exponent
 * (ldexp);</li>
 * <li>absolute value, sign tests, various functions to round to an integer value, modulus, minimum, maximum, clamping, blending two values, step
 * functions, and testing for infinity and NaN values;</li>
 * <li>packing and unpacking doubles into a pair of 32-bit unsigned integers;</li>
 * <li>matrix component-wise multiplication, and computation of outer products, transposes, determinants, and inverses; and</li>
 * <li>vector relational functions.</li>
 * </ul></p>
 * 
 * <p>Double-precision versions of angle, trigonometry, and exponential functions are not supported.</p>
 * 
 * <p>Implicit conversions are supported from integer and single-precision floating-point values to doubles, and this extension uses the relaxed function
 * overloading rules specified by the ARB_gpu_shader5 extension to resolve ambiguities.</p>
 * 
 * <p>This extension provides API functions for specifying double-precision uniforms in the default uniform block, including functions similar to the uniform
 * functions added by <a href="http://www.opengl.org/registry/specs/EXT/direct_state_access.txt">EXT_direct_state_access</a> (if supported).</p>
 * 
 * <p>This extension provides an "LF" suffix for specifying double-precision constants. Floating-point constants without a suffix in GLSL are treated as
 * single-precision values for backward compatibility with versions not supporting doubles; similar constants are treated as double-precision values in the
 * "C" programming language.</p>
 * 
 * <p>This extension does not support interpolation of double-precision values; doubles used as fragment shader inputs must be qualified as "flat".
 * Additionally, this extension does not allow vertex attributes with 64-bit components. That support is added separately by
 * <a href="http://www.opengl.org/registry/specs/EXT/vertex_attrib_64bit.txt">EXT_vertex_attrib_64bit</a>.</p>
 * 
 * <p>Requires {@link GL32 GL32} and GLSL 1.50. Promoted to core in {@link GL40 OpenGL 4.0}.</p>
 */
extern class ARBGPUShaderFP64 
{
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
	public var ProgramUniform1dEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2dEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3dEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4dEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform1dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform2dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform3dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniform4dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x3dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix2x4dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x2dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix3x4dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x2dvEXT:haxe.Int64;
/** Function address.  */
	public var ProgramUniformMatrix4x3dvEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #glProgramUniform2dvEXT ProgramUniform2dvEXT}  */
/**
 * DSA version of {@link #glUniform2dv Uniform2dv}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform2dvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glUniform3dv Uniform3dv}  */
	static public function nglUniform3dv(location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformMatrix4x2dv UniformMatrix4x2dv}  */
	static public function nglUniformMatrix4x2dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/**
 * Returns the double value(s) of a uniform variable.
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param params   the value of the specified uniform variable
 */
/** Alternative version of: {@link #glGetUniformdv GetUniformdv}  */
	static public function glGetUniformdv(program:Int,location:Int,params:java.nio.DoubleBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glUniform1dv Uniform1dv}  */
	static public function nglUniform1dv(location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform3dvEXT ProgramUniform3dvEXT}  */
/** JNI method for {@link #glProgramUniform3dvEXT ProgramUniform3dvEXT}  */
	static public function nglProgramUniform3dvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * Specifies the value of a dvec2 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glUniform2d(location:Int,x:Float,y:Float):Void;
/**
 * DSA version of {@link #glUniform1d Uniform1d}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glProgramUniform1dEXT(program:Int,location:Int,x:Float):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3dvEXT ProgramUniformMatrix3dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix3dv UniformMatrix3dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glUniformMatrix3x2dv UniformMatrix3x2dv}  */
	static public function nglUniformMatrix3x2dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glUniformMatrix4x3dv UniformMatrix4x3dv}  */
/**
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
	static public function nglUniformMatrix3x4dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2dvEXT ProgramUniformMatrix2dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix2dv UniformMatrix2dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glUniformMatrix3dv UniformMatrix3dv}  */
	static public function nglUniformMatrix3dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformMatrix2x4dv UniformMatrix2x4dv}  */
	static public function nglUniformMatrix2x4dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glUniformMatrix3x4dv UniformMatrix3x4dv}  */
/**
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
 * DSA version of {@link #glUniform4d Uniform4d}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 * @param w        the uniform w value
 */
	static public function glProgramUniform4dEXT(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float):Void;
/**
 * Specifies the value of a dvec3 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glUniform3d(location:Int,x:Float,y:Float,z:Float):Void;
/**
 * DSA version of {@link #glUniform3d Uniform3d}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 * @param z        the uniform z value
 */
	static public function glProgramUniform3dEXT(program:Int,location:Int,x:Float,y:Float,z:Float):Void;
/** Alternative version of: {@link #glUniform1dv Uniform1dv}  */
/**
 * Specifies the value of a single double uniform variable or a double uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform1dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform4dvEXT ProgramUniform4dvEXT}  */
/**
 * DSA version of {@link #glUniform4dv Uniform4dv}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform4dvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glUniform3dv Uniform3dv}  */
/**
 * Specifies the value of a single dvec3 uniform variable or a dvec3 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform3dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform1dvEXT ProgramUniform1dvEXT}  */
/**
 * DSA version of {@link #glUniform1dv Uniform1dv}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform1dvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x4dvEXT ProgramUniformMatrix2x4dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix2x4dvEXT ProgramUniformMatrix2x4dvEXT}  */
	static public function nglProgramUniformMatrix2x4dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniformMatrix2x4dv UniformMatrix2x4dv}  */
/**
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
 * Specifies the value of a single dmat4 uniform variable or a dmat4 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix4dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/**
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
 * Specifies the value of a single dmat2 uniform variable or a dmat2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix2dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4dvEXT ProgramUniformMatrix4dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix4dvEXT ProgramUniformMatrix4dvEXT}  */
	static public function nglProgramUniformMatrix4dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * DSA version of {@link #glUniform2d Uniform2d}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 * @param y        the uniform y value
 */
	static public function glProgramUniform2dEXT(program:Int,location:Int,x:Float,y:Float):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2x4dvEXT ProgramUniformMatrix2x4dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix2x4dv UniformMatrix2x4dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x4dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix3x2dv UniformMatrix3x2dv}  */
/**
 * Specifies the value of a single dmat3x2 uniform variable or a dmat3x2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix3x2dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glUniform4dv Uniform4dv}  */
	static public function nglUniform4dv(location:Int,count:Int,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix2x3dvEXT ProgramUniformMatrix2x3dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix2x3dv UniformMatrix2x3dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix2x3dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Single return value version of: {@link #glGetUniformdv GetUniformdv}  */
	static public function glGetUniformd(program:Int,location:Int):Float;
/** Unsafe version of {@link #glUniformMatrix4x3dv UniformMatrix4x3dv}  */
	static public function nglUniformMatrix4x3dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Unsafe version of {@link #glUniform2dv Uniform2dv}  */
	static public function nglUniform2dv(location:Int,count:Int,value:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniformMatrix4x2dvEXT ProgramUniformMatrix4x2dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix4x2dvEXT ProgramUniformMatrix4x2dvEXT}  */
	static public function nglProgramUniformMatrix4x2dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform3dEXT ProgramUniform3dEXT}  */
	static public function nglProgramUniform3dEXT(program:Int,location:Int,x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform1dvEXT ProgramUniform1dvEXT}  */
/** JNI method for {@link #glProgramUniform1dvEXT ProgramUniform1dvEXT}  */
	static public function nglProgramUniform1dvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix3x2dvEXT ProgramUniformMatrix3x2dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix3x2dvEXT ProgramUniformMatrix3x2dvEXT}  */
	static public function nglProgramUniformMatrix3x2dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x3dvEXT ProgramUniformMatrix4x3dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix4x3dv UniformMatrix4x3dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x3dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix4x2dv UniformMatrix4x2dv}  */
/**
 * Specifies the value of a single dmat4x2 uniform variable or a dmat4x2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix4x2dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix4x2dvEXT ProgramUniformMatrix4x2dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix4x2dv UniformMatrix4x2dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4x2dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2x3dvEXT ProgramUniformMatrix2x3dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix2x3dvEXT ProgramUniformMatrix2x3dvEXT}  */
	static public function nglProgramUniformMatrix2x3dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetUniformdv GetUniformdv}  */
	static public function nglGetUniformdv(program:Int,location:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformMatrix2dv UniformMatrix2dv}  */
	static public function nglUniformMatrix2dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** JNI method for {@link #glProgramUniform4dEXT ProgramUniform4dEXT}  */
	static public function nglProgramUniform4dEXT(program:Int,location:Int,x:Float,y:Float,z:Float,w:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniformMatrix4dv UniformMatrix4dv}  */
	static public function nglUniformMatrix4dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix3x2dvEXT ProgramUniformMatrix3x2dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix3x2dv UniformMatrix3x2dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x2dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix2dvEXT ProgramUniformMatrix2dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix2dvEXT ProgramUniformMatrix2dvEXT}  */
	static public function nglProgramUniformMatrix2dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform1dEXT ProgramUniform1dEXT}  */
	static public function nglProgramUniform1dEXT(program:Int,location:Int,x:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glProgramUniform2dvEXT ProgramUniform2dvEXT}  */
/** JNI method for {@link #glProgramUniform2dvEXT ProgramUniform2dvEXT}  */
	static public function nglProgramUniform2dvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix2x3dv UniformMatrix2x3dv}  */
	static public function nglUniformMatrix2x3dv(location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void;
/** Alternative version of: {@link #glProgramUniformMatrix4dvEXT ProgramUniformMatrix4dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix4dv UniformMatrix4dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix4dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix4x3dvEXT ProgramUniformMatrix4x3dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix4x3dvEXT ProgramUniformMatrix4x3dvEXT}  */
	static public function nglProgramUniformMatrix4x3dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/**
 * Specifies the value of a double uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param x        the uniform x value
 */
	static public function glUniform1d(location:Int,x:Float):Void;
/** Alternative version of: {@link #glUniformMatrix2x3dv UniformMatrix2x3dv}  */
/**
 * Specifies the value of a single dmat2x3 uniform variable or a dmat2x3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix2x3dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glUniform2dv Uniform2dv}  */
/**
 * Specifies the value of a single dvec2 uniform variable or a dvec2 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform2dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glUniform4dv Uniform4dv}  */
/**
 * Specifies the value of a single dvec4 uniform variable or a dvec4 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform4dv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.DoubleBuffer):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix3x4dvEXT ProgramUniformMatrix3x4dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix3x4dvEXT ProgramUniformMatrix3x4dvEXT}  */
	static public function nglProgramUniformMatrix3x4dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniform4dvEXT ProgramUniform4dvEXT}  */
/** JNI method for {@link #glProgramUniform4dvEXT ProgramUniform4dvEXT}  */
	static public function nglProgramUniform4dvEXT(program:Int,location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glProgramUniformMatrix3dvEXT ProgramUniformMatrix3dvEXT}  */
/** JNI method for {@link #glProgramUniformMatrix3dvEXT ProgramUniformMatrix3dvEXT}  */
	static public function nglProgramUniformMatrix3dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** JNI method for {@link #glProgramUniform2dEXT ProgramUniform2dEXT}  */
	static public function nglProgramUniform2dEXT(program:Int,location:Int,x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glUniformMatrix3dv UniformMatrix3dv}  */
/**
 * Specifies the value of a single dmat3 uniform variable or a dmat3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glUniformMatrix3dv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniform3dvEXT ProgramUniform3dvEXT}  */
/**
 * DSA version of {@link #glUniform3dv Uniform3dv}.
 *
 * @param program  the program object to update
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glProgramUniform3dvEXT(program:Int,location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,value:java.nio.DoubleBuffer):Void {})
/** Alternative version of: {@link #glProgramUniformMatrix3x4dvEXT ProgramUniformMatrix3x4dvEXT}  */
/**
 * DSA version of {@link #glUniformMatrix3x4dv UniformMatrix3x4dv}.
 *
 * @param program   the program object to update
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform matrix variable
 */
	static public function glProgramUniformMatrix3x4dvEXT(program:Int,location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,location:Int,transpose:Bool,value:java.nio.DoubleBuffer):Void {})
/** Returns the {@link ARBGPUShaderFP64} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBGPUShaderFP64;

}
