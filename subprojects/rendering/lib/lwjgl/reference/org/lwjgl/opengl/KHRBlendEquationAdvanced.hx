package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.KHRBlendEquationAdvanced")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/KHR/blend_equation_advanced.txt">KHR_blend_equation_advanced</a> extension.
 * 
 * <p>This extension adds a number of "advanced" blending equations that can be used to perform new color blending operations, many of which are more complex
 * than the standard blend modes provided by unextended OpenGL. This extension provides two different extension string entries:
 * <ul>
 * <li><b>KHR_blend_equation_advanced</b>:Provides the new blending equations, but guarantees defined results only if each sample is touched no more than
 * once in any single rendering pass. The command {@link #glBlendBarrierKHR BlendBarrierKHR} is provided to indicate a boundary between passes.</li>
 * <li>{@link KHRBlendEquationAdvancedCoherent KHR_blend_equation_advanced_coherent}: Provides the new blending equations, and guarantees that blending is
 * done coherently and in API primitive order. An enable is provided to allow implementations to opt out of fully coherent blending and instead behave
 * as though only KHR_blend_equation_advanced were supported.</li>
 * </ul>
 * Some implementations may support KHR_blend_equation_advanced without supporting KHR_blend_equation_advanced_coherent.</p>
 * 
 * <p>In unextended OpenGL, the set of blending equations is limited, and can be expressed very simply. The {@link ARBImaging#GL_MIN MIN} and {@link ARBImaging#GL_MAX MAX} blend equations
 * simply compute component-wise minimums or maximums of source and destination color components. The {@link ARBImaging#GL_FUNC_ADD FUNC_ADD}, {@link ARBImaging#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, and
 * {@link ARBImaging#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT} multiply the source and destination colors by source and destination factors and either add the two products together
 * or subtract one from the other. This limited set of operations supports many common blending operations but precludes the use of more sophisticated
 * transparency and blending operations commonly available in many dedicated imaging APIs.</p>
 * 
 * <p>This extension provides a number of new "advanced" blending equations. Unlike traditional blending operations using the {@link ARBImaging#GL_FUNC_ADD FUNC_ADD} equation,
 * these blending equations do not use source and destination factors specified by {@link GL11#glBlendFunc BlendFunc}. Instead, each blend equation specifies a complete
 * equation based on the source and destination colors. These new blend equations are used for both RGB and alpha components; they may not be used to
 * perform separate RGB and alpha blending (via functions like {@link GL20#glBlendEquationSeparate BlendEquationSeparate}).</p>
 * 
 * <p>These blending operations are performed using premultiplied source and destination colors, where RGB colors produced by the fragment shader and stored
 * in the framebuffer are considered to be multiplied by alpha (coverage). Many of these advanced blending equations are formulated where the result of
 * blending source and destination colors with partial coverage have three separate contributions: from the portions covered by both the source and the
 * destination, from the portion covered only by the source, and from the portion covered only by the destination. Such equations are defined assuming that
 * the source and destination coverage have no spatial correlation within the pixel.</p>
 * 
 * <p>In addition to the coherency issues on implementations not supporting KHR_blend_equation_advanced_coherent, this extension has several limitations worth
 * noting. First, the new blend equations are not supported while rendering to more than one color buffer at once; an {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} will be
 * generated if an application attempts to render any primitives in this unsupported configuration. Additionally, blending precision may be limited to
 * 16-bit floating-point, which could result in a loss of precision and dynamic range for framebuffer formats with 32-bit floating-point components, and in
 * a loss of precision for formats with 12- and 16-bit signed or unsigned normalized integer components.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}.</p>
 */
extern class KHRBlendEquationAdvanced 
{
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_MULTIPLY_KHR:Int = 37524;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SCREEN_KHR:Int = 37525;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_OVERLAY_KHR:Int = 37526;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DARKEN_KHR:Int = 37527;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_LIGHTEN_KHR:Int = 37528;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_COLORDODGE_KHR:Int = 37529;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_COLORBURN_KHR:Int = 37530;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HARDLIGHT_KHR:Int = 37531;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SOFTLIGHT_KHR:Int = 37532;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DIFFERENCE_KHR:Int = 37534;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_EXCLUSION_KHR:Int = 37536;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_HUE_KHR:Int = 37549;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_SATURATION_KHR:Int = 37550;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_COLOR_KHR:Int = 37551;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_LUMINOSITY_KHR:Int = 37552;
/** Function address.  */
	public var BlendBarrierKHR:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Specifies a boundary between passes when using advanced blend equations.
 * 
 * <p>When using advanced blending equations, applications should split their rendering into a collection of blending passes, none of which touch an
 * individual sample in the framebuffer more than once. The results of blending are undefined if the sample being blended has been touched previously in
 * the same pass. Any command that causes the value of a sample to be modified using the framebuffer is considered to touch the sample, including clears,
 * blended or unblended primitives, and {@link GL30#glBlitFramebuffer BlitFramebuffer} copies.</p>
 */
	static public function glBlendBarrierKHR():Void;
/** JNI method for {@link #glBlendBarrierKHR BlendBarrierKHR}  */
	static public function nglBlendBarrierKHR(__functionAddress:haxe.Int64):Void;
/** Returns the {@link KHRBlendEquationAdvanced} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.KHRBlendEquationAdvanced;

}
