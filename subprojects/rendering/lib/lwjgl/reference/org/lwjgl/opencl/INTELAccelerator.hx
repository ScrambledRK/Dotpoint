package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.INTELAccelerator")
@:final
/**
 * Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/intel/cl_intel_accelerator.txt">intel_accelerator</a> extension.
 * 
 * <p>The accelerator extension consists of a unified set of OpenCL runtime APIs to create, query, and manage the lifetime of objects which represent
 * acceleration processors, engines, or algorithms. Accelerator object instances are referenced with the generic cl_accelerator_intel type by the runtime
 * API, but they are always associated with a specific acceleration engine type, which is assigned by the application at accelerator object creation time.
 * Descriptors are used to assign acceleration engine-specific properties to the accelerator objects. This mechanism of specialized creation with generic
 * referencing is analogous to the way image objects are managed in the OpenCL 1.2 runtime API via generic cl_mem referencing but specialized
 * descriptor-based creation with {@link CL12#clCreateImage CreateImage}.</p>
 * 
 * <p>Each accelerator object is assigned a unique type id. Vendors are freely encouraged to define new accelerator types and ids. This base extension
 * provides unified mechanism for the creation and lifetime management of new accelerator types, but the semantics and creation descriptors of these types
 * are to be defined in acceleration engine-specific extensions.</p>
 * 
 * <p>Accelerator objects can be supplied to kernels as arguments. Unless an extension defines a new OpenCL C language type for the engine-specific
 * accelerator (e.g. sampler_t), accelerator objects can only be used in conjunction with built-in kernels. If an extension does define such a new type,
 * or if it provides a mechanism to access accelerator data within kernels, then accelerator objects can act as regular kernel arguments as well.</p>
 * 
 * <p>Requires {@link CL12 CL12}.</p>
 */
