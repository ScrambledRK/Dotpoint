package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLPlatform")
/** This class is a wrapper around a cl_platform_id pointer.  */
extern class CLPlatform extends org.lwjgl.system.PointerWrapper 
{
	public function new(cl_platform_id:haxe.Int64):Void;
/**
 * Creates a {@link CLCapabilities} instance for the specified OpenCL platform.
 * <p/>
 * This method call is relatively expensive. The result should be cached and reused.
 *
 * @param cl_platform_id the platform to query
 *
 * @return the {@link CLCapabilities instance}
 */
	static public function createCapabilities(cl_platform_id:haxe.Int64):org.lwjgl.opencl.CLCapabilities;
/**
 * Returns a list of the available devices on this platform that
 * match the specified type.
 *
 * @param device_type the device type
 *
 * @return the available devices
 */
/**
 * Returns a list of the available devices on this platform that
 * match the specified type, filtered by the specified filter.
 *
 * @param device_type the device type
 * @param filter      the device filter
 *
 * @return the available devices
 */
	public function getDevices(device_type:Int,filter:org.lwjgl.opencl.CLPlatform_Filter<org.lwjgl.opencl.CLDevice>):java.util.List<org.lwjgl.opencl.CLDevice>;
	@:overload(function (device_type:Int):java.util.List<org.lwjgl.opencl.CLDevice> {})
/**
 * Returns a list of all the available platforms.
 *
 * @return the available platforms
 */
/**
 * Returns a list of the available platforms, filtered by the specified filter.
 *
 * @param filter the platform filter
 *
 * @return the available platforms
 */
	static public function getPlatforms(filter:org.lwjgl.opencl.CLPlatform_Filter<org.lwjgl.opencl.CLPlatform>):java.util.List<org.lwjgl.opencl.CLPlatform>;
	@:overload(function ():java.util.List<org.lwjgl.opencl.CLPlatform> {})
/** Returns the {@link CLCapabilities} instance associated with this OpenCL platform.  */
	public function getCapabilities():org.lwjgl.opencl.CLCapabilities;

}
