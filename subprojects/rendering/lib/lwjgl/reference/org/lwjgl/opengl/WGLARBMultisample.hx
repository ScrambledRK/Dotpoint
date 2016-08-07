package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBMultisample")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/multisample.txt">WGL_ARB_multisample</a> extension.
 * 
 * <p>See {@link ARBMultisample} for details.</p>
 * 
 * <p>Requires {@link WGLEXTExtensionsString WGL_EXT_extensions_string} and {@link WGLARBPixelFormat WGL_ARB_pixel_format}.</p>
 */
extern class WGLARBMultisample 
{
/**
 * Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB},
 * {@link WGLARBPixelFormat#wglGetPixelFormatAttribfARB GetPixelFormatAttribfARB}, and the {@code attribIList} and {@code attribFList} of
 * {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SAMPLE_BUFFERS_ARB:Int = 8257;
/**
 * Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB},
 * {@link WGLARBPixelFormat#wglGetPixelFormatAttribfARB GetPixelFormatAttribfARB}, and the {@code attribIList} and {@code attribFList} of
 * {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SAMPLES_ARB:Int = 8258;

}
