package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShadow")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shadow.txt">ARB_shadow</a> extension.
 * 
 * <p>This extension supports comparing the texture R coordinate to a depth texture value in order to produce a boolean texture value. This can be used to
 * implement shadow maps.</p>
 * 
 * <p>The extension is written in generic terms such that other texture comparison modes can be accommodated in the future.</p>
 * 
 * <p>Requires {@link ARBDepthTexture ARB_depth_texture}. Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class ARBShadow 
{
/** Accepted by the {@code pname} parameter of TexParameterf, TexParameteri, TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_COMPARE_MODE_ARB:Int = 34892;
/** Accepted by the {@code pname} parameter of TexParameterf, TexParameteri, TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_COMPARE_FUNC_ARB:Int = 34893;
/**
 * Accepted by the {@code param} parameter of TexParameterf, TexParameteri, TexParameterfv, and TexParameteriv when the {@code pname} parameter is
 * TEXTURE_COMPARE_MODE_ARB.
 */
	inline static public var GL_COMPARE_R_TO_TEXTURE_ARB:Int = 34894;

}
