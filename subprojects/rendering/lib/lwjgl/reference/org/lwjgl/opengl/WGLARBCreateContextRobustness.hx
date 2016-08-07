package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBCreateContextRobustness")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_create_context_robustness.txt">WGL_ARB_create_context_robustness</a> extension.
 * 
 * <p>This extension allows creating an OpenGL context supporting robust buffer access behavior and a specified graphics reset notification behavior.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string}, {@link WGLARBCreateContext WGL_ARB_create_context} and {@link ARBRobustness ARB_robustness}.</p>
 */
extern class WGLARBCreateContextRobustness 
{
/**
 * Accepted as a bit in the attribute value for {@link WGLARBCreateContext#WGL_CONTEXT_FLAGS_ARB CONTEXT_FLAGS_ARB} in the {@code attrib_list} argument to
 * {@link WGLARBCreateContext#wglCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB:Int = 4;
/** Accepted as an attribute name in the {@code attrib_list} argument to {@link WGLARBCreateContext#wglCreateContextAttribsARB CreateContextAttribsARB}.  */
	inline static public var WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB:Int = 33366;
/**
 * Accepted as an attribute value for {@link #WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB} in the {@code attrib_list} argument to
 * {@link WGLARBCreateContext#wglCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var WGL_NO_RESET_NOTIFICATION_ARB:Int = 33377;
/**
 * Accepted as an attribute value for {@link #WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB} in the {@code attrib_list} argument to
 * {@link WGLARBCreateContext#wglCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var WGL_LOSE_CONTEXT_ON_RESET_ARB:Int = 33362;

}
