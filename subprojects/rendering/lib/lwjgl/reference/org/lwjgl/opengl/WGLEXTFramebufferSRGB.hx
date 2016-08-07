package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLEXTFramebufferSRGB")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_sRGB.txt">WGL_EXT_framebuffer_sRGB</a> extension.
 * 
 * <p>This extension adds a framebuffer capability for sRGB framebuffer update and blending.</p>
 * 
 * <p>Requires {@link WGLEXTExtensionsString WGL_EXT_extensions_string} and {@link WGLARBPixelFormat WGL_ARB_pixel_format}.</p>
 */
extern class WGLEXTFramebufferSRGB 
{
/**
 * Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB} and the {@code attribIList} of
 * {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB:Int = 8361;

}
