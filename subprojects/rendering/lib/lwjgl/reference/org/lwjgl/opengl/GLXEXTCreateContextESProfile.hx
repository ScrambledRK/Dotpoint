package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXEXTCreateContextESProfile")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/glx_create_context_es2_profile.txt">GLX_EXT_create_context_es_profile</a> extension.
 * 
 * <p>This extension allows creating an OpenGL ES context.</p>
 * 
 * <p>Requires {@link GLX14 GLX 1.4}, {@link GLXARBCreateContext GLX_ARB_create_context}, {@link GLXARBCreateContextProfile GLX_ARB_create_context_profile} and an OpenGL ES implemenation.</p>
 */
extern class GLXEXTCreateContextESProfile 
{
/** Accepted as a bit in the attribute value for {@link GLXARBCreateContextProfile#GLX_CONTEXT_PROFILE_MASK_ARB CONTEXT_PROFILE_MASK_ARB} in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_ES_PROFILE_BIT_EXT:Int = 4;

}
