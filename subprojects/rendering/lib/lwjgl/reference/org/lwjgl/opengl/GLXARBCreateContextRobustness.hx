package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBCreateContextRobustness")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/glx_create_context_robustness.txt">GLX_ARB_create_context_robustness</a> extension.
 * 
 * <p>This extension allows creating an OpenGL context supporting robust buffer access behavior and a specified graphics reset notification behavior.</p>
 * 
 * <p>Requires {@link GLX14 GLX 1.4}, {@link GLXARBCreateContext GLX_ARB_create_context} and {@link ARBRobustness ARB_robustness}.</p>
 */
extern class GLXARBCreateContextRobustness 
{
/**
 * Accepted as a bit in the attribute value for {@link GLXARBCreateContext#GLX_CONTEXT_FLAGS_ARB CONTEXT_FLAGS_ARB} in the {@code attrib_list} argument to
 * {@link GLXARBCreateContext#glXCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var GLX_CONTEXT_ROBUST_ACCESS_BIT_ARB:Int = 4;
/** Accepted as an attribute name in the {@code attrib_list} argument to {@link GLXARBCreateContext#glXCreateContextAttribsARB CreateContextAttribsARB}.  */
	inline static public var GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB:Int = 33366;
/**
 * Accepted as an attribute value for {@link #GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB} in the {@code attrib_list} argument to
 * {@link GLXARBCreateContext#glXCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var GLX_NO_RESET_NOTIFICATION_ARB:Int = 33377;
/**
 * Accepted as an attribute value for {@link #GLX_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB} in the {@code attrib_list} argument to
 * {@link GLXARBCreateContext#glXCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var GLX_LOSE_CONTEXT_ON_RESET_ARB:Int = 33362;

}
