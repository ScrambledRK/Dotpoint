package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBFragmentShader")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/fragment_shader.txt">ARB_fragment_shader</a> extension.
 * 
 * <p>This extension adds functionality to define fragment shader objects. A fragment shader object is a shader object (see the ARB_shader_objects extension)
 * that, when attached to a program object, can be compiled and linked to produce an executable that runs on the fragment processor in OpenGL. The fragment
 * processor is a programmable unit that replaces the OpenGL 1.4 fixed-function texturing, color sum and fog stages. This extension also defines how such
 * an executable interacts with the fixed functionality fragment processing of OpenGL 1.4. The language is defined in the OpenGL Shading Language
 * specification as the Fragment Shading Language.</p>
 * 
 * <p>Promoted to core in {@link GL20 OpenGL 2.0}.</p>
 */
extern class ARBFragmentShader 
{
/** Accepted by the {@code shaderType} argument of CreateShaderObjectARB and returned by the {@code params} parameter of GetObjectParameter{fi}vARB.  */
	inline static public var GL_FRAGMENT_SHADER_ARB:Int = 35632;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB:Int = 35657;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TEXTURE_COORDS_ARB:Int = 34929;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TEXTURE_IMAGE_UNITS_ARB:Int = 34930;
/** Accepted by the {@code target} parameter of Hint and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB:Int = 35723;

}
