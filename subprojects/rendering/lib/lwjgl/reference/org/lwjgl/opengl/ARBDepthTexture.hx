package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDepthTexture")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/depth_texture.txt">ARB_depth_texture</a> extension.
 * 
 * <p>This extension defines a new depth texture format. An important application of depth texture images is shadow casting, but separating this from the
 * shadow extension allows for the potential use of depth textures in other applications such as image-based rendering or displacement mapping. This
 * extension does not define new depth-texture environment functions, such as filtering or applying the depth values computed from a texture but leaves
 * this to other extensions, such as the shadow extension.</p>
 * 
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class ARBDepthTexture 
{
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, CopyTexImage1D and CopyTexImage2D.  */
	inline static public var GL_DEPTH_COMPONENT16_ARB:Int = 33189;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, CopyTexImage1D and CopyTexImage2D.  */
	inline static public var GL_DEPTH_COMPONENT24_ARB:Int = 33190;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, CopyTexImage1D and CopyTexImage2D.  */
	inline static public var GL_DEPTH_COMPONENT32_ARB:Int = 33191;
/** Accepted by the {@code pname} parameter of GetTexLevelParameterfv and GetTexLevelParameteriv.  */
	inline static public var GL_TEXTURE_DEPTH_SIZE_ARB:Int = 34890;
/** Accepted by the {@code pname} parameter of TexParameterf, TexParameteri, TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_DEPTH_TEXTURE_MODE_ARB:Int = 34891;

}
