package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBRobustnessShareGroupIsolation")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_robustness_isolation.txt">WGL_ARB_robustness_share_group_isolation</a> extension.
 * 
 * <p>GL_ARB_robustness and WGL_ARB_create_context_robustness allow creating an OpenGL context supporting graphics reset notification behavior.
 * WGL_ARB_robustness_share_group_isolation provides stronger guarantees about the possible side-effects of a graphics reset.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string} and {@link WGLARBCreateContextRobustness WGL_ARB_create_context_robustness}.</p>
 */
extern class WGLARBRobustnessShareGroupIsolation 
{
/**
 * Accepted as a bit in the attribute value for {@link WGLARBCreateContext#WGL_CONTEXT_FLAGS_ARB CONTEXT_FLAGS_ARB} in the {@code attribList} argument to
 * {@link WGLARBCreateContext#wglCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var WGL_CONTEXT_RESET_ISOLATION_BIT_ARB:Int = 8;

}
