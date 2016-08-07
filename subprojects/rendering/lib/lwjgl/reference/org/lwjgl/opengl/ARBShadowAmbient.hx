package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShadowAmbient")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shadow_ambient.txt">ARB_shadow_ambient</a> extension.
 * 
 * <p>This extension allows the user to specify the texture value to use when the texture compare function fails. Normally this value is zero. By allowing an
 * arbitrary value we can get functionality which otherwise requires an advanced texture combine extension (such as
 * <a href="http://www.opengl.org/registry/specs/NV/register_combiners.txt">NV_register_combiners</a>) and multiple texture units.</p>
 * 
 * <p>Requires {@link ARBShadow ARB_shadow} and {@link ARBDepthTexture ARB_depth_texture}.</p>
 */
extern class ARBShadowAmbient 
{
/** Accepted by the {@code pname} parameter of TexParameterf, TexParameteri, TexParameterfv, TexParameteriv, GetTexParameterfv, and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_COMPARE_FAIL_VALUE_ARB:Int = 32959;

}
