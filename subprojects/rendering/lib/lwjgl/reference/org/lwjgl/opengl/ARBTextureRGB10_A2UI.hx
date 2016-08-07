package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureRGB10_A2UI")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_rgb10_a2ui.txt">ARB_texture_rgb10_a2ui</a> extension.
 * 
 * <p>This extension adds support for a new texturing format for unsigned 10.10.10.2 integer textures.</p>
 * 
 * <p>OpenGL has supported {@link GL11#GL_RGB10 RGB10} and {@link GL11#GL_RGB10_A2 RGB10_A2} formats for a very long time. This extension provides a variant of RGB10_A2 which supports unsigned
 * integer data (in contrast to the above "unsigned normalized integer" formats).</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0} or <a href="http://www.opengl.org/registry/specs/EXT/texture_integer.txt">EXT_texture_integer</a>. Promoted to core in {@link GL33 OpenGL 3.3}.</p>
 */
extern class ARBTextureRGB10_A2UI 
{
/**
 * Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, RenderbufferStorage and
 * RenderbufferStorageMultisample.
 */
	inline static public var GL_RGB10_A2UI:Int = 36975;

}
