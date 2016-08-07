package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBCullDistance")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/cull_distance.txt">ARB_cull_distance</a> extension.
 * 
 * <p>This extension adds a new GLSL {@code gl_CullDistance} shader output, similar to {@code gl_ClipDistance}, but used for whole primitive culling.</p>
 * 
 * <p>This new stage in the pipeline is added as part of the primitive clipping stage.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}. Promoted to core in {@link GL45 OpenGL 4.5}.</p>
 */
extern class ARBCullDistance 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_CULL_DISTANCES:Int = 33529;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES:Int = 33530;

}
