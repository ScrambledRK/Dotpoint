package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVShaderThreadGroup")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/shader_thread_group.txt">NV_shader_thread_group</a> extension.
 * 
 * <p>Implementations of the OpenGL Shading Language may, but are not required to, run multiple shader threads for a single stage as a SIMD thread group,
 * where individual execution threads are assigned to thread groups in an undefined, implementation-dependent order. This extension provides a set of new
 * features to the OpenGL Shading Language to query thread states and to share data between fragments within a 2x2 pixel quad.</p>
 * 
 * <p>Requires {@link GL43 OpenGL 4.3}.</p>
 */
extern class NVShaderThreadGroup 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_WARP_SIZE_NV:Int = 37689;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_WARPS_PER_SM_NV:Int = 37690;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SM_COUNT_NV:Int = 37691;

}
