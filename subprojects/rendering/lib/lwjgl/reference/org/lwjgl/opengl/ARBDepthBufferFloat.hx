package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDepthBufferFloat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/depth_buffer_float.txt">ARB_depth_buffer_float</a> extension.
 * 
 * <p>This extension provides new texture internal formats whose depth components are stored as 32-bit floating-point values, rather than the normalized
 * unsigned integers used in existing depth formats. Floating-point depth textures support all the functionality supported for fixed-point depth textures,
 * including shadow mapping and rendering support via <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_object.txt">EXT_framebuffer_object</a>. Floating-point depth textures can store values
 * outside the range [0,1].</p>
 * 
 * <p>Additionally, this extension provides new packed depth/stencil pixel formats (see <a href="http://www.opengl.org/registry/specs/EXT/packed_depth_stencil.txt">EXT_packed_depth_stencil</a>) that have 64-bit
 * pixels consisting of a 32-bit floating-point depth value, 8 bits of stencil, and 24 unused bites. A packed depth/stencil texture internal format is also
 * provided.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}, {@link ARBColorBufferFloat ARB_color_buffer_float}, <a href="http://www.opengl.org/registry/specs/EXT/packed_depth_stencil.txt">EXT_packed_depth_stencil</a> and {@link ARBFramebufferObject ARB_framebuffer_object}.
 * Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBDepthBufferFloat 
{
/**
 * Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorageEXT, and
 * returned in the {@code data} parameter of GetTexLevelParameter and GetRenderbufferParameterivEXT.
 */
	inline static public var GL_DEPTH_COMPONENT32F:Int = 36012;
/**
 * Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorageEXT, and
 * returned in the {@code data} parameter of GetTexLevelParameter and GetRenderbufferParameterivEXT.
 */
	inline static public var GL_DEPTH32F_STENCIL8:Int = 36013;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and
 * GetTexImage.
 */
	inline static public var GL_FLOAT_32_UNSIGNED_INT_24_8_REV:Int = 36269;

}
