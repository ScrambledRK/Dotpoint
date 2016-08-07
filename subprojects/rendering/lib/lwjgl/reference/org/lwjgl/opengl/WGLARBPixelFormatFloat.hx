package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBPixelFormatFloat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/color_buffer_float.txt">WGL_ARB_pixel_format_float</a> extension.
 * 
 * <p>This extension adds pixel formats with floating-point RGBA color components.</p>
 * 
 * <p>Requires {@link WGLARBPixelFormat WGL_ARB_pixel_format} and {@link GL15 OpenGL 1.5}.</p>
 */
extern class WGLARBPixelFormatFloat 
{
/**
 * Accepted as a value in the {@code attribIList} parameter array of {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the {@code values}
 * parameter array of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}.
 */
	inline static public var WGL_TYPE_RGBA_FLOAT_ARB:Int = 8608;

}
