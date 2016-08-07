package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL21")
@:final
/**
 * The core OpenGL 2.1 functionality. OpenGL 2.1 implementations must support at least revision 1.20 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/pixel_buffer_object.txt">ARB_pixel_buffer_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/texture_sRGB.txt">EXT_texture_sRGB</a></li>
 * </ul></p>
 */
extern class GL21 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CURRENT_RASTER_SECONDARY_COLOR:Int = 33887;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT2x3:Int = 35685;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT2x4:Int = 35686;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT3x2:Int = 35687;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT3x4:Int = 35688;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT4x2:Int = 35689;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_FLOAT_MAT4x3:Int = 35690;
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferParameteriv, and
 * GetBufferPointerv.
 */
	inline static public var GL_PIXEL_PACK_BUFFER:Int = 35051;
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferParameteriv, and
 * GetBufferPointerv.
 */
	inline static public var GL_PIXEL_UNPACK_BUFFER:Int = 35052;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_PIXEL_PACK_BUFFER_BINDING:Int = 35053;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_PIXEL_UNPACK_BUFFER_BINDING:Int = 35055;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB:Int = 35904;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB8:Int = 35905;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB_ALPHA:Int = 35906;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB8_ALPHA8:Int = 35907;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE_ALPHA:Int = 35908;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE8_ALPHA8:Int = 35909;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE:Int = 35910;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE8:Int = 35911;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SRGB:Int = 35912;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SRGB_ALPHA:Int = 35913;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SLUMINANCE:Int = 35914;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SLUMINANCE_ALPHA:Int = 35915;
/** Function address.  */
	public var UniformMatrix2x3fv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix3x2fv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix2x4fv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix4x2fv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix3x4fv:haxe.Int64;
/** Function address.  */
	public var UniformMatrix4x3fv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glUniformMatrix2x4fv UniformMatrix2x4fv}  */
/** JNI method for {@link #glUniformMatrix2x4fv UniformMatrix2x4fv}  */
	static public function nglUniformMatrix2x4fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix2x3fv UniformMatrix2x3fv}  */
/** JNI method for {@link #glUniformMatrix2x3fv UniformMatrix2x3fv}  */
	static public function nglUniformMatrix2x3fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix4x2fv UniformMatrix4x2fv}  */
/** JNI method for {@link #glUniformMatrix4x2fv UniformMatrix4x2fv}  */
	static public function nglUniformMatrix4x2fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix4x3fv UniformMatrix4x3fv}  */
/** JNI method for {@link #glUniformMatrix4x3fv UniformMatrix4x3fv}  */
	static public function nglUniformMatrix4x3fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniformMatrix2x3fv UniformMatrix2x3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix2x3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat2x3 uniform variable or a mat2x3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix2x3fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix2x4fv UniformMatrix2x4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix2x4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat2x4 uniform variable or a mat2x4 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix2x4fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix4x2fv UniformMatrix4x2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix4x2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat4x2 uniform variable or a mat4x2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix4x2fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix4x3fv UniformMatrix4x3fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix4x3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat4x3 uniform variable or a mat4x3 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix4x3fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Unsafe version of {@link #glUniformMatrix3x4fv UniformMatrix3x4fv}  */
/** JNI method for {@link #glUniformMatrix3x4fv UniformMatrix3x4fv}  */
	static public function nglUniformMatrix3x4fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniformMatrix3x2fv UniformMatrix3x2fv}  */
/** JNI method for {@link #glUniformMatrix3x2fv UniformMatrix3x2fv}  */
	static public function nglUniformMatrix3x2fv(location:Int,count:Int,transpose:Bool,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,transpose:Bool,value:haxe.Int64):Void {})
/** Returns the {@link GL21} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL21;
/** Alternative version of: {@link #glUniformMatrix3x4fv UniformMatrix3x4fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix3x4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat3x4 uniform variable or a mat3x4 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix3x4fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})
/** Alternative version of: {@link #glUniformMatrix3x2fv UniformMatrix3x2fv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformMatrix3x2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single mat3x2 uniform variable or a mat3x2 uniform variable array for the current program object.
 *
 * @param location  the location of the uniform variable to be modified
 * @param count     the number of matrices that are to be modified. This should be 1 if the targeted uniform variable is not an array of matrices, and 1 or more if it is an array of matrices.
 * @param transpose whether to transpose the matrix as the values are loaded into the uniform variable
 * @param value     a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniformMatrix3x2fv(location:Int,count:Int,transpose:Bool,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,transpose:Bool,value:java.nio.FloatBuffer):Void {})

}
