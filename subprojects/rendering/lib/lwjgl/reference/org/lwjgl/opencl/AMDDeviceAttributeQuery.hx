package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.AMDDeviceAttributeQuery")
@:final
/**
 * Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/amd/cl_amd_device_attribute_query.txt">amd_device_attribute_query</a> extension.
 * 
 * <p>This extension provides a means to query AMD-specific device attributes.</p>
 */
extern class AMDDeviceAttributeQuery 
{
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_PROFILING_TIMER_OFFSET_AMD:Int = 16438;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_GLOBAL_FREE_MEMORY_AMD:Int = 16441;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_SIMD_PER_COMPUTE_UNIT_AMD:Int = 16448;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_SIMD_WIDTH_AMD:Int = 16449;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_SIMD_INSTRUCTION_WIDTH_AMD:Int = 16450;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_WAVEFRONT_WIDTH_AMD:Int = 16451;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_GLOBAL_MEM_CHANNELS_AMD:Int = 16452;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_GLOBAL_MEM_CHANNEL_BANKS_AMD:Int = 16453;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_GLOBAL_MEM_CHANNEL_BANK_WIDTH_AMD:Int = 16454;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_LOCAL_MEM_SIZE_PER_COMPUTE_UNIT_AMD:Int = 16455;
/** Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}.  */
	inline static public var CL_DEVICE_LOCAL_MEM_BANKS_AMD:Int = 16456;

}
