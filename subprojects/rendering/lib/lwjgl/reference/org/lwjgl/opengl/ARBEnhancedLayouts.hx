package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBEnhancedLayouts")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/enhanced_layouts.txt">ARB_enhanced_layouts</a> extension.
 * 
 * <p>This extension adds the following functionality to layout qualifiers, including broadening the API where this functionality is reflected. The following
 * are added:
 * <ol>
 * <li>Use compile-time constant expressions.</li>
 * <li>Specify explicit byte offsets within a uniform or shader storage block.</li>
 * <li>Force alignment within a uniform or shader storage block.</li>
 * <li>Specify component numbers to more fully utilize the vec4-slot interfaces between shader outputs and shader inputs.</li>
 * <li>Specify transform/feedback buffers, locations, and widths.</li>
 * <li>Allow locations on input and output blocks for SSO interface matching.</li>
 * </ol>
 * Requires {@link GL31 OpenGL 3.1} and GLSL 1.40. Promoted to core in {@link GL44 OpenGL 4.4}.</p>
 */
extern class ARBEnhancedLayouts 
{
/** Accepted in the {@code props} array of {@link GL43#glGetProgramResourceiv GetProgramResourceiv}.  */
	inline static public var GL_LOCATION_COMPONENT:Int = 37706;
/** Accepted in the {@code props} array of {@link GL43#glGetProgramResourceiv GetProgramResourceiv}.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_INDEX:Int = 37707;
/** Accepted in the {@code props} array of {@link GL43#glGetProgramResourceiv GetProgramResourceiv}.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE:Int = 37708;

}
