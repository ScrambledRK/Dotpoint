package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.AMDDeviceProfilingTimerOffset")
@:final
/** Native bindings to the <strong>amd_device_profiling_timer_offset</strong> extension.  */
extern class AMDDeviceProfilingTimerOffset 
{
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}. Returns the offset in nanoseconds between event timestamps.  */
	inline static public var CL_DEVICE_PROFILING_TIMER_OFFSET_AMD:Int = 16438;

}
