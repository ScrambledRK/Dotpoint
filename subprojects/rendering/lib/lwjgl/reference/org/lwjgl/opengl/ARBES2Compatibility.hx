package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBES2Compatibility")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/ES2_compatibility.txt">ARB_ES2_compatibility</a> extension.
 * 
 * <p>This extension adds support for features of OpenGL ES 2.0 that are missing from OpenGL 3.x. Enabling these features will ease the process of porting
 * applications from OpenGL ES 2.0 to OpenGL.</p>
 * 
 * <p>Promoted to core in {@link GL41 OpenGL 4.1}.</p>
 */
extern class ARBES2Compatibility 
{
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SHADER_COMPILER:Int = 36346;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_SHADER_BINARY_FORMATS:Int = 36344;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_NUM_SHADER_BINARY_FORMATS:Int = 36345;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_UNIFORM_VECTORS:Int = 36347;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VARYING_VECTORS:Int = 36348;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_UNIFORM_VECTORS:Int = 36349;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_IMPLEMENTATION_COLOR_READ_TYPE:Int = 35738;
/** Accepted by the {@code value} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_IMPLEMENTATION_COLOR_READ_FORMAT:Int = 35739;
/** Accepted by the {@code type} parameter of VertexAttribPointer.  */
	inline static public var GL_FIXED:Int = 5132;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_LOW_FLOAT:Int = 36336;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_MEDIUM_FLOAT:Int = 36337;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_HIGH_FLOAT:Int = 36338;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_LOW_INT:Int = 36339;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_MEDIUM_INT:Int = 36340;
/** Accepted by the {@code precisiontype} parameter of GetShaderPrecisionFormat.  */
	inline static public var GL_HIGH_INT:Int = 36341;
/** Accepted by the {@code format} parameter of most commands taking sized internal formats.  */
	inline static public var GL_RGB565:Int = 36194;
/** Function address.  */
	public var ReleaseShaderCompiler:haxe.Int64;
/** Function address.  */
	public var ShaderBinary:haxe.Int64;
/** Function address.  */
	public var GetShaderPrecisionFormat:haxe.Int64;
/** Function address.  */
	public var DepthRangef:haxe.Int64;
/** Function address.  */
	public var ClearDepthf:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #glShaderBinary ShaderBinary}  */
/**
 * Loads pre-compiled shader binaries.
 *
 * @param count        the number of shader object handles contained in {@code shaders}
 * @param shaders      an array of shader handles into which to load pre-compiled shader binaries
 * @param binaryformat the format of the shader binaries contained in {@code binary}
 * @param binary       an array of bytes containing pre-compiled binary shader code
 * @param length       the length of the array whose address is given in binary
 */
	static public function glShaderBinary(count:Int,shaders:java.nio.ByteBuffer,binaryformat:Int,binary:java.nio.ByteBuffer,length:Int):Void;
	@:overload(function (shaders:java.nio.IntBuffer,binaryformat:Int,binary:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetShaderPrecisionFormat GetShaderPrecisionFormat}  */
/**
 * Retrieves the range and precision for numeric formats supported by the shader compiler.
 *
 * @param shadertype    the type of shader whose precision to query. One of:<br>{@link GL20#GL_VERTEX_SHADER VERTEX_SHADER}, {@link GL20#GL_FRAGMENT_SHADER FRAGMENT_SHADER}
 * @param precisiontype the numeric format whose precision and range to query
 * @param range         the address of array of two integers into which encodings of the implementation's numeric range are returned
 * @param precision     the address of an integer into which the numeric precision of the implementation is written
 */
/** Alternative version of: {@link #glGetShaderPrecisionFormat GetShaderPrecisionFormat}  */
	static public function glGetShaderPrecisionFormat(shadertype:Int,precisiontype:Int,range:java.nio.IntBuffer,precision:java.nio.IntBuffer):Void;
	@:overload(function (shadertype:Int,precisiontype:Int,range:java.nio.IntBuffer):Int {})
	@:overload(function (shadertype:Int,precisiontype:Int,range:java.nio.ByteBuffer,precision:java.nio.ByteBuffer):Void {})
/** Releases resources allocated by the shader compiler. This is a hint from the application, and does not prevent later use of the shader compiler.  */
	static public function glReleaseShaderCompiler():Void;
/** Unsafe version of {@link #glGetShaderPrecisionFormat GetShaderPrecisionFormat}  */
	static public function nglGetShaderPrecisionFormat(shadertype:Int,precisiontype:Int,range:haxe.Int64,precision:haxe.Int64):Void;
/** Unsafe version of {@link #glShaderBinary ShaderBinary}  */
	static public function nglShaderBinary(count:Int,shaders:haxe.Int64,binaryformat:Int,binary:haxe.Int64,length:Int):Void;
/** Returns the {@link ARBES2Compatibility} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBES2Compatibility;
/**
 * Specifies mapping of depth values from normalized device coordinates to window coordinates
 *
 * @param zNear the mapping of the near clipping plane to window coordinates. The initial value is 0.0f.
 * @param zFar  the mapping of the far clipping plane to window coordinates. The initial value is 1.0f.
 */
	static public function glDepthRangef(zNear:Float,zFar:Float):Void;
/**
 * Specifies the clear value for the depth buffer
 *
 * @param depth the depth value used when the depth buffer is cleared. The initial value is 1.0f.
 */
	static public function glClearDepthf(depth:Float):Void;

}
