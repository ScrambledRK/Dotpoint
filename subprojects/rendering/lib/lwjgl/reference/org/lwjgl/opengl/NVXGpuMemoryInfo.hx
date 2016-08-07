package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVXGpuMemoryInfo")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NVX/gpu_memory_info.txt">NVX_gpu_memory_info</a> extension.
 * 
 * <p>GL_NVX_gpu_memory_info provides applications visibility into GPU hardware memory utilization in order to allow the application to effectively manage
 * its resource allocations in the scope of the current available GPU memory.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}</p>
 */
extern class NVXGpuMemoryInfo 
{
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX:Int = 36935;
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX:Int = 36936;
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX:Int = 36937;
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX:Int = 36938;
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX:Int = 36939;

}
