package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBContextFlushControl")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/KHR/context_flush_control.txt">GLX_ARB_context_flush_control</a> extension.
 * 
 * <p>The GLX version of {@link KHRContextFlushControl}. This extension adds new context creation parameters the allow an application to specify the behavior
 * that is desired when a context is made non-current, and specifically to opt out of the implicit flush behavior.</p>
 */
extern class GLXARBContextFlushControl 
{
/** Accepted as an attribute name in the {@code *attrib_list} argument to {@link GLXARBCreateContext#glXCreateContextAttribsARB CreateContextAttribsARB}.  */
	inline static public var GLX_CONTEXT_RELEASE_BEHAVIOR_ARB:Int = 8343;
/**
 * Accepted as an attribute value for {@link #GLX_CONTEXT_RELEASE_BEHAVIOR_ARB CONTEXT_RELEASE_BEHAVIOR_ARB} in the {@code *attrib_list} argument to
 * {@link GLXARBCreateContext#glXCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var GLX_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB:Int = 0;
/**
 * Accepted as an attribute value for {@link #GLX_CONTEXT_RELEASE_BEHAVIOR_ARB CONTEXT_RELEASE_BEHAVIOR_ARB} in the {@code *attrib_list} argument to
 * {@link GLXARBCreateContext#glXCreateContextAttribsARB CreateContextAttribsARB}.
 */
	inline static public var GLX_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB:Int = 8344;

}
