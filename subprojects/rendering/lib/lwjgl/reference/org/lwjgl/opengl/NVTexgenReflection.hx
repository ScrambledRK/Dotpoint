package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVTexgenReflection")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/texgen_reflection.txt">NV_texgen_reflection</a> extension.
 * 
 * <p>This extension provides two new texture coordinate generation modes that are useful texture-based lighting and environment mapping.</p>
 */
extern class NVTexgenReflection 
{
/** Accepted by the {@code param} parameter of TexGend, TexGenf, TexGeni when {@code pname} parameter is TEXTURE_GEN_MODE  */
	inline static public var GL_NORMAL_MAP_NV:Int = 34065;
/** Accepted by the {@code param} parameter of TexGend, TexGenf, TexGeni when {@code pname} parameter is TEXTURE_GEN_MODE  */
	inline static public var GL_REFLECTION_MAP_NV:Int = 34066;

}
