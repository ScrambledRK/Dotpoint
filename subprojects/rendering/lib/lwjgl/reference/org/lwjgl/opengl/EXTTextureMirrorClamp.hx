package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTextureMirrorClamp")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_mirror_clamp.txt">EXT_texture_mirror_clamp</a> extension.
 * 
 * <p>EXT_texture_mirror_clamp extends the set of texture wrap modes to include three modes ({@link #GL_MIRROR_CLAMP_EXT MIRROR_CLAMP_EXT}, {@link #GL_MIRROR_CLAMP_TO_EDGE_EXT MIRROR_CLAMP_TO_EDGE_EXT},
 * {@link #GL_MIRROR_CLAMP_TO_BORDER_EXT MIRROR_CLAMP_TO_BORDER_EXT}) that effectively use a texture map twice as large as the original image in which the additional half of the new image is
 * a mirror image of the original image.</p>
 * 
 * <p>This new mode relaxes the need to generate images whose opposite edges match by using the original image to generate a matching "mirror image". This
 * mode allows the texture to be mirrored only once in the negative s, t, and r directions.</p>
 */
extern class EXTTextureMirrorClamp 
{
/**
 * Accepted by the {@code param} parameter of TexParameteri and TexParameterf, and by the {@code params} parameter of TexParameteriv and TexParameterfv,
 * when their {@code pname} parameter is TEXTURE_WRAP_S, TEXTURE_WRAP_T, or TEXTURE_WRAP_R.
 */
	inline static public var GL_MIRROR_CLAMP_EXT:Int = 34626;
/**
 * Accepted by the {@code param} parameter of TexParameteri and TexParameterf, and by the {@code params} parameter of TexParameteriv and TexParameterfv,
 * when their {@code pname} parameter is TEXTURE_WRAP_S, TEXTURE_WRAP_T, or TEXTURE_WRAP_R.
 */
	inline static public var GL_MIRROR_CLAMP_TO_EDGE_EXT:Int = 34627;
/**
 * Accepted by the {@code param} parameter of TexParameteri and TexParameterf, and by the {@code params} parameter of TexParameteriv and TexParameterfv,
 * when their {@code pname} parameter is TEXTURE_WRAP_S, TEXTURE_WRAP_T, or TEXTURE_WRAP_R.
 */
	inline static public var GL_MIRROR_CLAMP_TO_BORDER_EXT:Int = 35090;

}
