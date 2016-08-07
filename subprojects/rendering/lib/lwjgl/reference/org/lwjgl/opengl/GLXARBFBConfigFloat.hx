package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBFBConfigFloat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/color_buffer_float.txt">GLX_ARB_fbconfig_float</a> extension.
 * 
 * <p>The standard OpenGL pipeline is based on a fixed-point pipeline. While color components are nominally floating-point values in the pipeline, components
 * are frequently clamped to the range [0,1] to accomodate the fixed-point color buffer representation and allow for fixed-point computational hardware.</p>
 * 
 * <p>This extension adds pixel formats or visuals with floating-point RGBA color components and controls for clamping of color components within the pipeline.</p>
 */
extern class GLXARBFBConfigFloat 
{
/** Accepted as values of the {@code render_type} arguments in the {@link GLX13#glXCreateNewContext CreateNewContext} and {@link GLX#glXCreateContext CreateContext} functions.  */
	inline static public var GLX_RGBA_FLOAT_TYPE:Int = 8377;
/** Accepted as a bit set in the GLX_RENDER_TYPE variable.  */
	inline static public var GLX_RGBA_FLOAT_BIT:Int = 4;

}
