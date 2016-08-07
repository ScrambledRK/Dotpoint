package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBStencilTexturing")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/stencil_texturing.txt">ARB_stencil_texturing</a> extension.
 * 
 * <p>This extension allows texturing of the stencil component of a packed depth stencil texture. Stencil values are returned as unsigned integers. It is not
 * possible to sample both depth and stencil values from the same texture, and this extension allows the app to select which is sampled for the bound
 * texture.</p>
 * 
 * <p>Requires {@link ARBDepthTexture ARB_depth_texture} and <a href="http://www.opengl.org/registry/specs/EXT/packed_depth_stencil.txt">EXT_packed_depth_stencil</a>. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBStencilTexturing 
{
/** Accepted by the {@code pname} parameter of TexParameter and GetTexParameter*.  */
	inline static public var GL_DEPTH_STENCIL_TEXTURE_MODE:Int = 37098;

}
