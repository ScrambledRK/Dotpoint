package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBCreateContextProfile")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/glx_create_context.txt">GLX_ARB_create_context_profile</a> extension.
 * 
 * <p>Adds an attribute to {@link GLXARBCreateContext}, specifying the GL profile requested for a context of OpenGL 3.2 or later.</p>
 * 
 * <p>Requires {@link GLX14 GLX 1.4} and {@link GL32 OpenGL 3.2}.</p>
 */
extern class GLXARBCreateContextProfile 
{
/** Accepted as an attribute name in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_PROFILE_MASK_ARB:Int = 37158;
/** Accepted as bits in the attribute value for {@link #GLX_CONTEXT_PROFILE_MASK_ARB CONTEXT_PROFILE_MASK_ARB} in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_CORE_PROFILE_BIT_ARB:Int = 1;
/** Accepted as bits in the attribute value for {@link #GLX_CONTEXT_PROFILE_MASK_ARB CONTEXT_PROFILE_MASK_ARB} in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB:Int = 2;
/** GLX error.  */
	inline static public var GLXBadProfileARB:Int = 13;

}
