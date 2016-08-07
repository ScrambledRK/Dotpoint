package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVPackedDepthStencil")
@:final
/**
 * This extension provides a new data format, {@link #GL_DEPTH_STENCIL_NV DEPTH_STENCIL_NV}, that can be used with the glDrawPixels, glReadPixels, and glCopyPixels commands, as well
 * as a packed data type, {@link #GL_UNSIGNED_INT_24_8_NV UNSIGNED_INT_24_8_NV}, that is meant to be used with GL_DEPTH_STENCIL_NV. No other formats are supported with
 * GL_DEPTH_STENCIL_NV. If <a href="http://www.opengl.org/registry/specs/SGIX/depth_texture.txt">NV_packed_depth_stencil</a> is supported, GL_DEPTH_STENCIL_NV/GL_UNSIGNED_INT_24_8_NV data can also be used for
 * textures; this provides a more efficient way to supply data for a 24-bit depth texture.
 */
extern class NVPackedDepthStencil 
{
/**
 * Accepted by the {@code format} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D,
 * and GetTexImage, and by the {@code type} parameter of CopyPixels.
 */
	inline static public var GL_DEPTH_STENCIL_NV:Int = 34041;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and
 * GetTexImage.
 */
	inline static public var GL_UNSIGNED_INT_24_8_NV:Int = 34042;

}
