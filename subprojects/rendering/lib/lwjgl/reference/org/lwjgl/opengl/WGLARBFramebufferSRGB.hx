package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBFramebufferSRGB")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/framebuffer_sRGB.txt">WGL_ARB_framebuffer_sRGB</a> extension.
 * 
 * <p>This extension adds a framebuffer capability for sRGB framebuffer update and blending.</p>
 * 
 * <p>Requires {@link WGLEXTExtensionsString WGL_EXT_extensions_string}, {@link WGLARBPixelFormat WGL_ARB_pixel_format} and {@link ARBFramebufferObject ARB_framebuffer_object}.</p>
 */
extern class WGLARBFramebufferSRGB 
{
/**
 * Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB} and the {@code attribIList} of
 * {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB:Int = 8361;

}
