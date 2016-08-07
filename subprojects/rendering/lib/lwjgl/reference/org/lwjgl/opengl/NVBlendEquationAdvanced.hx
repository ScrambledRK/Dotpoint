package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVBlendEquationAdvanced")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/blend_equation_advanced.txt">NV_blend_equation_advanced</a> extension.
 * 
 * <p>This extension adds a number of "advanced" blending equations that can be
 * used to perform new color blending operations, many of which are more
 * complex than the standard blend modes provided by unextended OpenGL.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}.</p>
 */
extern class NVBlendEquationAdvanced 
{
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev
 * and GetInteger64v.
 */
	inline static public var GL_BLEND_ADVANCED_COHERENT_NV:Int = 37509;
/** Accepted by the {@code pname} parameter of BlendParameteriNV, GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_PREMULTIPLIED_SRC_NV:Int = 37504;
/** Accepted by the {@code pname} parameter of BlendParameteriNV, GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_OVERLAP_NV:Int = 37505;
/** Accepted by the {@code value} parameter of BlendParameteriNV when <pname> is BLEND_OVERLAP_NV.  */
	inline static public var GL_UNCORRELATED_NV:Int = 34081;
/** Accepted by the {@code value} parameter of BlendParameteriNV when <pname> is BLEND_OVERLAP_NV.  */
	inline static public var GL_DISJOINT_NV:Int = 37507;
/** Accepted by the {@code value} parameter of BlendParameteriNV when <pname> is BLEND_OVERLAP_NV.  */
	inline static public var GL_CONJOINT_NV:Int = 37508;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SRC_NV:Int = 37510;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DST_NV:Int = 37511;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SRC_OVER_NV:Int = 37512;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DST_OVER_NV:Int = 37513;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SRC_IN_NV:Int = 37514;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DST_IN_NV:Int = 37515;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SRC_OUT_NV:Int = 37516;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DST_OUT_NV:Int = 37517;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SRC_ATOP_NV:Int = 37518;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DST_ATOP_NV:Int = 37519;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_XOR_NV:Int = 5382;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_MULTIPLY_NV:Int = 37524;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SCREEN_NV:Int = 37525;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_OVERLAY_NV:Int = 37526;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DARKEN_NV:Int = 37527;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_LIGHTEN_NV:Int = 37528;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_COLORDODGE_NV:Int = 37529;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_COLORBURN_NV:Int = 37530;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HARDLIGHT_NV:Int = 37531;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_SOFTLIGHT_NV:Int = 37532;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_DIFFERENCE_NV:Int = 37534;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_EXCLUSION_NV:Int = 37536;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_INVERT_RGB_NV:Int = 37539;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_LINEARDODGE_NV:Int = 37540;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_LINEARBURN_NV:Int = 37541;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_VIVIDLIGHT_NV:Int = 37542;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_LINEARLIGHT_NV:Int = 37543;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_PINLIGHT_NV:Int = 37544;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HARDMIX_NV:Int = 37545;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_HUE_NV:Int = 37549;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_SATURATION_NV:Int = 37550;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_COLOR_NV:Int = 37551;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_HSL_LUMINOSITY_NV:Int = 37552;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_PLUS_NV:Int = 37521;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_PLUS_CLAMPED_NV:Int = 37553;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_PLUS_CLAMPED_ALPHA_NV:Int = 37554;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_PLUS_DARKER_NV:Int = 37522;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_MINUS_NV:Int = 37535;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_MINUS_CLAMPED_NV:Int = 37555;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_CONTRAST_NV:Int = 37537;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_INVERT_OVG_NV:Int = 37556;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_RED_NV:Int = 6403;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_GREEN_NV:Int = 6404;
/** Accepted by the {@code mode} parameter of BlendEquation and BlendEquationi.  */
	inline static public var GL_BLUE_NV:Int = 6405;
/** Function address.  */
	public var BlendParameteriNV:haxe.Int64;
/** Function address.  */
	public var BlendBarrierNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * 
 *
 * @param pname 
 * @param value 
 */
	static public function glBlendParameteriNV(pname:Int,value:Int):Void;
/** JNI method for {@link #glBlendBarrierNV BlendBarrierNV}  */
	static public function nglBlendBarrierNV(__functionAddress:haxe.Int64):Void;
/** Returns the {@link NVBlendEquationAdvanced} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVBlendEquationAdvanced;
/** JNI method for {@link #glBlendParameteriNV BlendParameteriNV}  */
	static public function nglBlendParameteriNV(pname:Int,value:Int,__functionAddress:haxe.Int64):Void;
	static public function glBlendBarrierNV():Void;

}
