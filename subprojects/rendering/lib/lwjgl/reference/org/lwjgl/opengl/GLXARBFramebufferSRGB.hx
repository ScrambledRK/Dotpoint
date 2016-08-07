package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBFramebufferSRGB")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/framebuffer_sRGB.txt">GLX_ARB_framebuffer_sRGB</a> extension.
 * 
 * <p>Conventionally, OpenGL assumes framebuffer color components are stored in a linear color space.  In particular, framebuffer blending is a linear
 * operation.</p>
 * 
 * <p>The sRGB color space is based on typical (non-linear) monitor characteristics expected in a dimly lit office.  It has been standardized by the
 * International Electrotechnical Commission (IEC) as IEC 61966-2-1. The sRGB color space roughly corresponds to 2.2 gamma correction.</p>
 * 
 * <p>This extension adds a framebuffer capability for sRGB framebuffer update and blending.</p>
 * 
 * <p>Requires {@link ARBFramebufferObject ARB_framebuffer_object}.</p>
 */
extern class GLXARBFramebufferSRGB 
{
/** Accepted by the {@code attribList} parameter of {@link GLX#glXChooseVisual ChooseVisual}, and by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}.  */
	inline static public var GLX_FRAMEBUFFER_SRGB_CAPABLE_ARB:Int = 8370;

}
