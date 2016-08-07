package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShadingLanguage100")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shading_language_100.txt">ARB_shading_language_100</a> extension.
 * 
 * <p>This extension indicates that the OpenGL Shading Language is supported.</p>
 * 
 * <p>Requires {@link ARBShaderObjects ARB_shader_objects}, {@link ARBFragmentShader ARB_fragment_shader} and {@link ARBVertexShader ARB_vertex_shader}. Promoted to core in {@link GL20 OpenGL 2.0}.</p>
 */
extern class ARBShadingLanguage100 
{
/** Accepted by the {@code name} parameter of GetString.  */
	inline static public var GL_SHADING_LANGUAGE_VERSION_ARB:Int = 35724;

}
