package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBColorBufferFloat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/color_buffer_float.txt">ARB_color_buffer_float</a> extension.
 * 
 * <p>The standard OpenGL pipeline is based on a fixed-point pipeline. While color components are nominally floating-point values in the pipeline, components
 * are frequently clamped to the range [0,1] to accomodate the fixed-point color buffer representation and allow for fixed-point computational hardware.</p>
 * 
 * <p>This extension adds pixel formats or visuals with floating-point RGBA color components and controls for clamping of color components within the pipeline.</p>
 * 
 * <p>For a floating-point RGBA pixel format, the size of each float components is specified using the same attributes that are used for defining the size of
 * fixed-point components. 32-bit floating-point components are in the standard IEEE float format. 16-bit floating-point components have 1 sign bit, 5
 * exponent bits, and 10 mantissa bits.</p>
 * 
 * <p>Clamping control provides a way to disable certain color clamps and allow programs, and the fixed-function pipeline, to deal in unclamped colors. There
 * are controls to modify clamping of vertex colors, clamping of fragment colors throughout the pipeline, and for pixel return data.</p>
 * 
 * <p>The default state for fragment clamping is {@link #GL_FIXED_ONLY_ARB FIXED_ONLY_ARB}, which has the behavior of clamping colors for fixed-point color buffers and not clamping
 * colors for floating-pont color buffers.</p>
 * 
 * <p>Vertex colors are clamped by default.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBColorBufferFloat 
{
/** Accepted by the {@code pname} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_RGBA_FLOAT_MODE_ARB:Int = 34848;
/** Accepted by the {@code target} parameter of ClampColorARB and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLAMP_VERTEX_COLOR_ARB:Int = 35098;
/** Accepted by the {@code target} parameter of ClampColorARB and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLAMP_FRAGMENT_COLOR_ARB:Int = 35099;
/** Accepted by the {@code target} parameter of ClampColorARB and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLAMP_READ_COLOR_ARB:Int = 35100;
/** Accepted by the {@code clamp} parameter of ClampColorARB.  */
	inline static public var GL_FIXED_ONLY_ARB:Int = 35101;
/** Function address.  */
	public var ClampColorARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Controls color clamping.
 *
 * @param target the color target. One of:<br>{@link #GL_CLAMP_VERTEX_COLOR_ARB CLAMP_VERTEX_COLOR_ARB}, {@link #GL_CLAMP_FRAGMENT_COLOR_ARB CLAMP_FRAGMENT_COLOR_ARB}, {@link #GL_CLAMP_READ_COLOR_ARB CLAMP_READ_COLOR_ARB}
 * @param clamp  the new clamping state. One of:<br>{@link GL11#GL_TRUE TRUE}, {@link GL11#GL_FALSE FALSE}, {@link #GL_FIXED_ONLY_ARB FIXED_ONLY_ARB}
 */
	static public function glClampColorARB(target:Int,clamp:Int):Void;
/** JNI method for {@link #glClampColorARB ClampColorARB}  */
	static public function nglClampColorARB(target:Int,clamp:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link ARBColorBufferFloat} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBColorBufferFloat;

}
