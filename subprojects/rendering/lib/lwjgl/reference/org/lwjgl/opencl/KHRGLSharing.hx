package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.KHRGLSharing")
@:final
/** Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/khr/cl_khr_gl_sharing.txt">khr_gl_sharing</a> extension.  */
extern class KHRGLSharing 
{
/**
 * Returned by {@link CL10#clCreateContext CreateContext}, {@link CL10#clCreateContextFromType CreateContextFromType}, and {@link #clGetGLContextInfoKHR GetGLContextInfoKHR} when an invalid OpenGL context or
 * share group object handle is specified in {@code properties}.
 */
	inline static public var CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR:Int = -1000;
/**
 * Accepted as the {@code param_name} argument of {@link #clGetGLContextInfoKHR GetGLContextInfoKHR}. Returns a list of all CL devices which may be associated with the
 * specified OpenGL context.
 */
	inline static public var CL_DEVICES_FOR_GL_CONTEXT_KHR:Int = 8199;
/**
 * Accepted as the {@code param_name} argument of {@link #clGetGLContextInfoKHR GetGLContextInfoKHR}. Returns the CL device currently associated with the specified OpenGL
 * context.
 */
	inline static public var CL_CURRENT_DEVICE_FOR_GL_CONTEXT_KHR:Int = 8198;
/** Accepted as an attribute name in the {@code properties} argument of {@link CL10#clCreateContext CreateContext} and {@link CL10#clCreateContextFromType CreateContextFromType}.  */
	inline static public var CL_GL_CONTEXT_KHR:Int = 8200;
/** Accepted as an attribute name in the {@code properties} argument of {@link CL10#clCreateContext CreateContext} and {@link CL10#clCreateContextFromType CreateContextFromType}.  */
	inline static public var CL_EGL_DISPLAY_KHR:Int = 8201;
/** Accepted as an attribute name in the {@code properties} argument of {@link CL10#clCreateContext CreateContext} and {@link CL10#clCreateContextFromType CreateContextFromType}.  */
	inline static public var CL_GLX_DISPLAY_KHR:Int = 8202;
/** Accepted as an attribute name in the {@code properties} argument of {@link CL10#clCreateContext CreateContext} and {@link CL10#clCreateContextFromType CreateContextFromType}.  */
	inline static public var CL_WGL_HDC_KHR:Int = 8203;
/** Accepted as an attribute name in the {@code properties} argument of {@link CL10#clCreateContext CreateContext} and {@link CL10#clCreateContextFromType CreateContextFromType}.  */
	inline static public var CL_CGL_SHAREGROUP_KHR:Int = 8204;
/** Function address.  */
	public var GetGLContextInfoKHR:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #clGetGLContextInfoKHR GetGLContextInfoKHR}  */
/** JNI method for {@link #clGetGLContextInfoKHR GetGLContextInfoKHR}  */
	static public function nclGetGLContextInfoKHR(properties:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (properties:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Returns the {@link KHRGLSharing} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.KHRGLSharing;
/** PointerBuffer version of: {@link #clGetGLContextInfoKHR GetGLContextInfoKHR}  */
/**
 * Queries the OpenCL device currently corresponding to an OpenGL context.
 * 
 * <p>Such a device may not always exist (for example, if an OpenGL context is specified on a GPU not supporting OpenCL command queues, but which does support
 * shared CL/GL objects), and if it does exist, may change over time. When such a device does exist, acquiring and releasing shared CL/GL objects may be
 * faster on a command queue corresponding to this device than on command queues corresponding to other devices available to an OpenCL context.</p>
 *
 * @param properties           points to an attribute list whose format and valid contents are identical to the {code properties} argument of {@link CL10#clCreateContext CreateContext}.
 *                             {@code properties} must identify a single valid GL context or GL share group object.
 * @param param_name           a constant that specifies the GL context information to query. One of:<br>{@link #CL_DEVICES_FOR_GL_CONTEXT_KHR DEVICES_FOR_GL_CONTEXT_KHR}, {@link #CL_CURRENT_DEVICE_FOR_GL_CONTEXT_KHR CURRENT_DEVICE_FOR_GL_CONTEXT_KHR}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. If no device(s) exist corresponding to {@code param_name}, the call will not fail, but the value
 *         of {@code param_value_size_ret} will be zero.
 *         
 *         <p>Returns {@link #CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR INVALID_GL_SHAREGROUP_REFERENCE_KHR} if a context was specified by any of the following means:
 *         <ul>
 *         <li>A context was specified for an EGL-based OpenGL ES or OpenGL implementation by setting the attributes {@link #CL_GL_CONTEXT_KHR GL_CONTEXT_KHR} and {@link #CL_EGL_DISPLAY_KHR EGL_DISPLAY_KHR}.</li>
 *         <li>A context was specified for a GLX-based OpenGL implementation by setting the attributes {@link #CL_GL_CONTEXT_KHR GL_CONTEXT_KHR} and {@link #CL_GLX_DISPLAY_KHR GLX_DISPLAY_KHR}.</li>
 *         <li>A context was specified for a WGL-based OpenGL implementation by setting the attributes {@link #CL_GL_CONTEXT_KHR GL_CONTEXT_KHR} and {@link #CL_WGL_HDC_KHR WGL_HDC_KHR}.</li>
 *         </ul>
 *         and any of the following conditions hold:
 *         <ul>
 *         <li>The specified display and context attributes do not identify a valid OpenGL or OpenGL ES context.</li>
 *         <li>The specified context does not support buffer and renderbuffer objects.</li>
 *         <li>The specified context is not compatible with the OpenCL context being created (for example, it exists in a physically distinct address space, such
 *         as another hardware device; or it does not support sharing data with OpenCL due to implementation restrictions).</li>
 *         </ul></p>
 *         
 *         <p>Returns {@link #CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR INVALID_GL_SHAREGROUP_REFERENCE_KHR} if a share group was specified for a CGL-based OpenGL implementation by setting the attribute
 *         {@link #CL_CGL_SHAREGROUP_KHR CGL_SHAREGROUP_KHR}, and the specified share group does not identify a valid CGL share group object.</p>
 *         
 *         <p>Returns {@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if a context was specified as described above and any of the following conditions hold:
 *         <ul>
 *         <li>A context or share group object was specified for one of CGL, EGL, GLX, or WGL and the OpenGL implementation does not support that window-system
 *         binding API.</li>
 *         <li>More than one of the attributes {@link #CL_CGL_SHAREGROUP_KHR CGL_SHAREGROUP_KHR}, {@link #CL_EGL_DISPLAY_KHR EGL_DISPLAY_KHR}, {@link #CL_GLX_DISPLAY_KHR GLX_DISPLAY_KHR}, and
 *         {@link #CL_WGL_HDC_KHR WGL_HDC_KHR} is set to a non-default value.</li>
 *         <li>Both of the attributes {@link #CL_CGL_SHAREGROUP_KHR CGL_SHAREGROUP_KHR} and {@link #CL_GL_CONTEXT_KHR GL_CONTEXT_KHR} are set to non-default values.</li>
 *         <li>Any of the devices specified in the {@code devices} argument cannot support OpenCL objects which share the data store of an OpenGL object.</li>
 *         </ul></p>
 *         
 *         <p>Returns {@link CL10#CL_INVALID_VALUE INVALID_VALUE} if an invalid attribute name is specified in {@code properties}.</p>
 *         
 *         <p>Additionally, returns {@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is invalid, or if the size in bytes specified by {@code param_value_size} is
 *         less than the size of the return type and {@code param_value} is not a {@code NULL} value, {@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate
 *         resources required by the OpenCL implementation on the device, or {@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by
 *         the OpenCL implementation on the host.</p>
 */
/** Alternative version of: {@link #clGetGLContextInfoKHR GetGLContextInfoKHR}  */
	static public function clGetGLContextInfoKHR(properties:org.lwjgl.PointerBuffer,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int;
	@:overload(function (properties:org.lwjgl.PointerBuffer,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (properties:java.nio.ByteBuffer,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int {})

}
