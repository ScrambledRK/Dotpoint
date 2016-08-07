package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTBlendSubtract")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/blend_subtract.txt">EXT_blend_subtract</a> extension.
 * 
 * <p>Two additional blending equations are specified using the interface defined by <a href="http://www.opengl.org/registry/specs/EXT/blend_minmax.link.txt">EXT_blend_minmax.link</a>. These equations are similar to the default
 * blending equation, but produce the difference of its left and right hand sides, rather than the sum.  Image differences are useful in many image
 * processing applications.</p>
 * 
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class EXTBlendSubtract 
{
/** Accepted by the {@code mode} parameter of BlendEquationEXT.  */
	inline static public var GL_FUNC_SUBTRACT_EXT:Int = 32778;
/** Accepted by the {@code mode} parameter of BlendEquationEXT.  */
	inline static public var GL_FUNC_REVERSE_SUBTRACT_EXT:Int = 32779;

}
