package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLDevice")
/** This class is a wrapper around a cl_device_id pointer.  */
extern class CLDevice extends org.lwjgl.system.PointerWrapper 
{
	@:overload(function (cl_device_id:haxe.Int64,platformCapabilities:org.lwjgl.opencl.CLCapabilities):Void {})
	public function new(cl_device_id:haxe.Int64,platform:org.lwjgl.opencl.CLPlatform):Void;
/**
 * Creates a {@link CLCapabilities} instance for the specified OpenCL device.
 * <p/>
 * This method call is relatively expensive. The result should be cached and reused.
 *
 * @param cl_device_id the device to query
 *
 * @return the {@link CLCapabilities instance}
 */
	static public function createCapabilities(cl_device_id:haxe.Int64,platformCapabilities:org.lwjgl.opencl.CLCapabilities):org.lwjgl.opencl.CLCapabilities;
/** Returns the {@link CLCapabilities} instance associated with this OpenCL device.  */
	public function getCapabilities():org.lwjgl.opencl.CLCapabilities;

}
