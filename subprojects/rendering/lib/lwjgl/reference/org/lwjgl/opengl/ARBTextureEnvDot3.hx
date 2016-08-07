package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureEnvDot3")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_env_dot3.txt">ARB_texture_env_dot3</a> extension.
 * 
 * <p>Adds new dot product operation to the texture combiner operations.</p>
 * 
 * <p>Requires {@link ContextCapabilities#GL_ARB_multitexture} and {@link ARBTextureEnvCombine ARB_texture_env_combine}. Promoted to core in {@link GL13 OpenGL 1.3}.</p>
 */
extern class ARBTextureEnvDot3 
{
/** Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB_ARB.  */
	inline static public var GL_DOT3_RGB_ARB:Int = 34478;
/** Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB_ARB.  */
	inline static public var GL_DOT3_RGBA_ARB:Int = 34479;

}
