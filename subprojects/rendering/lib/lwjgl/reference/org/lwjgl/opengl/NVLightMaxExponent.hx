package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVLightMaxExponent")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/light_max_exponent.txt">NV_light_max_exponent</a> extension.
 * 
 * <p>Default OpenGL does not permit a shininess or spot exponent over 128.0.  This extension permits implementations to support and advertise a maximum
 * shininess and spot exponent beyond 128.0.</p>
 */
extern class NVLightMaxExponent 
{
/** Accepted by the {@code pname} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev  */
	inline static public var GL_MAX_SHININESS_NV:Int = 34052;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev  */
	inline static public var GL_MAX_SPOT_EXPONENT_NV:Int = 34053;

}
