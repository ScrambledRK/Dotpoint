package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureCompressionRGTC")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_compression_rgtc.txt">ARB_texture_compression_rgtc</a> extension.
 * 
 * <p>This extension introduces four new block-based texture compression formats suited for unsigned and signed red and red-green textures (hence the name
 * "rgtc" for Red-Green Texture Compression).</p>
 * 
 * <p>These formats are designed to reduce the storage requirements and memory bandwidth required for red and red-green textures by a factor of 2-to-1 over
 * conventional uncompressed luminance and luminance-alpha textures with 8-bit components ({@link GL11#GL_LUMINANCE8 LUMINANCE8} and {@link GL11#GL_LUMINANCE8_ALPHA8 LUMINANCE8_ALPHA8}).</p>
 * 
 * <p>The compressed signed red-green format is reasonably suited for storing compressed normal maps.</p>
 * 
 * <p>This extension uses the same compression format as the <a href="http://www.opengl.org/registry/specs/EXT/texture_compression_latc.txt">EXT_texture_compression_latc</a> extension except the color data is
 * stored in the red and green components rather than luminance and alpha. Representing compressed red and green components is consistent with the BC4 and
 * BC5 compressed formats supported by DirectX 10.</p>
 * 
 * <p>Requires {@link GL13 OpenGL 1.3} or {@link ARBTextureCompression ARB_texture_compression}. Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBTextureCompressionRGTC 
{
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RED_RGTC1:Int = 36283;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_SIGNED_RED_RGTC1:Int = 36284;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RG_RGTC2:Int = 36285;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_SIGNED_RG_RGTC2:Int = 36286;

}