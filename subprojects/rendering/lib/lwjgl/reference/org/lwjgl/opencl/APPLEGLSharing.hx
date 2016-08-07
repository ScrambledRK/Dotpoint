package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.APPLEGLSharing")
@:final
/** Native bindings to the <strong>APPLE_gl_sharing</strong> extension.  */
extern class APPLEGLSharing 
{
/** Error code returned by {@link #clGetGLContextInfoAPPLE GetGLContextInfoAPPLE} if an invalid {@code platform_gl_ctx} is provided.  */
	inline static public var CL_INVALID_GL_CONTEXT_APPLE:Int = -1000;
/**
 * This enumerated value can be specified as part of the {@code properties} argument passed to {@link CL10#clCreateContext CreateContext} to allow OpenCL compliant
 * devices in an existing CGL share group to be used as the devices in the newly created CL context. GL objects that were allocated in the specified CGL share
 * group can now be shared between CL and GL.
 */
	inline static public var CL_CONTEXT_PROPERTY_USE_CGL_SHAREGROUP_APPLE:Int = 268435456;
/**
 * Accepted as the {@code param_name} argument of {@link #clGetGLContextInfoAPPLE GetGLContextInfoAPPLE}. Returns an array of {@code cl_device_ids} for the CL device(s)
 * corresponding to the virtual screen(s) for the specified CGL context.
 */
	inline static public var CL_CGL_DEVICES_FOR_SUPPORTED_VIRTUAL_SCREENS_APPLE:Int = 268435459;
/**
 * Accepted as the {@code param_name} argument of {@link #clGetGLContextInfoAPPLE GetGLContextInfoAPPLE}. Returns a {@code cl_device_id} for the CL device associated with the
 * virtual screen for the specified CGL context.
 */
	inline static public var CL_CGL_DEVICE_FOR_CURRENT_VIRTUAL_SCREEN_APPLE:Int = 268435458;
/** Function address.  */
	public var GetGLContextInfoAPPLE:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #clGetGLContextInfoAPPLE GetGLContextInfoAPPLE}  */
/** JNI method for {@link #clGetGLContextInfoAPPLE GetGLContextInfoAPPLE}  */
	static public function nclGetGLContextInfoAPPLE(context:haxe.Int64,platform_gl_ctx:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (context:haxe.Int64,platform_gl_ctx:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** PointerBuffer version of: {@link #clGetGLContextInfoAPPLE GetGLContextInfoAPPLE}  */
/** Alternative version of: {@link #clGetGLContextInfoAPPLE GetGLContextInfoAPPLE}  */
/**
 * Provides a query mechanism to retrieve OpenGL context specific information from an OpenCL context to help identify device specific mappings and usage.
 * 
 * <p>For example, one possible usage would be to allow the client to map a CGL virtual screen index to an appropriate CL device id to insure that the
 * rendering device and the compute device are the same, thus guaranteeing any shared OpenGL memory that is attached o a CL memory object remains resident
 * on the active device.</p>
 *
 * @param context              the context being queried
 * @param platform_gl_ctx      the OpenGL context handle
 * @param param_name           a constant that specifies the GL context information to query. One of:<br>{@link #CL_CGL_DEVICES_FOR_SUPPORTED_VIRTUAL_SCREENS_APPLE CGL_DEVICES_FOR_SUPPORTED_VIRTUAL_SCREENS_APPLE}, {@link #CL_CGL_DEVICE_FOR_CURRENT_VIRTUAL_SCREEN_APPLE CGL_DEVICE_FOR_CURRENT_VIRTUAL_SCREEN_APPLE}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 */
	static public function clGetGLContextInfoAPPLE(context:haxe.Int64,platform_gl_ctx:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (context:haxe.Int64,platform_gl_ctx:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (context:haxe.Int64,platform_gl_ctx:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** Returns the {@link APPLEGLSharing} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.APPLEGLSharing;

}
