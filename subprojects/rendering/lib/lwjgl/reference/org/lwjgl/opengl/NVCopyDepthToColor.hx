package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVCopyDepthToColor")
@:final
/**
 * Some applications, especially systems for distributed OpenGL rendering, would like to have a fast way of copying their depth buffer into a color
 * buffer; for example, this allows the depth buffer to be scanned out, allowing downstream compositing operations.
 * 
 * <p>To do this operation in unextended OpenGL, the app must use {@link GL11#glReadPixels ReadPixels} of {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT} data, followed by {@link GL11#glDrawPixels DrawPixels} of {@link GL11#GL_RGBA RGBA}
 * data. However, this typically will not provide adequate performance.</p>
 * 
 * <p>This extension provides a way to copy the depth data directly into the color buffer, by adding two new options for the "type" parameter of
 * {@link GL11#glCopyPixels CopyPixels}: {@link #GL_DEPTH_STENCIL_TO_RGBA_NV DEPTH_STENCIL_TO_RGBA_NV} and {@link #GL_DEPTH_STENCIL_TO_BGRA_NV DEPTH_STENCIL_TO_BGRA_NV}.</p>
 * 
 * <p>Requires {@link NVPackedDepthStencil NV_packed_depth_stencil}.</p>
 */
extern class NVCopyDepthToColor 
{
/** Accepted by the {@code type} parameter of CopyPixels.  */
	inline static public var GL_DEPTH_STENCIL_TO_RGBA_NV:Int = 34926;
/** Accepted by the {@code type} parameter of CopyPixels.  */
	inline static public var GL_DEPTH_STENCIL_TO_BGRA_NV:Int = 34927;

}
