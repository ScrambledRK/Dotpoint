package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.NVDeviceAttributeQuery")
@:final
/**
 * Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/nv/cl_nv_device_attribute_query.txt">nv_device_attribute_query</a> extension.
 * 
 * <p>This extension provides a mechanism to query device attributes specific to <strong>NVIDIA</strong> hardware. This will enable the programmer to
 * optimize OpenCL kernels based on the specifics of the hardware.</p>
 */
extern class NVDeviceAttributeQuery 
{
/** Returns the major revision number that defines the CUDA compute capability of the device.  */
	inline static public var CL_DEVICE_COMPUTE_CAPABILITY_MAJOR_NV:Int = 16384;
/** Returns the minor revision number that defines the CUDA compute capability of the device.  */
	inline static public var CL_DEVICE_COMPUTE_CAPABILITY_MINOR_NV:Int = 16385;
/** Maximum number of 32-bit registers available to a work-group; this number is shared by all work-groups simultaneously resident on a multiprocessor.  */
	inline static public var CL_DEVICE_REGISTERS_PER_BLOCK_NV:Int = 16386;
/** Warp size in work-items.  */
	inline static public var CL_DEVICE_WARP_SIZE_NV:Int = 16387;
/** Returns {@link CL10#CL_TRUE TRUE} if the device can concurrently copy memory between host and device while executing a kernel, or {@link CL10#CL_FALSE FALSE} if not.  */
	inline static public var CL_DEVICE_GPU_OVERLAP_NV:Int = 16388;
/** Returns {@link CL10#CL_TRUE TRUE} if there is a run time limit for kernels executed on the device, or {@link CL10#CL_FALSE FALSE} if not.  */
	inline static public var CL_DEVICE_KERNEL_EXEC_TIMEOUT_NV:Int = 16389;
/** Returns {@link CL10#CL_TRUE TRUE} if the device is integrated with the memory subsystem, or {@link CL10#CL_FALSE FALSE} if not.  */
	inline static public var CL_DEVICE_INTEGRATED_MEMORY_NV:Int = 16390;

}
