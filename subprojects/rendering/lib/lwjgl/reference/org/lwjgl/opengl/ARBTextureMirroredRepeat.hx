package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureMirroredRepeat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_mirrored_repeat.txt">ARB_texture_mirrored_repeat</a> extension.
 * 
 * <p>ARB_texture_mirrored_repeat extends the set of texture wrap modes to include a mode ({@link #GL_MIRRORED_REPEAT_ARB MIRRORED_REPEAT_ARB}) that effectively uses a texture map twice
 * as large at the original image in which the additional half, for each coordinate, of the new image is a mirror image of the original image.</p>
 * 
 * <p>This new mode relaxes the need to generate images whose opposite edges match by using the original image to generate a matching "mirror image".</p>
 * 
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class ARBTextureMirroredRepeat 
{
/**
 * Accepted by the {@code param} parameter of TexParameteri and TexParameterf, and by the {@code params} parameter of TexParameteriv and TexParameterfv,
 * when their {@code pname} parameter is TEXTURE_WRAP_S, TEXTURE_WRAP_T, or TEXTURE_WRAP_R.
 */
	inline static public var GL_MIRRORED_REPEAT_ARB:Int = 33648;

}