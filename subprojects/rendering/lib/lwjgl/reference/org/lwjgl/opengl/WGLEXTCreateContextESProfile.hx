package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLEXTCreateContextESProfile")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/wgl_create_context_es2_profile.txt">WGL_EXT_create_context_es_profile</a> extension.
 * 
 * <p>This extension allows creating an OpenGL ES context.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string}, {@link WGLARBCreateContext WGL_ARB_create_context}, {@link WGLARBCreateContextProfile WGL_ARB_create_context_profile} and an OpenGL ES implementation.</p>
 */
extern class WGLEXTCreateContextESProfile 
{
/** Accepted as a bit in the attribute value for {@link WGLARBCreateContextProfile#WGL_CONTEXT_PROFILE_MASK_ARB CONTEXT_PROFILE_MASK_ARB} in {@code attribList}.  */
	inline static public var WGL_CONTEXT_ES_PROFILE_BIT_EXT:Int = 4;

}