extern class INTELAccelerator 
{
/** Possible values for cl_accelerator_info_intel.  */
	inline static public var CL_ACCELERATOR_DESCRIPTOR_INTEL:Int = 16528;
/** Possible values for cl_accelerator_info_intel.  */
	inline static public var CL_ACCELERATOR_REFERENCE_COUNT_INTEL:Int = 16529;
/** Possible values for cl_accelerator_info_intel.  */
	inline static public var CL_ACCELERATOR_CONTEXT_INTEL:Int = 16530;
/** Possible values for cl_accelerator_info_intel.  */
	inline static public var CL_ACCELERATOR_TYPE_INTEL:Int = 16531;
/** Error codes used by functions in this extension.  */
	inline static public var CL_INVALID_ACCELERATOR_INTEL:Int = -1094;
/** Error codes used by functions in this extension.  */
	inline static public var CL_INVALID_ACCELERATOR_TYPE_INTEL:Int = -1095;
/** Error codes used by functions in this extension.  */
	inline static public var CL_INVALID_ACCELERATOR_DESCRIPTOR_INTEL:Int = -1096;
/** Error codes used by functions in this extension.  */
	inline static public var CL_ACCELERATOR_TYPE_NOT_SUPPORTED_INTEL:Int = -1097;
/** Function address.  */
	public var CreateAcceleratorINTEL:haxe.Int64;
/** Function address.  */
	public var RetainAcceleratorINTEL:haxe.Int64;
/** Function address.  */
	public var ReleaseAcceleratorINTEL:haxe.Int64;
/** Function address.  */
	public var GetAcceleratorInfoINTEL:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Alternative version of: {@link #clCreateAcceleratorINTEL CreateAcceleratorINTEL}  */
/**
 * Accelerator objects represent the programmable state of an acceleration processor, engine, or algorithm. Accelerator objects can be supplied to kernels
 * as arguments. Unless an extension defines a new OpenCL C language type for the engine-specific accelerator (e.g. sampler_t), accelerator objects can
 * only be used in conjunction with built-in kernels.
 * 
 * <p>This function creates an accelerator object. The accelerator object will be created with a reference count of one. Accelerator objects created with
 * this function have semantics defined by the parameter {@code accelerator_type}, which are defined and described by extensions external to this
 * document.</p>
 *
 * @param context          a valid OpenCL context
 * @param accelerator_type specifies the type of accelerator object created. The type constants are defined by acceleration engine-specific extensions. It is encouraged that
 *                         extensions follow the naming scheme of CL_ACCELERATOR_TYPE_{name}_INTEL where {name} is a descriptive acceleration engine string.
 * @param descriptor_size  a value which specifies of the size, in bytes, of the immediately following descriptor structure
 * @param descriptor       a pointer to a structure that defines the parameter set of the accelerator object. This parameter set describes the configurable state of the
 *                         underlying object. The actual structure supplied must be consistent with {@code accelerator_type}. The descriptor structures are defined by
 *                         acceleration engine-specific extensions. It is encouraged that extensions follow the naming scheme of cl_{name}_desc_INTEL where {name} is a
 *                         descriptive acceleration engine string.
 * @param errcode_ret      will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero accelerator object, and {@code errcode_ret} is set to {@link CL10#CL_SUCCESS SUCCESS} if the accelerator object is created successfully. Otherwise, it returns a
 *         {@code NULL} value with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_ACCELERATOR_TYPE_INTEL INVALID_ACCELERATOR_TYPE_INTEL} if the supplied accelerator type is not valid.</li>
 *         <li>{@link #CL_INVALID_ACCELERATOR_DESCRIPTOR_INTEL INVALID_ACCELERATOR_DESCRIPTOR_INTEL} if values specified in {@code accelerator_desc} are not valid (or a combination of values is not valid) or if
 *         {@code accelerator_desc} is {@code NULL}.</li>
 *         <li>{@link #CL_ACCELERATOR_TYPE_NOT_SUPPORTED_INTEL ACCELERATOR_TYPE_NOT_SUPPORTED_INTEL} if the supplied accelerator type is not supported by the context.</li>
 *         <li>{@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if none of the devices in the context support accelerator objects.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateAcceleratorINTEL(context:haxe.Int64,accelerator_type:Int,descriptor_size:haxe.Int64,descriptor:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,accelerator_type:Int,descriptor:java.nio.ByteBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/** IntBuffer version of: {@link #clGetAcceleratorInfoINTEL GetAcceleratorInfoINTEL}  */
/** PointerBuffer version of: {@link #clGetAcceleratorInfoINTEL GetAcceleratorInfoINTEL}  */
/** Alternative version of: {@link #clGetAcceleratorInfoINTEL GetAcceleratorInfoINTEL}  */
/**
 * Returns information about the accelerator object.
 *
 * @param accelerator          the accelerator object being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_ACCELERATOR_DESCRIPTOR_INTEL ACCELERATOR_DESCRIPTOR_INTEL}, {@link #CL_ACCELERATOR_REFERENCE_COUNT_INTEL ACCELERATOR_REFERENCE_COUNT_INTEL}, {@link #CL_ACCELERATOR_CONTEXT_INTEL ACCELERATOR_CONTEXT_INTEL}, {@link #CL_ACCELERATOR_TYPE_INTEL ACCELERATOR_TYPE_INTEL}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid or if size in bytes specified by {@code param_value_size} is &lt; size of return type and
 *         {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_ACCELERATOR_INTEL INVALID_ACCELERATOR_INTEL} if accelerator is a not a valid accelerator object.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetAcceleratorInfoINTEL(accelerator:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (accelerator:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (accelerator:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (accelerator:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #clRetainAcceleratorINTEL RetainAcceleratorINTEL}  */
	static public function nclRetainAcceleratorINTEL(accelerator:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clGetAcceleratorInfoINTEL GetAcceleratorInfoINTEL}  */
/** JNI method for {@link #clGetAcceleratorInfoINTEL GetAcceleratorInfoINTEL}  */
	static public function nclGetAcceleratorInfoINTEL(accelerator:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (accelerator:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/**
 * Decrements the accelerator reference count. The accelerator object is deleted after the reference count becomes zero and commands queued for execution
 * on a command-queue(s) that reference accelerator have finished.
 *
 * @param accelerator a valid accelerator object
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_ACCELERATOR_INTEL INVALID_ACCELERATOR_INTEL} if accelerator is a not a valid accelerator object.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseAcceleratorINTEL(accelerator:haxe.Int64):Int;
/**
 * Increments the accelerator reference count. {@link #clCreateAcceleratorINTEL CreateAcceleratorINTEL} does an implicit retain.
 *
 * @param accelerator a valid accelerator object
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_ACCELERATOR_INTEL INVALID_ACCELERATOR_INTEL} if accelerator is a not a valid accelerator object.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainAcceleratorINTEL(accelerator:haxe.Int64):Int;
/** JNI method for {@link #clReleaseAcceleratorINTEL ReleaseAcceleratorINTEL}  */
	static public function nclReleaseAcceleratorINTEL(accelerator:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Returns the {@link INTELAccelerator} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.INTELAccelerator;
/** Unsafe version of {@link #clCreateAcceleratorINTEL CreateAcceleratorINTEL}  */
/** JNI method for {@link #clCreateAcceleratorINTEL CreateAcceleratorINTEL}  */
	static public function nclCreateAcceleratorINTEL(context:haxe.Int64,accelerator_type:Int,descriptor_size:haxe.Int64,descriptor:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,accelerator_type:Int,descriptor_size:haxe.Int64,descriptor:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})

}
