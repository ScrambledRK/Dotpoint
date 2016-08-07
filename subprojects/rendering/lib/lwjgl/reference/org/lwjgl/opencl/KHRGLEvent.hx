package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.KHRGLEvent")
@:final
/**
 * Native bindings to the <strong>khr_gl_event</strong> extension.
 * 
 * <p>This extension allows creating OpenCL event objects linked to OpenGL fence sync objects, potentially improving efficiency of sharing images and buffers
 * between the two APIs. The companion {@link org.lwjgl.opengl.ARBCLEvent GL_ARB_cl_event} extension provides the complementary functionality of creating
 * an OpenGL sync object from an OpenCL event object.</p>
 * 
 * <p>In addition, this extension modifies the behavior of {@link CL10GL#clEnqueueAcquireGLObjects EnqueueAcquireGLObjects} and {@link CL10GL#clEnqueueReleaseGLObjects EnqueueReleaseGLObjects} to implicitly
 * guarantee synchronization with an OpenGL context bound in the same thread as the OpenCL context.</p>
 */
extern class KHRGLEvent 
{
/** Returned by {@link CL10#clGetEventInfo GetEventInfo} when {@code param_name} is {@link CL10#CL_EVENT_COMMAND_TYPE EVENT_COMMAND_TYPE}.  */
	inline static public var CL_COMMAND_GL_FENCE_SYNC_OBJECT_KHR:Int = 8205;
/** Function address.  */
	public var CreateEventFromGLsyncKHR:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Creates an OpenCL event object from an OpenGL fence sync object.
 *
 * @param context     the OpenCL context in which to create the event object
 * @param sync        the OpenGL fence sync object
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 */
/** Alternative version of: {@link #clCreateEventFromGLsyncKHR CreateEventFromGLsyncKHR}  */
	static public function clCreateEventFromGLsyncKHR(context:haxe.Int64,sync:haxe.Int64,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,sync:haxe.Int64,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/** Unsafe version of {@link #clCreateEventFromGLsyncKHR CreateEventFromGLsyncKHR}  */
/** JNI method for {@link #clCreateEventFromGLsyncKHR CreateEventFromGLsyncKHR}  */
	static public function nclCreateEventFromGLsyncKHR(context:haxe.Int64,sync:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,sync:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Returns the {@link KHRGLEvent} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.KHRGLEvent;

}
