package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTextureInteger")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_integer.txt">EXT_texture_integer</a> extension.
 * 
 * <p>Fixed-point textures in unextended OpenGL have integer components, but those values are taken to represent floating-point values in the range [0,1].
 * These integer components are considered "normalized" integers. When such a texture is accessed by a shader or by fixed-function fragment processing,
 * floating-point values are returned.</p>
 * 
 * <p>This extension provides a set of new "unnormalized" integer texture formats. Formats with both signed and unsigned integers are provided. In these
 * formats, the components are treated as true integers. When such textures are accessed by a shader, actual integer values are returned.</p>
 * 
 * <p>Pixel operations that read from or write to a texture or color buffer with unnormalized integer components follow a path similar to that used for color
 * index pixel operations, except that more than one component may be provided at once. Integer values flow through the pixel processing pipe, and no pixel
 * transfer operations are performed. Integer format enumerants used for such operations indicate unnormalized integer data.</p>
 * 
 * <p>Textures or render buffers with unnormalized integer formats may also be attached to framebuffer objects to receive fragment color values written by a
 * fragment shader. Per-fragment operations that require floating-point color components, including multisample alpha operations, alpha test, blending, and
 * dithering, have no effect when the corresponding colors are written to an integer color buffer. The <a href="http://www.opengl.org/registry/specs/NV/gpu_program4.txt">NV_gpu_program4</a> and
 * <a href="http://www.opengl.org/registry/specs/EXT/gpu_shader4.txt">EXT_gpu_shader4</a> extensions add the capability to fragment programs and fragment shaders to write signed and unsigned integer
 * output values.</p>
 * 
 * <p>This extension does not enforce type consistency for texture accesses or between fragment shaders and the corresponding framebuffer attachments. The
 * results of a texture lookup from an integer texture are undefined:
 * <ul>
 * <li>for fixed-function fragment processing, or</li>
 * <li>for shader texture accesses expecting floating-point return values.</li>
 * </ul>
 * The color components used for per-fragment operations and written into a color buffer are undefined:
 * <ul>
 * <li>for fixed-function fragment processing with an integer color buffer,</li>
 * <li>for fragment shaders that write floating-point color components to an integer color buffer, or</li>
 * <li>for fragment shaders that write integer color components to a color buffer with floating point or normalized integer components.</li>
 * </ul>
 * Requires {@link GL20 OpenGL 2.0} and <a href="http://www.opengl.org/registry/specs/NV/gpu_program4.txt">NV_gpu_program4</a> or <a href="http://www.opengl.org/registry/specs/EXT/gpu_shader4.txt">EXT_gpu_shader4</a>. Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class EXTTextureInteger 
{
/** Accepted by the {@code pname} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_RGBA_INTEGER_MODE_EXT:Int = 36254;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA32UI_EXT:Int = 36208;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB32UI_EXT:Int = 36209;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA32UI_EXT:Int = 36210;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY32UI_EXT:Int = 36211;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE32UI_EXT:Int = 36212;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA32UI_EXT:Int = 36213;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA16UI_EXT:Int = 36214;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB16UI_EXT:Int = 36215;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA16UI_EXT:Int = 36216;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY16UI_EXT:Int = 36217;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE16UI_EXT:Int = 36218;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA16UI_EXT:Int = 36219;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA8UI_EXT:Int = 36220;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB8UI_EXT:Int = 36221;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA8UI_EXT:Int = 36222;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY8UI_EXT:Int = 36223;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE8UI_EXT:Int = 36224;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA8UI_EXT:Int = 36225;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA32I_EXT:Int = 36226;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB32I_EXT:Int = 36227;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA32I_EXT:Int = 36228;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY32I_EXT:Int = 36229;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE32I_EXT:Int = 36230;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA32I_EXT:Int = 36231;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA16I_EXT:Int = 36232;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB16I_EXT:Int = 36233;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA16I_EXT:Int = 36234;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY16I_EXT:Int = 36235;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE16I_EXT:Int = 36236;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA16I_EXT:Int = 36237;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA8I_EXT:Int = 36238;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB8I_EXT:Int = 36239;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA8I_EXT:Int = 36240;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY8I_EXT:Int = 36241;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE8I_EXT:Int = 36242;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA8I_EXT:Int = 36243;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_RED_INTEGER_EXT:Int = 36244;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_GREEN_INTEGER_EXT:Int = 36245;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_BLUE_INTEGER_EXT:Int = 36246;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_ALPHA_INTEGER_EXT:Int = 36247;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_RGB_INTEGER_EXT:Int = 36248;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_RGBA_INTEGER_EXT:Int = 36249;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_BGR_INTEGER_EXT:Int = 36250;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_BGRA_INTEGER_EXT:Int = 36251;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_LUMINANCE_INTEGER_EXT:Int = 36252;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_LUMINANCE_ALPHA_INTEGER_EXT:Int = 36253;
/** Function address.  */
	public var ClearColorIiEXT:haxe.Int64;
/** Function address.  */
	public var ClearColorIuiEXT:haxe.Int64;
/** Function address.  */
	public var TexParameterIivEXT:haxe.Int64;
/** Function address.  */
	public var TexParameterIuivEXT:haxe.Int64;
/** Function address.  */
	public var GetTexParameterIivEXT:haxe.Int64;
/** Function address.  */
	public var GetTexParameterIuivEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * 
 *
 * @param target 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glTexParameterIuivEXT TexParameterIuivEXT}  */
	static public function glTexParameterIuivEXT(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetTexParameterIuivEXT GetTexParameterIuivEXT}  */
