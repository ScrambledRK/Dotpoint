package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTextureCompressionLATC")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_compression_latc.txt">EXT_texture_compression_latc</a> extension.
 * 
 * <p>This extension introduces four new block-based texture compression formats suited for unsigned and signed luminance and luminance-alpha textures (hence
 * the name "latc" for Luminance-Alpha Texture Compression).</p>
 * 
 * <p>These formats are designed to reduce the storage requirements and memory bandwidth required for luminance and luminance-alpha textures by a factor of
 * 2-to-1 over conventional uncompressed luminance and luminance-alpha textures with 8-bit components ({@link GL11#GL_LUMINANCE8 LUMINANCE8} and {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}).</p>
 * 
 * <p>The compressed signed luminance-alpha format is reasonably suited for storing compressed normal maps.</p>
 * 
 * <p>Requires {@link GL13 OpenGL 1.3} or {@link ARBTextureCompression ARB_texture_compression}.</p>
 */
extern class EXTTextureCompressionLATC 
{
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_LUMINANCE_LATC1_EXT:Int = 35952;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT:Int = 35953;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT:Int = 35954;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT:Int = 35955;

}