package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTFramebufferMultisampleBlitScaled")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_multisample_blit_scaled.txt">EXT_framebuffer_multisample_blit_scaled</a> extension.
 * 
 * <p>This extension relaxes some of the restrictions associated with multisample resolve operations, specifically to allow a combined resolve and scale
 * operation through a single call to BlitFramebuffer. It also adds two new filter types to control the quality of the combined scaled resolve operation.</p>
 * 
 * <p>In traditional multisampled framebuffer rendering, color samples must be explicitly resolved via BlitFramebuffer before any other operation on the
 * resulting pixel values can be performed. This multisample resolve operation must be done using a BlitFramebuffer call where the dimensions of the source
 * and destination rectangles are identical. If the resulting pixel values need to be copied to a texture with different dimensions, these resolved values
 * can then be scaled with a second call to BlitFramebuffer.</p>
 * 
 * <p>By requiring two separate calls to BlitFramebuffer, the quality of final image can be maintained to a certain degree. The samples are first resolved,
 * and then these resolved values can be filtered to produce the final image. This image quality comes at the price of increased memory usage and lower
 * performance. However, the scaling blit can still introduce artifacts, particularly if it is done with a simple bilinear filter.</p>
 * 
 * <p>The new filter types introduced by this extension allow the scaled resolve to be done with a single call to BlitFramebuffer. Not all samples from the
 * read framebuffer are required to be be used when producing the final pixel values, and there may be a loss in quality when compared to an image produced
 * by a separate resolve and scale. However, the single-pass scaled resolve blit should be faster than the traditional two-pass resolve then scale blits.</p>
 * 
 * <p>Requires {@link ARBFramebufferObject ARB_framebuffer_object}.</p>
 */
extern class EXTFramebufferMultisampleBlitScaled 
{
/** Accepted by the {@code filter} parameter of BlitFramebuffer.  */
	inline static public var GL_SCALED_RESOLVE_FASTEST_EXT:Int = 37050;
/** Accepted by the {@code filter} parameter of BlitFramebuffer.  */
	inline static public var GL_SCALED_RESOLVE_NICEST_EXT:Int = 37051;

}