package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.AMDDevicePersistentMemory")
@:final
/**
 * Native bindings to the <strong>amd_device_persistent_memory</strong> extension.
 * 
 * <p>This extension adds support for the new buffer and image creation flag {@link #CL_MEM_USE_PERSISTENT_MEM_AMD MEM_USE_PERSISTENT_MEM_AMD}. Buffers and images allocated with this flag reside
 * in host-visible device memory.</p>
 */
extern class AMDDevicePersistentMemory 
{
/**
 * {@code cl_mem_flags} bit. Buffers and images allocated with this flag reside in host-visible device memory. This flag is mutually exclusive with the
 * flags {@link CL10#CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR} and {@link CL10#CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}.
 */
	inline static public var CL_MEM_USE_PERSISTENT_MEM_AMD:Int = 64;

}
