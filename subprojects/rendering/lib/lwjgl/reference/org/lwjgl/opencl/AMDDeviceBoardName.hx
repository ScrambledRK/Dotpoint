package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.AMDDeviceBoardName")
@:final
/**
 * Native bindings to the <strong>amd_device_board_name</strong> extension.
 * 
 * <p>This query enables the developer to get the name of the GPU board and model of the specific device. Currently, this is only for GPU devices.</p>
 */
extern class AMDDeviceBoardName 
{
/**
 * Accepted as the {@code param_name} parameter of {@link CL10#clGetDeviceInfo GetDeviceInfo}. Returns the name of the GPU board and model of the specific device.
 * 
 * <p>Currently, this is only for GPU devices. The returned name is a 128-character value.</p>
 */
	inline static public var CL_DEVICE_BOARD_NAME_AMD:Int = 16440;

}
