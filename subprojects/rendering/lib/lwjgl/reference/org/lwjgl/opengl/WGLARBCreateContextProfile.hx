package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBCreateContextProfile")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_create_context.txt">WGL_ARB_create_context_profile</a> extension.
 * 
 * <p>Adds an attribute to {@link WGLARBCreateContext}, specifying the GL profile requested for a context of OpenGL 3.2 or later.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string} and {@link GL32 OpenGL 3.2}.</p>
 */
extern class WGLARBCreateContextProfile 
{
/** Accepted as an attribute name in {@code attribList}.  */
	inline static public var WGL_CONTEXT_PROFILE_MASK_ARB:Int = 37158;
/** Accepted as bits in the attribute value for {@link #WGL_CONTEXT_PROFILE_MASK_ARB CONTEXT_PROFILE_MASK_ARB} in {@code attribList}.  */
	inline static public var WGL_CONTEXT_CORE_PROFILE_BIT_ARB:Int = 1;
/** Accepted as bits in the attribute value for {@link #WGL_CONTEXT_PROFILE_MASK_ARB CONTEXT_PROFILE_MASK_ARB} in {@code attribList}.  */
	inline static public var WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB:Int = 2;
/** New errors returned by {@link org.lwjgl.system.windows.WinBase#GetLastError}.  */
	inline static public var ERROR_INVALID_PROFILE_ARB:Int = 8342;

}
