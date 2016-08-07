package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTBlendEquationSeparate")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/blend_equation_separate.txt">EXT_blend_equation_separate</a> extension.
 * 
 * <p><a href="http://www.opengl.org/registry/specs/EXT/blend_func_separate.txt">EXT_blend_func_separate</a> introduced separate RGB and alpha blend factors. <a href="http://www.opengl.org/registry/specs/EXT/blend_minmax.txt">EXT_blend_minmax</a> introduced a
 * distinct blend equation for combining source and destination blend terms. (<a href="http://www.opengl.org/registry/specs/EXT_blend_subtract/blend_subtract.txt">EXT_blend_subtract_blend_subtract</a> &
 * <a href="http://www.opengl.org/registry/specs/EXT/blend_logic_op.txt">EXT_blend_logic_op</a> added other blend equation modes.) OpenGL 1.4 integrated both functionalities into the core standard.</p>
 * 
 * <p>While there are separate blend functions for the RGB and alpha blend factors, OpenGL 1.4 provides a single blend equation that applies to both RGB and
 * alpha portions of blending.</p>
 * 
 * <p>This extension provides a separate blend equation for RGB and alpha to match the generality available for blend factors.</p>
 * 
 * <p>Requires {@link GL14 OpenGL 1.4} or {@link ARBImaging ARB_imaging} or <a href="http://www.opengl.org/registry/specs/EXT/blend_minmax.txt">EXT_blend_minmax</a> and/or
 * <a href="http://www.opengl.org/registry/specs/EXT_blend_subtract/blend_subtract.txt">EXT_blend_subtract_blend_subtract</a>. Promoted to core in {@link GL20 OpenGL 2.0}.</p>
 */
extern class EXTBlendEquationSeparate 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_EQUATION_RGB_EXT:Int = 32777;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_EQUATION_ALPHA_EXT:Int = 34877;
/** Function address.  */
	public var BlendEquationSeparateEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Returns the {@link EXTBlendEquationSeparate} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTBlendEquationSeparate;
/** JNI method for {@link #glBlendEquationSeparateEXT BlendEquationSeparateEXT}  */
	static public function nglBlendEquationSeparateEXT(modeRGB:Int,modeAlpha:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param modeRGB   
 * @param modeAlpha 
 */
	static public function glBlendEquationSeparateEXT(modeRGB:Int,modeAlpha:Int):Void;

}
