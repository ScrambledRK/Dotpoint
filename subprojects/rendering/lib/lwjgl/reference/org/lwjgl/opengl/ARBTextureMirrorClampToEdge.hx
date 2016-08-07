package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureMirrorClampToEdge")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_mirror_clamp_to_edge.txt">ARB_texture_mirror_clamp_to_edge</a> extension.
 * 
 * <p>ARB_texture_mirror_clamp_to_edge extends the set of texture wrap modes to include an additional mode ({@link #GL_MIRROR_CLAMP_TO_EDGE MIRROR_CLAMP_TO_EDGE}) that effectively uses a
 * texture map twice as large as the original image in which the additional half of the new image is a mirror image of the original image.</p>
 * 
 * <p>This new mode relaxes the need to generate images whose opposite edges match by using the original image to generate a matching "mirror image". This
 * mode allows the texture to be mirrored only once in the negative s, t, and r directions.</p>
 * 
 * <p>Requires {@link GL14 OpenGL 1.4}. Promoted to core in {@link GL44 OpenGL 4.4}.</p>
 */
extern class ARBTextureMirrorClampToEdge 
{
/**
 * Accepted by the {@code param} parameter of TexParameter{if}, SamplerParameter{if} and SamplerParameter{if}v, and by the {@code params} parameter of
 * TexParameter{if}v, TexParameterI{i ui}v and SamplerParameterI{i ui}v when their {@code pname} parameter is {@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, or
 * {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}.
 */
	inline static public var GL_MIRROR_CLAMP_TO_EDGE:Int = 34627;

}
