package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureRG")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_rg.txt">ARB_texture_rg</a> extension.
 * 
 * <p>Historically one- and two- component textures have been specified in OpenGL using the intensity, luminance or luminance-alpha (I/L/LA) formats. With the
 * advent of programmable shaders and render-to-texture capabilites these legacy formats carry some historical artifacts which are no longer useful.</p>
 * 
 * <p>For example, when sampling from such textures, the luminance values are replicated across the color components, and the intensity values are replicated
 * across both the color and alpha components. This is no longer necessary with programmable shaders.</p>
 * 
 * <p>It is also desirable to be able to render to one- and two- component format textures using capabilities such as framebuffer objects (FBO), but rendering
 * to I/L/LA formats is under-specified (specifically how to map R/G/B/A values to I/L/A texture channels).</p>
 * 
 * <p>This extension adds new base internal formats for the one-component {@link #GL_RED RED} and two-component {@link #GL_RG RG} (red green) texture formats as well as sized internal
 * formats for fixed-point, floating-point and pure integer texture formats. The new texure formats can be used for texturing as well as for rendering into
 * with framebuffer objects.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBTextureRG 
{
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R8:Int = 33321;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16:Int = 33322;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG8:Int = 33323;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16:Int = 33324;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16F:Int = 33325;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R32F:Int = 33326;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16F:Int = 33327;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG32F:Int = 33328;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R8I:Int = 33329;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R8UI:Int = 33330;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16I:Int = 33331;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16UI:Int = 33332;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R32I:Int = 33333;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R32UI:Int = 33334;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG8I:Int = 33335;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG8UI:Int = 33336;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16I:Int = 33337;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16UI:Int = 33338;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG32I:Int = 33339;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG32UI:Int = 33340;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RED:Int = 6403;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG:Int = 33319;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RED:Int = 33317;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RG:Int = 33318;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and ReadPixels.  */
	inline static public var GL_RG_INTEGER:Int = 33320;

}
