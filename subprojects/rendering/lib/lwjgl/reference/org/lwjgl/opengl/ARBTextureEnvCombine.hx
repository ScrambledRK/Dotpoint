package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureEnvCombine")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_env_combine.txt">ARB_texture_env_combine</a> extension.
 * 
 * <p>New texture environment function COMBINE_ARB allows programmable texture combiner operations.</p>
 * 
 * <p>Requires {@link ContextCapabilities#GL_ARB_multitexture}. Promoted to core in {@link GL13 OpenGL 1.3}.</p>
 */
extern class ARBTextureEnvCombine 
{
/** Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is TEXTURE_ENV_MODE.  */
	inline static public var GL_COMBINE_ARB:Int = 34160;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_COMBINE_RGB_ARB:Int = 34161;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_COMBINE_ALPHA_ARB:Int = 34162;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE0_RGB_ARB:Int = 34176;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE1_RGB_ARB:Int = 34177;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE2_RGB_ARB:Int = 34178;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE0_ALPHA_ARB:Int = 34184;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE1_ALPHA_ARB:Int = 34185;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_SOURCE2_ALPHA_ARB:Int = 34186;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND0_RGB_ARB:Int = 34192;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND1_RGB_ARB:Int = 34193;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND2_RGB_ARB:Int = 34194;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND0_ALPHA_ARB:Int = 34200;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND1_ALPHA_ARB:Int = 34201;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_OPERAND2_ALPHA_ARB:Int = 34202;
/** Accepted by the {@code pname} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code target} parameter value is TEXTURE_ENV.  */
	inline static public var GL_RGB_SCALE_ARB:Int = 34163;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB_ARB or
 * COMBINE_ALPHA_ARB.
 */
	inline static public var GL_ADD_SIGNED_ARB:Int = 34164;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB_ARB or
 * COMBINE_ALPHA_ARB.
 */
	inline static public var GL_INTERPOLATE_ARB:Int = 34165;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is COMBINE_RGB_ARB or
 * COMBINE_ALPHA_ARB.
 */
	inline static public var GL_SUBTRACT_ARB:Int = 34023;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is SOURCE0_RGB_ARB,
 * SOURCE1_RGB_ARB, SOURCE2_RGB_ARB, SOURCE0_ALPHA_ARB, SOURCE1_ALPHA_ARB, or SOURCE2_ALPHA_ARB.
 */
	inline static public var GL_CONSTANT_ARB:Int = 34166;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is SOURCE0_RGB_ARB,
 * SOURCE1_RGB_ARB, SOURCE2_RGB_ARB, SOURCE0_ALPHA_ARB, SOURCE1_ALPHA_ARB, or SOURCE2_ALPHA_ARB.
 */
	inline static public var GL_PRIMARY_COLOR_ARB:Int = 34167;
/**
 * Accepted by the {@code params} parameter of TexEnvf, TexEnvi, TexEnvfv, and TexEnviv when the {@code pname} parameter value is SOURCE0_RGB_ARB,
 * SOURCE1_RGB_ARB, SOURCE2_RGB_ARB, SOURCE0_ALPHA_ARB, SOURCE1_ALPHA_ARB, or SOURCE2_ALPHA_ARB.
 */
	inline static public var GL_PREVIOUS_ARB:Int = 34168;

}
