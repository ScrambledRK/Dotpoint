package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.EXTAtomicCounters64")
@:final
/**
 * Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/ext/cl_ext_atomic_counters_64.txt">ext_atomic_counters_64</a> extension.
 * 
 * <p>This extension adds support in the OpenCL C language for 64-bit atomic counters. Atomic counter is a device-level counter that can be added /
 * decremented by work-items in a work-group or across work-groups executing a kernel, where the atomicity of the operation is guaranteed. The access to
 * the counter is done only via add/dec built-in functions, and as such no two workitems will see the same value returned in the case that a given kernel
 * only increments or decrements the counter.</p>
 * 
 * <p>This feature is highly useful for produce/consume to unordered queues.</p>
 */
extern class EXTAtomicCounters64 
{
/**
 * Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.
 * 
 * <p>Max number of atomic counters that can be used by a kernel. The minimum value is 8.</p>
 */
	inline static public var CL_DEVICE_MAX_ATOMIC_COUNTERS_EXT:Int = 16434;

}
