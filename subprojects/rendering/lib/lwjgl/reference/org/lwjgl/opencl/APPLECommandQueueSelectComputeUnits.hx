package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.APPLECommandQueueSelectComputeUnits")
@:final
/** Native bindings to the <strong>APPLE_command_queue_select_compute_units</strong> extension.  */
extern class APPLECommandQueueSelectComputeUnits 
{
	inline static public var CL_QUEUE_NUM_COMPUTE_UNITS_APPLE:Int = 268435476;
/** Function address.  */
	public var CreateCommandQueueWithPropertiesAPPLE:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * 
 *
 * @param context     
 * @param device      
 * @param properties  
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 */
/** Alternative version of: {@link #clCreateCommandQueueWithPropertiesAPPLE CreateCommandQueueWithPropertiesAPPLE}  */
	static public function clCreateCommandQueueWithPropertiesAPPLE(context:haxe.Int64,device:haxe.Int64,properties:org.lwjgl.PointerBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,device:haxe.Int64,properties:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/** Returns the {@link APPLECommandQueueSelectComputeUnits} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.APPLECommandQueueSelectComputeUnits;
/** Unsafe version of {@link #clCreateCommandQueueWithPropertiesAPPLE CreateCommandQueueWithPropertiesAPPLE}  */
	static public function nclCreateCommandQueueWithPropertiesAPPLE(context:haxe.Int64,device:haxe.Int64,properties:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64;

}
