package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.KHRBlendEquationAdvancedCoherent")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/KHR/blend_equation_advanced.txt">KHR_blend_equation_advanced_coherent</a> extension.
 * 
 * <p>This extension guarantees that blending is done coherently and in API primitive order. An enable is provided to allow implementations to opt out of
 * fully coherent blending and instead behave as though only {@link KHRBlendEquationAdvanced KHR_blend_equation_advanced} were supported.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}.</p>
 */
extern class KHRBlendEquationAdvancedCoherent 
{
/**
 * Accepted by the {@code cap} parameter of Disable, Enable, and IsEnabled, and by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv,
 * GetDoublev and GetInteger64v.
 */
	inline static public var GL_BLEND_ADVANCED_COHERENT_KHR:Int = 37509;

}
