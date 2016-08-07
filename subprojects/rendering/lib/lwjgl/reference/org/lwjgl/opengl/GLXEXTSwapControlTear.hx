package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXEXTSwapControlTear")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/glx_swap_control_tear.txt">GLX_EXT_swap_control_tear</a> extension.
 * 
 * <p>This extension extends the existing GLX_EXT_swap_control extension by allowing a negative {@code interval} parameter to
 * {@link GLXEXTSwapControl#glXSwapIntervalEXT SwapIntervalEXT}. The negative {@code interval} allows late swaps to occur without synchronization to the video frame. This
 * reduces the visual stutter on late frames and reduces the stall on subsequent frames.</p>
 * 
 * <p>Requires {@link GLXEXTSwapControl GLX_EXT_swap_control}.</p>
 */
extern class GLXEXTSwapControlTear 
{
/** Accepted by {@link GLX13#glXQueryDrawable QueryDrawable}.  */
	inline static public var GLX_LATE_SWAPS_TEAR_EXT:Int = 8435;

}
