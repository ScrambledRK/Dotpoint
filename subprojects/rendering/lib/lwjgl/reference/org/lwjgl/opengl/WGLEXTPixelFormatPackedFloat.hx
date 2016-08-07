package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLEXTPixelFormatPackedFloat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/packed_float.txt">WGL_EXT_pixel_format_packed_float</a> extension.
 * 
 * <p>This extension provides support for rendering into an unsigned floating-point rendering format with the assumption that the texture format described in
 * {@link EXTPackedFloat} could also be advertised as an unsigned floating-point format for rendering.</p>
 * 
 * <p>Requires {@link WGLARBPixelFormat WGL_ARB_pixel_format}.</p>
 */
extern class WGLEXTPixelFormatPackedFloat 
{
/**
 * Accepted as a value in the {@code attribIList} parameter array of {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the {@code values}
 * parameter array of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}.
 */
	inline static public var WGL_TYPE_RGBA_UNSIGNED_FLOAT_EXT:Int = 8360;

}
