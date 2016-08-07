package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTextureCompressionS3TC")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_compression_s3tc.txt">EXT_texture_compression_s3tc</a> extension.
 * 
 * <p>This extension provides additional texture compression functionality specific to S3's S3TC format (called DXTC in Microsoft's DirectX API), subject to
 * all the requirements and limitations described by the extension {@link ARBTextureCompression ARB_texture_compression}.</p>
 * 
 * <p>This extension supports DXT1, DXT3, and DXT5 texture compression formats. For the DXT1 image format, this specification supports an RGB-only mode and a
 * special RGBA mode with single-bit "transparent" alpha.</p>
 * 
 * <p>Requires {@link ARBTextureCompression ARB_texture_compression}.</p>
 */
extern class EXTTextureCompressionS3TC 
{
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RGB_S3TC_DXT1_EXT:Int = 33776;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RGBA_S3TC_DXT1_EXT:Int = 33777;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RGBA_S3TC_DXT3_EXT:Int = 33778;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RGBA_S3TC_DXT5_EXT:Int = 33779;

}
