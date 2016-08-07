package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTextureSRGB")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_sRGB.txt">EXT_texture_sRGB</a> extension.
 * 
 * <p>Conventional texture formats assume a linear color space.  So for a conventional internal texture format such as GL_RGB8, the 256 discrete values for
 * each 8-bit color component map linearly and uniformly to the [0,1] range.</p>
 * 
 * <p>The sRGB color space is based on typical (non-linear) monitor characteristics expected in a dimly lit office.  It has been standardized by the
 * International Electrotechnical Commission (IEC) as IEC 61966-2-1. The sRGB color space roughly corresponds to 2.2 gamma correction.</p>
 * 
 * <p>This extension adds a few new uncompressed and compressed color texture formats with sRGB color components.</p>
 * 
 * <p>Promoted to core in {@link GL21 OpenGL 2.1}.</p>
 */
extern class EXTTextureSRGB 
{
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB_EXT:Int = 35904;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB8_EXT:Int = 35905;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB_ALPHA_EXT:Int = 35906;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SRGB8_ALPHA8_EXT:Int = 35907;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE_ALPHA_EXT:Int = 35908;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE8_ALPHA8_EXT:Int = 35909;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE_EXT:Int = 35910;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_SLUMINANCE8_EXT:Int = 35911;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SRGB_EXT:Int = 35912;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SRGB_ALPHA_EXT:Int = 35913;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SLUMINANCE_EXT:Int = 35914;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_SLUMINANCE_ALPHA_EXT:Int = 35915;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2DARB and the {@code format} parameter of
 * CompressedTexSubImage2DARB.
 */
	inline static public var GL_COMPRESSED_SRGB_S3TC_DXT1_EXT:Int = 35916;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2DARB and the {@code format} parameter of
 * CompressedTexSubImage2DARB.
 */
	inline static public var GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT:Int = 35917;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2DARB and the {@code format} parameter of
 * CompressedTexSubImage2DARB.
 */
	inline static public var GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT:Int = 35918;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2DARB and the {@code format} parameter of
 * CompressedTexSubImage2DARB.
 */
	inline static public var GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT:Int = 35919;

}