/** JNI method for {@link #glGetTexParameterIuivEXT GetTexParameterIuivEXT}  */
	static public function nglGetTexParameterIuivEXT(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTexParameterIivEXT GetTexParameterIivEXT}  */
/** JNI method for {@link #glGetTexParameterIivEXT GetTexParameterIivEXT}  */
	static public function nglGetTexParameterIivEXT(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glClearColorIiEXT ClearColorIiEXT}  */
	static public function nglClearColorIiEXT(r:Int,g:Int,b:Int,a:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glTexParameterIuivEXT TexParameterIuivEXT}  */
/** JNI method for {@link #glTexParameterIuivEXT TexParameterIuivEXT}  */
	static public function nglTexParameterIuivEXT(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glTexParameterIivEXT TexParameterIivEXT}  */
/** JNI method for {@link #glTexParameterIivEXT TexParameterIivEXT}  */
	static public function nglTexParameterIivEXT(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetTexParameterIivEXT GetTexParameterIivEXT}  */
	static public function glGetTexParameterIiEXT(target:Int,pname:Int):Int;
/**
 * 
 *
 * @param r 
 * @param g 
 * @param b 
 * @param a 
 */
	static public function glClearColorIiEXT(r:Int,g:Int,b:Int,a:Int):Void;
/** Single value version of: {@link #glTexParameterIivEXT TexParameterIivEXT}  */
	static public function glTexParameterIiEXT(target:Int,pname:Int,param:Int):Void;
/** JNI method for {@link #glClearColorIuiEXT ClearColorIuiEXT}  */
	static public function nglClearColorIuiEXT(r:Int,g:Int,b:Int,a:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param target 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glGetTexParameterIuivEXT GetTexParameterIuivEXT}  */
	static public function glGetTexParameterIuivEXT(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param target 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glGetTexParameterIivEXT GetTexParameterIivEXT}  */
	static public function glGetTexParameterIivEXT(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param r 
 * @param g 
 * @param b 
 * @param a 
 */
	static public function glClearColorIuiEXT(r:Int,g:Int,b:Int,a:Int):Void;
/** Returns the {@link EXTTextureInteger} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTTextureInteger;
/** Single value version of: {@link #glTexParameterIuivEXT TexParameterIuivEXT}  */
	static public function glTexParameterIuiEXT(target:Int,pname:Int,param:Int):Void;
/** Single return value version of: {@link #glGetTexParameterIuivEXT GetTexParameterIuivEXT}  */
	static public function glGetTexParameterIuiEXT(target:Int,pname:Int):Int;
/**
 * 
 *
 * @param target 
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glTexParameterIivEXT TexParameterIivEXT}  */
	static public function glTexParameterIivEXT(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})

}
