package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.APPLECommandQueuePriority")
@:final
/** Native bindings to the <strong>APPLE_command_queue_priority</strong> extension.  */
extern class APPLECommandQueuePriority 
{
	inline static public var CL_QUEUE_PRIORITY_APPLE:Int = 268435475;
	inline static public var CL_QUEUE_PRIORITY_BACKGROUND_APPLE:Int = 268435477;
	inline static public var CL_QUEUE_PRIORITY_DEFAULT_APPLE:Int = 268435479;
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
/** Returns the {@link APPLECommandQueuePriority} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.APPLECommandQueuePriority;
/** Unsafe version of {@link #clCreateCommandQueueWithPropertiesAPPLE CreateCommandQueueWithPropertiesAPPLE}  */
/** JNI method for {@link #clCreateCommandQueueWithPropertiesAPPLE CreateCommandQueueWithPropertiesAPPLE}  */
	static public function nclCreateCommandQueueWithPropertiesAPPLE(context:haxe.Int64,device:haxe.Int64,properties:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,device:haxe.Int64,properties:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})

}
