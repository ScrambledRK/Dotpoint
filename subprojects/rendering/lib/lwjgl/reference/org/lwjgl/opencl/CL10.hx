package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CL10")
@:final
/** The core OpenCL 1.0 functionality.  */
extern class CL10 
{
/** Error Codes  */
	inline static public var CL_SUCCESS:Int = 0;
/** Error Codes  */
	inline static public var CL_DEVICE_NOT_FOUND:Int = -1;
/** Error Codes  */
	inline static public var CL_DEVICE_NOT_AVAILABLE:Int = -2;
/** Error Codes  */
	inline static public var CL_COMPILER_NOT_AVAILABLE:Int = -3;
/** Error Codes  */
	inline static public var CL_MEM_OBJECT_ALLOCATION_FAILURE:Int = -4;
/** Error Codes  */
	inline static public var CL_OUT_OF_RESOURCES:Int = -5;
/** Error Codes  */
	inline static public var CL_OUT_OF_HOST_MEMORY:Int = -6;
/** Error Codes  */
	inline static public var CL_PROFILING_INFO_NOT_AVAILABLE:Int = -7;
/** Error Codes  */
	inline static public var CL_MEM_COPY_OVERLAP:Int = -8;
/** Error Codes  */
	inline static public var CL_IMAGE_FORMAT_MISMATCH:Int = -9;
/** Error Codes  */
	inline static public var CL_IMAGE_FORMAT_NOT_SUPPORTED:Int = -10;
/** Error Codes  */
	inline static public var CL_BUILD_PROGRAM_FAILURE:Int = -11;
/** Error Codes  */
	inline static public var CL_MAP_FAILURE:Int = -12;
/** Error Codes  */
	inline static public var CL_INVALID_VALUE:Int = -30;
/** Error Codes  */
	inline static public var CL_INVALID_DEVICE_TYPE:Int = -31;
/** Error Codes  */
	inline static public var CL_INVALID_PLATFORM:Int = -32;
/** Error Codes  */
	inline static public var CL_INVALID_DEVICE:Int = -33;
/** Error Codes  */
	inline static public var CL_INVALID_CONTEXT:Int = -34;
/** Error Codes  */
	inline static public var CL_INVALID_QUEUE_PROPERTIES:Int = -35;
/** Error Codes  */
	inline static public var CL_INVALID_COMMAND_QUEUE:Int = -36;
/** Error Codes  */
	inline static public var CL_INVALID_HOST_PTR:Int = -37;
/** Error Codes  */
	inline static public var CL_INVALID_MEM_OBJECT:Int = -38;
/** Error Codes  */
	inline static public var CL_INVALID_IMAGE_FORMAT_DESCRIPTOR:Int = -39;
/** Error Codes  */
	inline static public var CL_INVALID_IMAGE_SIZE:Int = -40;
/** Error Codes  */
	inline static public var CL_INVALID_SAMPLER:Int = -41;
/** Error Codes  */
	inline static public var CL_INVALID_BINARY:Int = -42;
/** Error Codes  */
	inline static public var CL_INVALID_BUILD_OPTIONS:Int = -43;
/** Error Codes  */
	inline static public var CL_INVALID_PROGRAM:Int = -44;
/** Error Codes  */
	inline static public var CL_INVALID_PROGRAM_EXECUTABLE:Int = -45;
/** Error Codes  */
	inline static public var CL_INVALID_KERNEL_NAME:Int = -46;
/** Error Codes  */
	inline static public var CL_INVALID_KERNEL_DEFINITION:Int = -47;
/** Error Codes  */
	inline static public var CL_INVALID_KERNEL:Int = -48;
/** Error Codes  */
	inline static public var CL_INVALID_ARG_INDEX:Int = -49;
/** Error Codes  */
	inline static public var CL_INVALID_ARG_VALUE:Int = -50;
/** Error Codes  */
	inline static public var CL_INVALID_ARG_SIZE:Int = -51;
/** Error Codes  */
	inline static public var CL_INVALID_KERNEL_ARGS:Int = -52;
/** Error Codes  */
	inline static public var CL_INVALID_WORK_DIMENSION:Int = -53;
/** Error Codes  */
	inline static public var CL_INVALID_WORK_GROUP_SIZE:Int = -54;
/** Error Codes  */
	inline static public var CL_INVALID_WORK_ITEM_SIZE:Int = -55;
/** Error Codes  */
	inline static public var CL_INVALID_GLOBAL_OFFSET:Int = -56;
/** Error Codes  */
	inline static public var CL_INVALID_EVENT_WAIT_LIST:Int = -57;
/** Error Codes  */
	inline static public var CL_INVALID_EVENT:Int = -58;
/** Error Codes  */
	inline static public var CL_INVALID_OPERATION:Int = -59;
/** Error Codes  */
	inline static public var CL_INVALID_BUFFER_SIZE:Int = -61;
/** Error Codes  */
	inline static public var CL_INVALID_GLOBAL_WORK_SIZE:Int = -63;
/** OpenCL Version  */
	inline static public var CL_VERSION_1_0:Int = 1;
/** cl_bool  */
	inline static public var CL_FALSE:Int = 0;
/** cl_bool  */
	inline static public var CL_TRUE:Int = 1;
/** cl_platform_info  */
	inline static public var CL_PLATFORM_PROFILE:Int = 2304;
/** cl_platform_info  */
	inline static public var CL_PLATFORM_VERSION:Int = 2305;
/** cl_platform_info  */
	inline static public var CL_PLATFORM_NAME:Int = 2306;
/** cl_platform_info  */
	inline static public var CL_PLATFORM_VENDOR:Int = 2307;
/** cl_platform_info  */
	inline static public var CL_PLATFORM_EXTENSIONS:Int = 2308;
/** cl_device_type - bitfield  */
	inline static public var CL_DEVICE_TYPE_DEFAULT:Int = 1;
/** cl_device_type - bitfield  */
	inline static public var CL_DEVICE_TYPE_CPU:Int = 2;
/** cl_device_type - bitfield  */
	inline static public var CL_DEVICE_TYPE_GPU:Int = 4;
/** cl_device_type - bitfield  */
	inline static public var CL_DEVICE_TYPE_ACCELERATOR:Int = 8;
/** cl_device_type - bitfield  */
	inline static public var CL_DEVICE_TYPE_ALL:Int = -1;
/** cl_device_info  */
	inline static public var CL_DEVICE_TYPE:Int = 4096;
/** cl_device_info  */
	inline static public var CL_DEVICE_VENDOR_ID:Int = 4097;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_COMPUTE_UNITS:Int = 4098;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS:Int = 4099;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_WORK_GROUP_SIZE:Int = 4100;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_WORK_ITEM_SIZES:Int = 4101;
/** cl_device_info  */
	inline static public var CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR:Int = 4102;
/** cl_device_info  */
	inline static public var CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT:Int = 4103;
/** cl_device_info  */
	inline static public var CL_DEVICE_PREFERRED_VECTOR_WIDTH_:Int = 4104;
/** cl_device_info  */
	inline static public var CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG:Int = 4105;
/** cl_device_info  */
	inline static public var CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT:Int = 4106;
/** cl_device_info  */
	inline static public var CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE:Int = 4107;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_CLOCK_FREQUENCY:Int = 4108;
/** cl_device_info  */
	inline static public var CL_DEVICE_ADDRESS_BITS:Int = 4109;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_READ_IMAGE_ARGS:Int = 4110;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_WRITE_IMAGE_ARGS:Int = 4111;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_MEM_ALLOC_SIZE:Int = 4112;
/** cl_device_info  */
	inline static public var CL_DEVICE_IMAGE2D_MAX_WIDTH:Int = 4113;
/** cl_device_info  */
	inline static public var CL_DEVICE_IMAGE2D_MAX_HEIGHT:Int = 4114;
/** cl_device_info  */
	inline static public var CL_DEVICE_IMAGE3D_MAX_WIDTH:Int = 4115;
/** cl_device_info  */
	inline static public var CL_DEVICE_IMAGE3D_MAX_HEIGHT:Int = 4116;
/** cl_device_info  */
	inline static public var CL_DEVICE_IMAGE3D_MAX_DEPTH:Int = 4117;
/** cl_device_info  */
	inline static public var CL_DEVICE_IMAGE_SUPPORT:Int = 4118;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_PARAMETER_SIZE:Int = 4119;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_SAMPLERS:Int = 4120;
/** cl_device_info  */
	inline static public var CL_DEVICE_MEM_BASE_ADDR_ALIGN:Int = 4121;
/** cl_device_info  */
	inline static public var CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE:Int = 4122;
/** cl_device_info  */
	inline static public var CL_DEVICE_SINGLE_FP_CONFIG:Int = 4123;
/** cl_device_info  */
	inline static public var CL_DEVICE_GLOBAL_MEM_CACHE_TYPE:Int = 4124;
/** cl_device_info  */
	inline static public var CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE:Int = 4125;
/** cl_device_info  */
	inline static public var CL_DEVICE_GLOBAL_MEM_CACHE_SIZE:Int = 4126;
/** cl_device_info  */
	inline static public var CL_DEVICE_GLOBAL_MEM_SIZE:Int = 4127;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE:Int = 4128;
/** cl_device_info  */
	inline static public var CL_DEVICE_MAX_CONSTANT_ARGS:Int = 4129;
/** cl_device_info  */
	inline static public var CL_DEVICE_LOCAL_MEM_TYPE:Int = 4130;
/** cl_device_info  */
	inline static public var CL_DEVICE_LOCAL_MEM_SIZE:Int = 4131;
/** cl_device_info  */
	inline static public var CL_DEVICE_ERROR_CORRECTION_SUPPORT:Int = 4132;
/** cl_device_info  */
	inline static public var CL_DEVICE_PROFILING_TIMER_RESOLUTION:Int = 4133;
/** cl_device_info  */
	inline static public var CL_DEVICE_ENDIAN_LITTLE:Int = 4134;
/** cl_device_info  */
	inline static public var CL_DEVICE_AVAILABLE:Int = 4135;
/** cl_device_info  */
	inline static public var CL_DEVICE_COMPILER_AVAILABLE:Int = 4136;
/** cl_device_info  */
	inline static public var CL_DEVICE_EXECUTION_CAPABILITIES:Int = 4137;
/** cl_device_info  */
	inline static public var CL_DEVICE_QUEUE_PROPERTIES:Int = 4138;
/** cl_device_info  */
	inline static public var CL_DEVICE_NAME:Int = 4139;
/** cl_device_info  */
	inline static public var CL_DEVICE_VENDOR:Int = 4140;
/** cl_device_info  */
	inline static public var CL_DRIVER_VERSION:Int = 4141;
/** cl_device_info  */
	inline static public var CL_DEVICE_PROFILE:Int = 4142;
/** cl_device_info  */
	inline static public var CL_DEVICE_VERSION:Int = 4143;
/** cl_device_info  */
	inline static public var CL_DEVICE_EXTENSIONS:Int = 4144;
/** cl_device_info  */
	inline static public var CL_DEVICE_PLATFORM:Int = 4145;
/** cl_device_fp_config - bitfield  */
	inline static public var CL_FP_DENORM:Int = 1;
/** cl_device_fp_config - bitfield  */
	inline static public var CL_FP_INF_NAN:Int = 2;
/** cl_device_fp_config - bitfield  */
	inline static public var CL_FP_ROUND_TO_NEAREST:Int = 4;
/** cl_device_fp_config - bitfield  */
	inline static public var CL_FP_ROUND_TO_ZERO:Int = 8;
/** cl_device_fp_config - bitfield  */
	inline static public var CL_FP_ROUND_TO_INF:Int = 16;
/** cl_device_fp_config - bitfield  */
	inline static public var CL_FP_FMA:Int = 32;
/** cl_device_mem_cache_type  */
	inline static public var CL_NONE:Int = 0;
/** cl_device_mem_cache_type  */
	inline static public var CL_READ_ONLY_CACHE:Int = 1;
/** cl_device_mem_cache_type  */
	inline static public var CL_READ_WRITE_CACHE:Int = 2;
/** cl_device_local_mem_type  */
	inline static public var CL_LOCAL:Int = 1;
/** cl_device_local_mem_type  */
	inline static public var CL_GLOBAL:Int = 2;
/** cl_device_exec_capabilities - bitfield  */
	inline static public var CL_EXEC_KERNEL:Int = 1;
/** cl_device_exec_capabilities - bitfield  */
	inline static public var CL_EXEC_NATIVE_KERNEL:Int = 2;
/** cl_command_queue_properties - bitfield  */
	inline static public var CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE:Int = 1;
/** cl_command_queue_properties - bitfield  */
	inline static public var CL_QUEUE_PROFILING_ENABLE:Int = 2;
/** cl_context_info  */
	inline static public var CL_CONTEXT_REFERENCE_COUNT:Int = 4224;
/** cl_context_info  */
	inline static public var CL_CONTEXT_DEVICES:Int = 4225;
/** cl_context_info  */
	inline static public var CL_CONTEXT_PROPERTIES:Int = 4226;
/** cl_context_info + cl_context_properties  */
	inline static public var CL_CONTEXT_PLATFORM:Int = 4228;
/** cl_command_queue_info  */
	inline static public var CL_QUEUE_CONTEXT:Int = 4240;
/** cl_command_queue_info  */
	inline static public var CL_QUEUE_DEVICE:Int = 4241;
/** cl_command_queue_info  */
	inline static public var CL_QUEUE_REFERENCE_COUNT:Int = 4242;
/** cl_command_queue_info  */
	inline static public var CL_QUEUE_PROPERTIES:Int = 4243;
/** cl_mem_flags - bitfield  */
	inline static public var CL_MEM_READ_WRITE:Int = 1;
/** cl_mem_flags - bitfield  */
	inline static public var CL_MEM_WRITE_ONLY:Int = 2;
/** cl_mem_flags - bitfield  */
	inline static public var CL_MEM_READ_ONLY:Int = 4;
/** cl_mem_flags - bitfield  */
	inline static public var CL_MEM_USE_HOST_PTR:Int = 8;
/** cl_mem_flags - bitfield  */
	inline static public var CL_MEM_ALLOC_HOST_PTR:Int = 16;
/** cl_mem_flags - bitfield  */
	inline static public var CL_MEM_COPY_HOST_PTR:Int = 32;
/** cl_channel_order  */
	inline static public var CL_R:Int = 4272;
/** cl_channel_order  */
	inline static public var CL_A:Int = 4273;
/** cl_channel_order  */
	inline static public var CL_RG:Int = 4274;
/** cl_channel_order  */
	inline static public var CL_RA:Int = 4275;
/** cl_channel_order  */
	inline static public var CL_RGB:Int = 4276;
/** cl_channel_order  */
	inline static public var CL_RGBA:Int = 4277;
/** cl_channel_order  */
	inline static public var CL_BGRA:Int = 4278;
/** cl_channel_order  */
	inline static public var CL_ARGB:Int = 4279;
/** cl_channel_order  */
	inline static public var CL_INTENSITY:Int = 4280;
/** cl_channel_order  */
	inline static public var CL_LUMINANCE:Int = 4281;
/** cl_channel_type  */
	inline static public var CL_SNORM_INT8:Int = 4304;
/** cl_channel_type  */
	inline static public var CL_SNORM_INT16:Int = 4305;
/** cl_channel_type  */
	inline static public var CL_UNORM_INT8:Int = 4306;
/** cl_channel_type  */
	inline static public var CL_UNORM_INT16:Int = 4307;
/** cl_channel_type  */
	inline static public var CL_UNORM_SHORT_565:Int = 4308;
/** cl_channel_type  */
	inline static public var CL_UNORM_SHORT_555:Int = 4309;
/** cl_channel_type  */
	inline static public var CL_UNORM_INT_101010:Int = 4310;
/** cl_channel_type  */
	inline static public var CL_SIGNED_INT8:Int = 4311;
/** cl_channel_type  */
	inline static public var CL_SIGNED_INT16:Int = 4312;
/** cl_channel_type  */
	inline static public var CL_SIGNED_INT32:Int = 4313;
/** cl_channel_type  */
	inline static public var CL_UNSIGNED_INT8:Int = 4314;
/** cl_channel_type  */
	inline static public var CL_UNSIGNED_INT16:Int = 4315;
/** cl_channel_type  */
	inline static public var CL_UNSIGNED_INT32:Int = 4316;
/** cl_channel_type  */
	inline static public var CL_HALF_FLOAT:Int = 4317;
/** cl_channel_type  */
	inline static public var CL_FLOAT:Int = 4318;
/** cl_mem_object_type  */
	inline static public var CL_MEM_OBJECT_BUFFER:Int = 4336;
/** cl_mem_object_type  */
	inline static public var CL_MEM_OBJECT_IMAGE2D:Int = 4337;
/** cl_mem_object_type  */
	inline static public var CL_MEM_OBJECT_IMAGE3D:Int = 4338;
/** cl_mem_info  */
	inline static public var CL_MEM_TYPE:Int = 4352;
/** cl_mem_info  */
	inline static public var CL_MEM_FLAGS:Int = 4353;
/** cl_mem_info  */
	inline static public var CL_MEM_SIZE:Int = 4354;
/** cl_mem_info  */
	inline static public var CL_MEM_HOST_PTR:Int = 4355;
/** cl_mem_info  */
	inline static public var CL_MEM_MAP_COUNT:Int = 4356;
/** cl_mem_info  */
	inline static public var CL_MEM_REFERENCE_COUNT:Int = 4357;
/** cl_mem_info  */
	inline static public var CL_MEM_CONTEXT:Int = 4358;
/** cl_image_info  */
	inline static public var CL_IMAGE_FORMAT:Int = 4368;
/** cl_image_info  */
	inline static public var CL_IMAGE_ELEMENT_SIZE:Int = 4369;
/** cl_image_info  */
	inline static public var CL_IMAGE_ROW_PITCH:Int = 4370;
/** cl_image_info  */
	inline static public var CL_IMAGE_SLICE_PITCH:Int = 4371;
/** cl_image_info  */
	inline static public var CL_IMAGE_WIDTH:Int = 4372;
/** cl_image_info  */
	inline static public var CL_IMAGE_HEIGHT:Int = 4373;
/** cl_image_info  */
	inline static public var CL_IMAGE_DEPTH:Int = 4374;
/** cl_addressing_mode  */
	inline static public var CL_ADDRESS_NONE:Int = 4400;
/** cl_addressing_mode  */
	inline static public var CL_ADDRESS_CLAMP_TO_EDGE:Int = 4401;
/** cl_addressing_mode  */
	inline static public var CL_ADDRESS_CLAMP:Int = 4402;
/** cl_addressing_mode  */
	inline static public var CL_ADDRESS_REPEAT:Int = 4403;
/** cl_filter_mode  */
	inline static public var CL_FILTER_NEAREST:Int = 4416;
/** cl_filter_mode  */
	inline static public var CL_FILTER_LINEAR:Int = 4417;
/** cl_sampler_info  */
	inline static public var CL_SAMPLER_REFERENCE_COUNT:Int = 4432;
/** cl_sampler_info  */
	inline static public var CL_SAMPLER_CONTEXT:Int = 4433;
/** cl_sampler_info  */
	inline static public var CL_SAMPLER_NORMALIZED_COORDS:Int = 4434;
/** cl_sampler_info  */
	inline static public var CL_SAMPLER_ADDRESSING_MODE:Int = 4435;
/** cl_sampler_info  */
	inline static public var CL_SAMPLER_FILTER_MODE:Int = 4436;
/** cl_map_flags - bitfield  */
	inline static public var CL_MAP_READ:Int = 1;
/** cl_map_flags - bitfield  */
	inline static public var CL_MAP_WRITE:Int = 2;
/** cl_program_info  */
	inline static public var CL_PROGRAM_REFERENCE_COUNT:Int = 4448;
/** cl_program_info  */
	inline static public var CL_PROGRAM_CONTEXT:Int = 4449;
/** cl_program_info  */
	inline static public var CL_PROGRAM_NUM_DEVICES:Int = 4450;
/** cl_program_info  */
	inline static public var CL_PROGRAM_DEVICES:Int = 4451;
/** cl_program_info  */
	inline static public var CL_PROGRAM_SOURCE:Int = 4452;
/** cl_program_info  */
	inline static public var CL_PROGRAM_BINARY_SIZES:Int = 4453;
/** cl_program_info  */
	inline static public var CL_PROGRAM_BINARIES:Int = 4454;
/** cl_program_build_info  */
	inline static public var CL_PROGRAM_BUILD_STATUS:Int = 4481;
/** cl_program_build_info  */
	inline static public var CL_PROGRAM_BUILD_OPTIONS:Int = 4482;
/** cl_program_build_info  */
	inline static public var CL_PROGRAM_BUILD_LOG:Int = 4483;
/** cl_build_status  */
	inline static public var CL_BUILD_SUCCESS:Int = 0;
/** cl_build_status  */
	inline static public var CL_BUILD_NONE:Int = -1;
/** cl_build_status  */
	inline static public var CL_BUILD_ERROR:Int = -2;
/** cl_build_status  */
	inline static public var CL_BUILD_IN_PROGRESS:Int = -3;
/** cl_kernel_info  */
	inline static public var CL_KERNEL_FUNCTION_NAME:Int = 4496;
/** cl_kernel_info  */
	inline static public var CL_KERNEL_NUM_ARGS:Int = 4497;
/** cl_kernel_info  */
	inline static public var CL_KERNEL_REFERENCE_COUNT:Int = 4498;
/** cl_kernel_info  */
	inline static public var CL_KERNEL_CONTEXT:Int = 4499;
/** cl_kernel_info  */
	inline static public var CL_KERNEL_PROGRAM:Int = 4500;
/** cl_kernel_work_group_info  */
	inline static public var CL_KERNEL_WORK_GROUP_SIZE:Int = 4528;
/** cl_kernel_work_group_info  */
	inline static public var CL_KERNEL_COMPILE_WORK_GROUP_SIZE:Int = 4529;
/** cl_kernel_work_group_info  */
	inline static public var CL_KERNEL_LOCAL_MEM_SIZE:Int = 4530;
/** cl_event_info  */
	inline static public var CL_EVENT_COMMAND_QUEUE:Int = 4560;
/** cl_event_info  */
	inline static public var CL_EVENT_COMMAND_TYPE:Int = 4561;
/** cl_event_info  */
	inline static public var CL_EVENT_REFERENCE_COUNT:Int = 4562;
/** cl_event_info  */
	inline static public var CL_EVENT_COMMAND_EXECUTION_STATUS:Int = 4563;
/** cl_command_type  */
	inline static public var CL_COMMAND_NDRANGE_KERNEL:Int = 4592;
/** cl_command_type  */
	inline static public var CL_COMMAND_TASK:Int = 4593;
/** cl_command_type  */
	inline static public var CL_COMMAND_NATIVE_KERNEL:Int = 4594;
/** cl_command_type  */
	inline static public var CL_COMMAND_READ_BUFFER:Int = 4595;
/** cl_command_type  */
	inline static public var CL_COMMAND_WRITE_BUFFER:Int = 4596;
/** cl_command_type  */
	inline static public var CL_COMMAND_COPY_BUFFER:Int = 4597;
/** cl_command_type  */
	inline static public var CL_COMMAND_READ_IMAGE:Int = 4598;
/** cl_command_type  */
	inline static public var CL_COMMAND_WRITE_IMAGE:Int = 4599;
/** cl_command_type  */
	inline static public var CL_COMMAND_COPY_IMAGE:Int = 4600;
/** cl_command_type  */
	inline static public var CL_COMMAND_COPY_IMAGE_TO_BUFFER:Int = 4601;
/** cl_command_type  */
	inline static public var CL_COMMAND_COPY_BUFFER_TO_IMAGE:Int = 4602;
/** cl_command_type  */
	inline static public var CL_COMMAND_MAP_BUFFER:Int = 4603;
/** cl_command_type  */
	inline static public var CL_COMMAND_MAP_IMAGE:Int = 4604;
/** cl_command_type  */
	inline static public var CL_COMMAND_UNMAP_MEM_OBJECT:Int = 4605;
/** cl_command_type  */
	inline static public var CL_COMMAND_MARKER:Int = 4606;
/** cl_command_type  */
	inline static public var CL_COMMAND_ACQUIRE_GL_OBJECTS:Int = 4607;
/** cl_command_type  */
	inline static public var CL_COMMAND_RELEASE_GL_OBJECTS:Int = 4608;
/** command execution status  */
	inline static public var CL_COMPLETE:Int = 0;
/** command execution status  */
	inline static public var CL_RUNNING:Int = 1;
/** command execution status  */
	inline static public var CL_SUBMITTED:Int = 2;
/** command execution status  */
	inline static public var CL_QUEUED:Int = 3;
/** cl_profiling_info  */
	inline static public var CL_PROFILING_COMMAND_QUEUED:Int = 4736;
/** cl_profiling_info  */
	inline static public var CL_PROFILING_COMMAND_SUBMIT:Int = 4737;
/** cl_profiling_info  */
	inline static public var CL_PROFILING_COMMAND_START:Int = 4738;
/** cl_profiling_info  */
	inline static public var CL_PROFILING_COMMAND_END:Int = 4739;
/** Function address.  */
	public var GetPlatformIDs:haxe.Int64;
/** Function address.  */
	public var GetPlatformInfo:haxe.Int64;
/** Function address.  */
	public var GetDeviceIDs:haxe.Int64;
/** Function address.  */
	public var GetDeviceInfo:haxe.Int64;
/** Function address.  */
	public var CreateContext:haxe.Int64;
/** Function address.  */
	public var CreateContextFromType:haxe.Int64;
/** Function address.  */
	public var RetainContext:haxe.Int64;
/** Function address.  */
	public var ReleaseContext:haxe.Int64;
/** Function address.  */
	public var GetContextInfo:haxe.Int64;
/** Function address.  */
	public var CreateCommandQueue:haxe.Int64;
/** Function address.  */
	public var RetainCommandQueue:haxe.Int64;
/** Function address.  */
	public var ReleaseCommandQueue:haxe.Int64;
/** Function address.  */
	public var GetCommandQueueInfo:haxe.Int64;
/** Function address.  */
	public var CreateBuffer:haxe.Int64;
/** Function address.  */
	public var EnqueueReadBuffer:haxe.Int64;
/** Function address.  */
	public var EnqueueWriteBuffer:haxe.Int64;
/** Function address.  */
	public var EnqueueCopyBuffer:haxe.Int64;
/** Function address.  */
	public var EnqueueMapBuffer:haxe.Int64;
/** Function address.  */
	public var CreateImage2D:haxe.Int64;
/** Function address.  */
	public var CreateImage3D:haxe.Int64;
/** Function address.  */
	public var GetSupportedImageFormats:haxe.Int64;
/** Function address.  */
	public var EnqueueReadImage:haxe.Int64;
/** Function address.  */
	public var EnqueueWriteImage:haxe.Int64;
/** Function address.  */
	public var EnqueueCopyImage:haxe.Int64;
/** Function address.  */
	public var EnqueueCopyImageToBuffer:haxe.Int64;
/** Function address.  */
	public var EnqueueCopyBufferToImage:haxe.Int64;
/** Function address.  */
	public var EnqueueMapImage:haxe.Int64;
/** Function address.  */
	public var GetImageInfo:haxe.Int64;
/** Function address.  */
	public var RetainMemObject:haxe.Int64;
/** Function address.  */
	public var ReleaseMemObject:haxe.Int64;
/** Function address.  */
	public var EnqueueUnmapMemObject:haxe.Int64;
/** Function address.  */
	public var GetMemObjectInfo:haxe.Int64;
/** Function address.  */
	public var CreateSampler:haxe.Int64;
/** Function address.  */
	public var RetainSampler:haxe.Int64;
/** Function address.  */
	public var ReleaseSampler:haxe.Int64;
/** Function address.  */
	public var GetSamplerInfo:haxe.Int64;
/** Function address.  */
	public var CreateProgramWithSource:haxe.Int64;
/** Function address.  */
	public var CreateProgramWithBinary:haxe.Int64;
/** Function address.  */
	public var RetainProgram:haxe.Int64;
/** Function address.  */
	public var ReleaseProgram:haxe.Int64;
/** Function address.  */
	public var BuildProgram:haxe.Int64;
/** Function address.  */
	public var UnloadCompiler:haxe.Int64;
/** Function address.  */
	public var GetProgramInfo:haxe.Int64;
/** Function address.  */
	public var GetProgramBuildInfo:haxe.Int64;
/** Function address.  */
	public var CreateKernel:haxe.Int64;
/** Function address.  */
	public var CreateKernelsInProgram:haxe.Int64;
/** Function address.  */
	public var RetainKernel:haxe.Int64;
/** Function address.  */
	public var ReleaseKernel:haxe.Int64;
/** Function address.  */
	public var SetKernelArg:haxe.Int64;
/** Function address.  */
	public var GetKernelInfo:haxe.Int64;
/** Function address.  */
	public var GetKernelWorkGroupInfo:haxe.Int64;
/** Function address.  */
	public var EnqueueNDRangeKernel:haxe.Int64;
/** Function address.  */
	public var EnqueueTask:haxe.Int64;
/** Function address.  */
	public var EnqueueNativeKernel:haxe.Int64;
/** Function address.  */
	public var WaitForEvents:haxe.Int64;
/** Function address.  */
	public var GetEventInfo:haxe.Int64;
/** Function address.  */
	public var RetainEvent:haxe.Int64;
/** Function address.  */
	public var ReleaseEvent:haxe.Int64;
/** Function address.  */
	public var EnqueueMarker:haxe.Int64;
/** Function address.  */
	public var EnqueueBarrier:haxe.Int64;
/** Function address.  */
	public var EnqueueWaitForEvents:haxe.Int64;
/** Function address.  */
	public var GetEventProfilingInfo:haxe.Int64;
/** Function address.  */
	public var Flush:haxe.Int64;
/** Function address.  */
	public var Finish:haxe.Int64;
/** Function address.  */
	public var GetExtensionFunctionAddress:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** double3 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg3d(kernel:haxe.Int64,arg_index:Int,arg0:Float,arg1:Float,arg2:Float):Int;
/** Alternative version of: {@link #clCreateBuffer CreateBuffer}  */
/** ByteBuffer version of: {@link #clCreateBuffer CreateBuffer}  */
/** DoubleBuffer version of: {@link #clCreateBuffer CreateBuffer}  */
/** FloatBuffer version of: {@link #clCreateBuffer CreateBuffer}  */
/** IntBuffer version of: {@link #clCreateBuffer CreateBuffer}  */
/** ShortBuffer version of: {@link #clCreateBuffer CreateBuffer}  */
/**
 * Creates a buffer object.
 *
 * @param context     a valid OpenCL context used to create the buffer object
 * @param flags       a bit-field that is used to specify allocation and usage information such as the memory area that should be used to allocate the buffer object and
 *                    how it will be used. If value specified for flags is 0, the default is used which is {@link #CL_MEM_READ_WRITE MEM_READ_WRITE}. One of:<br>{@link #CL_MEM_READ_WRITE MEM_READ_WRITE}, {@link #CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link #CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, {@link #CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR}, {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR}, {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY}, {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY}, {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}
 * @param size        the size in bytes of the buffer memory object to be allocated
 * @param host_ptr    a pointer to the buffer data that may already be allocated by the application. The size of the buffer that {@code host_ptr} points to must be
 *                    &#x2265; {@code size} bytes.
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero buffer object and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the buffer object is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values specified in flags are not valid.</li>
 *         <li>{@link #CL_INVALID_BUFFER_SIZE INVALID_BUFFER_SIZE} if size is 0. Implementations may return {@link #CL_INVALID_BUFFER_SIZE INVALID_BUFFER_SIZE} if size is greater than
 *         {@link #CL_DEVICE_MAX_MEM_ALLOC_SIZE DEVICE_MAX_MEM_ALLOC_SIZE} value all devices in context.</li>
 *         <li>{@link #CL_INVALID_HOST_PTR INVALID_HOST_PTR} if {@code host_ptr} is {@code NULL} and {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} or {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} are set in flags or if
 *         {@code host_ptr} is not {@code NULL} but {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} or {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} are not set in flags.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for buffer object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateBuffer(context:haxe.Int64,flags:haxe.Int64,size:haxe.Int64,host_ptr:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,size:haxe.Int64,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,host_ptr:java.nio.ByteBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,host_ptr:java.nio.DoubleBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,host_ptr:java.nio.FloatBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,host_ptr:java.nio.IntBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,host_ptr:java.nio.ShortBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/** Unsafe version of {@link #clEnqueueCopyImage EnqueueCopyImage}  */
/** JNI method for {@link #clEnqueueCopyImage EnqueueCopyImage}  */
	static public function nclEnqueueCopyImage(command_queue:haxe.Int64,src_image:haxe.Int64,dst_image:haxe.Int64,src_origin:haxe.Int64,dst_origin:haxe.Int64,region:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,src_image:haxe.Int64,dst_image:haxe.Int64,src_origin:haxe.Int64,dst_origin:haxe.Int64,region:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** float3 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg3f(kernel:haxe.Int64,arg_index:Int,arg0:Float,arg1:Float,arg2:Float):Int;
/** JNI method for {@link #clReleaseCommandQueue ReleaseCommandQueue}  */
	static public function nclReleaseCommandQueue(command_queue:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** IntBuffer version of: {@link #clGetKernelInfo GetKernelInfo}  */
/** PointerBuffer version of: {@link #clGetKernelInfo GetKernelInfo}  */
/** Alternative version of: {@link #clGetKernelInfo GetKernelInfo}  */
/**
 * Returns information about a kernel object.
 *
 * @param kernel               the kernel object being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_KERNEL_FUNCTION_NAME KERNEL_FUNCTION_NAME}, {@link #CL_KERNEL_NUM_ARGS KERNEL_NUM_ARGS}, {@link #CL_KERNEL_REFERENCE_COUNT KERNEL_REFERENCE_COUNT}, {@link #CL_KERNEL_CONTEXT KERNEL_CONTEXT}, {@link #CL_KERNEL_PROGRAM KERNEL_PROGRAM}, {@link CL12#CL_KERNEL_ATTRIBUTES KERNEL_ATTRIBUTES}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_KERNEL INVALID_KERNEL} if {@code kernel} is a not a valid kernel object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetKernelInfo(kernel:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (kernel:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** LongBuffer version of: {@link #clGetEventProfilingInfo GetEventProfilingInfo}  */
/** Alternative version of: {@link #clGetEventProfilingInfo GetEventProfilingInfo}  */
/**
 * Returns profiling information for the command associated with {@code event}.
 *
 * @param event                the event object
 * @param param_name           the profiling data to query. One of:<br>{@link #CL_PROFILING_COMMAND_QUEUED PROFILING_COMMAND_QUEUED}, {@link #CL_PROFILING_COMMAND_SUBMIT PROFILING_COMMAND_SUBMIT}, {@link #CL_PROFILING_COMMAND_START PROFILING_COMMAND_START}, {@link #CL_PROFILING_COMMAND_END PROFILING_COMMAND_END}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully and the profiling information has been recorded. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_PROFILING_INFO_NOT_AVAILABLE PROFILING_INFO_NOT_AVAILABLE} if the {@link #CL_QUEUE_PROFILING_ENABLE QUEUE_PROFILING_ENABLE} flag is not set for the command-queue, if the execution status of
 *         the command identified by {@code event} is not {@link #CL_COMPLETE COMPLETE} or if {@code event} is a user event object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_EVENT INVALID_EVENT} if {@code event} is a not a valid event object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetEventProfilingInfo(event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (event:haxe.Int64,param_name:Int,param_value:java.nio.LongBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** int3 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg3i(kernel:haxe.Int64,arg_index:Int,arg0:Int,arg1:Int,arg2:Int):Int;
/** long3 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg3l(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64,arg1:haxe.Int64,arg2:haxe.Int64):Int;
/** pointer3 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg3p(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64,arg1:haxe.Int64,arg2:haxe.Int64):Int;
/** Alternative version of: {@link #clEnqueueCopyImageToBuffer EnqueueCopyImageToBuffer}  */
/**
 * Enqueues a command to copy an image object to a buffer object.
 *
 * @param command_queue           a valid command-queue. The OpenCL context associated with {@code command_queue}, {@code src_image} and {@code dst_buffer} must be the same.
 * @param src_image               a valid image object
 * @param dst_buffer              a valid buffer object
 * @param src_origin              the {@code (x, y, z)} offset in pixels in the 1D, 2D or 3D image, the {@code (x, y)} offset and the image index in the 2D image array or the
 *                                {@code (x)} offset and the image index in the 1D image array. If {@code src_image} is a 2D image object, {@code src_origin[2]} must be 0. If
 *                                {@code src_image} is a 1D image object, {@code src_origin[1]} and {@code src_origin[2]} must be 0. If {@code src_image} is a 1D image array object,
 *                                {@code src_origin[2]} must be 0. If {@code src_image} is a 1D image array object, {@code src_origin[1]} describes the image index in the 1D image
 *                                array. If {@code src_image} is a 2D image array object, {@code src_origin[2]} describes the image index in the 2D image array.
 * @param region                  the {@code (width, height, depth)} in pixels of the 1D, 2D or 3D rectangle, the {@code (width, height)} in pixels of the 2D rectangle and the number
 *                                of images of a 2D image array or the {@code (width)} in pixels of the 1D rectangle and the number of images of a 1D image array. If
 *                                {@code src_image} is a 2D image object, {@code region[2]} must be 1. If {@code src_image} is a 1D image or 1D image buffer object, {@code region[1]}
 *                                and {@code region[2]} must be 1. If {@code src_image} is a 1D image array object, {@code region[2]} must be 1. The values in {@code region} cannot
 *                                be 0.
 * @param dst_offset              the offset where to begin copying data into {@code dst_buffer}. The size in bytes of the region to be copied referred to as {@code dst_cb} is
 *                                computed as <code style="font-family: monospace">width * height * depth * bytes/image element</code> if {@code src_image} is a 3D image object, is computed as
 *                                <code style="font-family: monospace">width * height * bytes/image element</code> if {@code src_image} is a 2D image, is computed as
 *                                <code style="font-family: monospace">width * height * arraysize * bytes/image element</code> if {@code src_image} is a 2D image array object, is computed as
 *                                <code style="font-family: monospace">width * bytes/image element</code> if {@code src_image} is a 1D image or 1D image buffer object and is computed as
 *                                <code style="font-family: monospace">width * arraysize * bytes/image element</code> if {@code src_image} is a 1D image array object.
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue}, {@code src_image} and {@code dst_buffer} are not the same or if
 *         the context associated with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code src_image} is not a valid image object or {@code dst_buffer} is not a valid buffer object or if
 *         {@code src_image} is a 1D image buffer object created from {@code dst_buffer}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if the 1D, 2D or 3D rectangular region specified by {@code src_origin} and {@code src_origin + region} refers to a region
 *         outside {@code src_image}, or if the region specified by {@code dst_offset} and {@code dst_offset + dst_cb} to a region outside {@code dst_buffer}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values in {@code src_origin} and region do not follow rules described in the argument description for
 *         {@code src_origin} and {@code region}.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code dst_buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if image dimensions (image width, height, specified or compute row and/or slice pitch) for {@code src_image} are not
 *         supported by device associated with queue.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if image format (image channel order and data type) for {@code src_image} are not supported by device
 *         associated with queue.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code src_image} or {@code dst_buffer}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the device associated with {@code command_queue} does not support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueCopyImageToBuffer(command_queue:haxe.Int64,src_image:haxe.Int64,dst_buffer:haxe.Int64,src_origin:java.nio.ByteBuffer,region:java.nio.ByteBuffer,dst_offset:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,src_image:haxe.Int64,dst_buffer:haxe.Int64,src_origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,dst_offset:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #clRetainMemObject RetainMemObject}  */
	static public function nclRetainMemObject(memobj:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** short2 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg2s(kernel:haxe.Int64,arg_index:Int,arg0:Int16,arg1:Int16):Int;
/** JNI method for {@link #clReleaseMemObject ReleaseMemObject}  */
	static public function nclReleaseMemObject(memobj:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clGetMemObjectInfo GetMemObjectInfo}  */
/** JNI method for {@link #clGetMemObjectInfo GetMemObjectInfo}  */
	static public function nclGetMemObjectInfo(memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Unsafe version of {@link #clGetContextInfo GetContextInfo}  */
/** JNI method for {@link #clGetContextInfo GetContextInfo}  */
	static public function nclGetContextInfo(context:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (context:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Unsafe version of {@link #clEnqueueCopyImageToBuffer EnqueueCopyImageToBuffer}  */
/** JNI method for {@link #clEnqueueCopyImageToBuffer EnqueueCopyImageToBuffer}  */
	static public function nclEnqueueCopyImageToBuffer(command_queue:haxe.Int64,src_image:haxe.Int64,dst_buffer:haxe.Int64,src_origin:haxe.Int64,region:haxe.Int64,dst_offset:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,src_image:haxe.Int64,dst_buffer:haxe.Int64,src_origin:haxe.Int64,region:haxe.Int64,dst_offset:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/**
 * Enqueues a command to map a region in the image object given by {@code image} into the host address space and returns a pointer to this mapped region.
 * 
 * <p>The pointer returned maps a 1D, 2D or 3D region starting at {@code origin} and is at least {@code region[0]} pixels in size for a 1D image, 1D image
 * buffer or 1D image array, {@code (image_row_pitch * region[1])} pixels in size for a 2D image or 2D image array, and
 * {@code (image_slice_pitch * region[2])} pixels in size for a 3D image. The result of a memory access outside this region is undefined.</p>
 * 
 * <p>If the image object is created with {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} set in {@code mem_flags}, the following will be true:
 * <ul>
 * <li>The {@code host_ptr} specified in {@link CL12#clCreateImage CreateImage} is guaranteed to contain the latest bits in the region being mapped when the
 * {@code clEnqueueMapImage} command has completed.</li>
 * <li>The pointer value returned by {@code clEnqueueMapImage} will be derived from the {@code host_ptr} specified when the image object is created.</li>
 * </ul>
 * Mapped image objects are unmapped using {@link #clEnqueueUnmapMemObject EnqueueUnmapMemObject}.</p>
 *
 * @param command_queue           a valid command-queue
 * @param image                   a valid image object. The OpenCL context associated with {@code command_queue} and {@code image} must be the same.
 * @param blocking_map            indicates if the map operation is blocking or non-blocking.
 *                                
 *                                <p>If {@code blocking_map} is {@link #CL_TRUE TRUE}, {@code clEnqueueMapImage} does not return until the specified region in image is mapped into the host address
 *                                space and the application can access the contents of the mapped region using the pointer returned by {@code clEnqueueMapImage}.</p>
 *                                
 *                                <p>If {@code blocking_map} is {@link #CL_FALSE FALSE} i.e. map operation is non-blocking, the pointer to the mapped region returned by {@code clEnqueueMapImage}
 *                                cannot be used until the map command has completed. The {@code event} argument returns an event object which can be used to query the execution
 *                                status of the map command. When the map command is completed, the application can access the contents of the mapped region using the pointer
 *                                returned by {@code clEnqueueMapImage}.</p>
 * @param map_flags               a bit-field. One of:<br>{@link #CL_MAP_READ MAP_READ}, {@link #CL_MAP_WRITE MAP_WRITE}, {@link CL12#CL_MAP_WRITE_INVALIDATE_REGION MAP_WRITE_INVALIDATE_REGION}
 * @param origin                  the {@code (x, y, z)} offset in pixels in the 1D, 2D or 3D image, the {@code (x, y)} offset and the image index in the 2D image array or the
 *                                {@code (x)} offset and the image index in the 1D image array. If {@code image} is a 2D image object, {@code origin[2]} must be 0. If {@code image}
 *                                is a 1D image or 1D image buffer object, {@code origin[1]} and {@code origin[2]} must be 0. If {@code image} is a 1D image array object,
 *                                {@code origin[2]} must be 0. If {@code image} is a 1D image array object, {@code origin[1]} describes the image index in the 1D image array. If
 *                                {@code image} is a 2D image array object, {@code origin[2]} describes the image index in the 2D image array.
 * @param region                  the {@code (width, height, depth)} in pixels of the 1D, 2D or 3D rectangle, the {@code (width, height)} in pixels of the 2D rectangle and the number
 *                                of images of a 2D image array or the {@code (width)} in pixels of the 1D rectangle and the number of images of a 1D image array. If {@code image} is
 *                                a 2D image object, {@code region[2]} must be 1. If {@code image} is a 1D image or 1D image buffer object, {@code region[1]} and {@code region[2]}
 *                                must be 1. If {@code image} is a 1D image array object, {@code region[2]} must be 1. The values in {@code region} cannot be 0.
 * @param image_row_pitch         the scan-line pitch in bytes for the mapped region. This must be a non-{@code NULL} value.
 * @param image_slice_pitch       returns the size in bytes of each 2D slice of a 3D image or the size of each 1D or 2D image in a 1D or 2D image array for the mapped region. For a
 *                                1D and 2D image, zero is returned if this argument is not {@code NULL}. For a 3D image, 1D and 2D image array, {@code image_slice_pitch} must be a non-{@code NULL}
 *                                value.
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 * @param errcode_ret             will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a pointer to the mapped region. The {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS}. A {@code NULL} pointer is returned otherwise with one of the following error values
 *         returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if context associated with {@code command_queue} and image are not the same or if context associated with
 *         {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code image} is not a valid image object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if region being mapped given by {@code (origin, origin+region)} is out of bounds or if values specified in
 *         {@code map_flags} are not valid.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values in {@code origin} and {@code region} do not follow rules described in the argument description for {@code origin}
 *         and {@code region}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code image_row_pitch} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code image} is a 3D image, 1D or 2D image array object and {@code image_slice_pitch} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if image dimensions (image width, height, specified or compute row and/or slice pitch) for {@code image} are not
 *         supported by device associated with queue.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if image format (image channel order and data type) for {@code image} are not supported by device associated
 *         with queue.</li>
 *         <li>{@link #CL_MAP_FAILURE MAP_FAILURE} if there is a failure to map the requested region into the host address space. This error cannot occur for image objects
 *         created with {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} or {@link #CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR}.</li>
 *         <li>{@link CL11#CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the map operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code image}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the device associated with {@code command_queue} does not support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if {@code image} has been created with {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY} or {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS} and
 *         {@link #CL_MAP_READ MAP_READ} is set in {@code map_flags} or if image has been created with {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS} and {@link #CL_MAP_WRITE MAP_WRITE} or {@link CL12#CL_MAP_WRITE_INVALIDATE_REGION MAP_WRITE_INVALIDATE_REGION} is set in {@code map_flags}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clEnqueueMapImage EnqueueMapImage}  */
/** Explicit size alternative version of: {@link #clEnqueueMapImage EnqueueMapImage}  */
	static public function clEnqueueMapImage(command_queue:haxe.Int64,image:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,image_row_pitch:org.lwjgl.PointerBuffer,image_slice_pitch:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer,errcode_ret:java.nio.IntBuffer,length:haxe.Int64,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,origin:java.nio.ByteBuffer,region:java.nio.ByteBuffer,image_row_pitch:java.nio.ByteBuffer,image_slice_pitch:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):java.nio.ByteBuffer {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,image_row_pitch:org.lwjgl.PointerBuffer,image_slice_pitch:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer,errcode_ret:java.nio.IntBuffer,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/** Unsafe version of {@link #clGetProgramInfo GetProgramInfo}  */
/** JNI method for {@link #clGetProgramInfo GetProgramInfo}  */
	static public function nclGetProgramInfo(program:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** IntBuffer version of: {@link #clGetImageInfo GetImageInfo}  */
/** PointerBuffer version of: {@link #clGetImageInfo GetImageInfo}  */
/** Alternative version of: {@link #clGetImageInfo GetImageInfo}  */
/**
 * Returns information specific to an image object.
 *
 * @param image                the image object being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_IMAGE_FORMAT IMAGE_FORMAT}, {@link #CL_IMAGE_ELEMENT_SIZE IMAGE_ELEMENT_SIZE}, {@link #CL_IMAGE_ROW_PITCH IMAGE_ROW_PITCH}, {@link #CL_IMAGE_SLICE_PITCH IMAGE_SLICE_PITCH}, {@link #CL_IMAGE_WIDTH IMAGE_WIDTH}, {@link #CL_IMAGE_HEIGHT IMAGE_HEIGHT}, {@link #CL_IMAGE_DEPTH IMAGE_DEPTH}, {@link CL12#CL_IMAGE_ARRAY_SIZE IMAGE_ARRAY_SIZE}, {@link CL12#CL_IMAGE_BUFFER IMAGE_BUFFER}, {@link CL12#CL_IMAGE_NUM_MIP_LEVELS IMAGE_NUM_MIP_LEVELS}, {@link CL12#CL_IMAGE_NUM_SAMPLES IMAGE_NUM_SAMPLES}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code image} is a not a valid image object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetImageInfo(image:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (image:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (image:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (image:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** byte3 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg3b(kernel:haxe.Int64,arg_index:Int,arg0:Int8,arg1:Int8,arg2:Int8):Int;
/**
 * Creates a context using devices of the specified type. See {@link #clCreateContext CreateContext} for details.
 *
 * @param properties  a list of context property names and their corresponding values. Each property name is immediately followed by the corresponding desired value. The
 *                    list is terminated with 0.
 * @param device_type a bit-field that identifies the type of device. One of:<br>{@link #CL_DEVICE_TYPE_DEFAULT DEVICE_TYPE_DEFAULT}, {@link #CL_DEVICE_TYPE_CPU DEVICE_TYPE_CPU}, {@link #CL_DEVICE_TYPE_GPU DEVICE_TYPE_GPU}, {@link #CL_DEVICE_TYPE_ACCELERATOR DEVICE_TYPE_ACCELERATOR}, {@link #CL_DEVICE_TYPE_ALL DEVICE_TYPE_ALL}, {@link CL12#CL_DEVICE_TYPE_CUSTOM DEVICE_TYPE_CUSTOM}
 * @param pfn_notify  a callback function that can be registered by the application
 * @param user_data   will be passed as the {@code user_data} argument when {@code pfn_notify} is called. {@code user_data} can be {@code NULL}.
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 */
/** Alternative version of: {@link #clCreateContextFromType CreateContextFromType}  */
	static public function clCreateContextFromType(properties:org.lwjgl.PointerBuffer,device_type:haxe.Int64,pfn_notify:org.lwjgl.opencl.CLCreateContextCallback,user_data:haxe.Int64,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (properties:java.nio.ByteBuffer,device_type:haxe.Int64,pfn_notify:org.lwjgl.opencl.CLCreateContextCallback,user_data:haxe.Int64,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Creates a command-queue on a specific device.
 * 
 * <p>OpenCL objects such as memory, program and kernel objects are created using a context. Operations on these objects are performed using a command-queue.
 * The command-queue can be used to queue a set of operations (referred to as commands) in order. Having multiple command-queues allows applications to
 * queue multiple independent commands without requiring synchronization. Note that this should work as long as these objects are not being shared. Sharing
 * of objects across multiple command-queues will require the application to perform appropriate synchronization.</p>
 *
 * @param context     a valid OpenCL context
 * @param device      a device associated with context. It can either be in the list of devices specified when context is created using {@link #clCreateContext CreateContext} or have the same
 *                    device type as device type specified when context is created using {@link #clCreateContextFromType CreateContextFromType}.
 * @param properties  a bit-field of properties for the command-queue. One of:<br>{@link #CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE}, {@link #CL_QUEUE_PROFILING_ENABLE QUEUE_PROFILING_ENABLE}
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero command-queue and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the command-queue is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_DEVICE INVALID_DEVICE} if {@code device} is not a valid device or is not associated with {@code context}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values specified in {@code properties} are not valid.</li>
 *         <li>{@link #CL_INVALID_QUEUE_PROPERTIES INVALID_QUEUE_PROPERTIES} if values specified in {@code properties} are valid but are not supported by the device.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clCreateCommandQueue CreateCommandQueue}  */
	static public function clCreateCommandQueue(context:haxe.Int64,device:haxe.Int64,properties:haxe.Int64,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,device:haxe.Int64,properties:haxe.Int64,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/** byte2 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg2b(kernel:haxe.Int64,arg_index:Int,arg0:Int8,arg1:Int8):Int;
/** JNI method for {@link #clRetainEvent RetainEvent}  */
	static public function nclRetainEvent(event:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Increments the {@code command_queue} reference count.
 * 
 * <p>{@link #clCreateCommandQueue CreateCommandQueue} performs an implicit retain. This is very helpful for 3rd party libraries, which typically get a command-queue passed to them by the
 * application. However, it is possible that the application may delete the command-queue without informing the library. Allowing functions to attach to
 * (i.e. retain) and release a command-queue solves the problem of a command-queue being used by a library no longer being valid.</p>
 *
 * @param command_queue the command-queue to retain
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainCommandQueue(command_queue:haxe.Int64):Int;
/** DoubleBuffer version of: {@link #clEnqueueReadImage EnqueueReadImage}  */
/** FloatBuffer version of: {@link #clEnqueueReadImage EnqueueReadImage}  */
/** IntBuffer version of: {@link #clEnqueueReadImage EnqueueReadImage}  */
/** ShortBuffer version of: {@link #clEnqueueReadImage EnqueueReadImage}  */
/** Alternative version of: {@link #clEnqueueReadImage EnqueueReadImage}  */
/**
 * Enqueues a command to read from an image or image array object to host memory.
 * 
 * <p>Calling {@code clEnqueueReadImage} to read a region of the image with the {@code ptr} argument value set to
 * <code style="font-family: monospace">host_ptr + (origin[2] * image slice pitch + origin[1] * image row pitch + origin[0] * bytes per pixel)</code>, where {@code host_ptr} is a pointer
 * to the memory region specified when the image being read is created with {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, must meet the following requirements in order to
 * avoid undefined behavior:
 * <ul>
 * <li>All commands that use this image object have finished execution before the read command begins execution.</li>
 * <li>The row_pitch and slice_pitch argument values in clEnqueueReadImage must be set to the image row pitch and slice pitch.</li>
 * <li>The image object is not mapped.</li>
 * <li>The image object is not used by any command-queue until the read command has finished execution.</li>
 * </ul></p>
 *
 * @param command_queue           the command-queue in which the read command will be queued. {@code command_queue} and {@code image} must be created with the same OpenCL context.
 * @param image                   a valid image or image array object
 * @param blocking_read           indicates if the read operation is blocking or non-blocking.
 *                                
 *                                <p>If {@code blocking_read} is {@link #CL_TRUE TRUE} i.e. the read command is blocking, {@code clEnqueueReadImage} does not return until the buffer data has
 *                                been read and copied into memory pointed to by {@code ptr}.</p>
 *                                
 *                                <p>If {@code blocking_read} is {@link #CL_FALSE FALSE} i.e. the read command is non-blocking, {@code clEnqueueReadImage} queues a non-blocking read command
 *                                and returns. The contents of the buffer that {@code ptr} points to cannot be used until the read command has completed. The {@code event} argument
 *                                returns an event object which can be used to query the execution status of the read command. When the read command has completed, the contents of
 *                                the buffer that {@code ptr} points to can be used by the application.</p>
 * @param origin                  defines the {@code (x, y, z)} offset in pixels in the 1D, 2D or 3D image, the {@code (x, y)} offset and the image index in the 2D image array or the
 *                                {@code (x)} offset and the image index in the 1D image array. If {@code image} is a 2D image object, {@code origin[2]} must be 0. If {@code image}
 *                                is a 1D image or 1D image buffer object, {@code origin[1]} and {@code origin[2]} must be 0. If {@code image} is a 1D image array object,
 *                                {@code origin[2]} must be 0. If {@code image} is a 1D image array object, {@code origin[1]} describes the image index in the 1D image array. If
 *                                {@code image} is a 2D image array object, {@code origin[2]} describes the image index in the 2D image array.
 * @param region                  defines the {@code (width, height, depth)} in pixels of the 1D, 2D or 3D rectangle, the {@code (width, height)} in pixels of the 2D rectangle and
 *                                the number of images of a 2D image array or the {@code (width)} in pixels of the 1D rectangle and the number of images of a 1D image array. If
 *                                {@code image} is a 2D image object, {@code region[2]} must be 1. If {@code image} is a 1D image or 1D image buffer object, {@code region[1]} and
 *                                {@code region[2]} must be 1. If {@code image} is a 1D image array object, {@code region[2]} must be 1. The values in {@code region} cannot be 0.
 * @param row_pitch               the length of each row in bytes. This value must be greater than or equal to the {@code element size in bytes * width}. If {@code row_pitch} is set
 *                                to 0, the appropriate row pitch is calculated based on the size of each element in bytes multiplied by {@code width}.
 * @param slice_pitch             the size in bytes of the 2D slice of the 3D region of a 3D image or each image of a 1D or 2D image array being read. This must be 0 if {@code image}
 *                                is a 1D or 2D image. This value must be greater than or equal to {@code row_pitch * height}. If {@code slice_pitch} is set to 0, the appropriate
 *                                slice pitch is calculated based on the {@code row_pitch * height}.
 * @param ptr                     the pointer to a buffer in host memory where image data is to be read from
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue} and {@code image} are not the same or if the context associated
 *         with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code image} is not a valid image object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if the region being read specified by {@code origin} and {@code region} is out of bounds or if {@code ptr} is a
 *         {@code NULL} value.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values in {@code origin} and {@code region} do not follow rules described in the argument description for
 *         {@code origin} and {@code region}.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if image dimensions (image width, height, specified or compute row and/or slice pitch) for {@code image} are not
 *         supported by device associated with queue.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if image format (image channel order and data type) for {@code image} are not supported by device associated
 *         with queue.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code image}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the device associated with {@code command_queue} does not support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueReadImage} is called on image which has been created with {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueWriteImage} is called on image which has been created with {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link CL11#CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the read operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueReadImage(command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:java.nio.ByteBuffer,region:java.nio.ByteBuffer,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:java.nio.DoubleBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:java.nio.FloatBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:java.nio.IntBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:java.nio.ShortBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** double2 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg2d(kernel:haxe.Int64,arg_index:Int,arg0:Float,arg1:Float):Int;
/** float2 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg2f(kernel:haxe.Int64,arg_index:Int,arg0:Float,arg1:Float):Int;
/** Single value version of: {@link #clBuildProgram BuildProgram}  */
/** CharSequence version of: {@link #clBuildProgram BuildProgram}  */
/** Alternative version of: {@link #clBuildProgram BuildProgram}  */
/**
 * Builds (compiles & links) a program executable from the program source or binary for all the devices or a specific device(s) in the OpenCL context
 * associated with {@code program}. OpenCL allows program executables to be built using the source or the binary. {@code clBuildProgram} must be called for
 * {@code program} created using either {@link #clCreateProgramWithSource CreateProgramWithSource} or {@link #clCreateProgramWithBinary CreateProgramWithBinary} to build the program executable for one or more devices
 * associated with {@code program}. If {@code program} is created with {@link #clCreateProgramWithBinary CreateProgramWithBinary}, then the program binary must be an executable binary (not
 * a compiled binary or library).
 * 
 * <p>The executable binary can be queried using {@link #clGetProgramInfo GetProgramInfo} and can be specified to {@link #clCreateProgramWithBinary CreateProgramWithBinary} to create a new program object.</p>
 *
 * @param program     the program object
 * @param num_devices the number of devices listed in {@code device_list}
 * @param device_list a pointer to a list of devices associated with {@code program}. If {@code device_list} is a {@code NULL} value, the program executable is built for all
 *                    devices associated with {@code program} for which a source or binary has been loaded. If {@code device_list} is a non-{@code NULL} value, the program
 *                    executable is built for devices specified in this list for which a source or binary has been loaded.
 * @param options     a pointer to a null-terminated string of characters that describes the build options to be used for building the program executable
 * @param pfn_notify  a function pointer to a notification routine. The notification routine is a callback function that an application can register and which will be
 *                    called when the program executable has been built (successfully or unsuccessfully). If {@code pfn_notify} is not {@code NULL}, {@code clBuildProgram} does
 *                    not need to wait for the build to complete and can return immediately once the build operation can begin. The build operation can begin if the
 *                    context, program whose sources are being compiled and linked, list of devices and build options specified are all valid and appropriate host and
 *                    device resources needed to perform the build are available. If {@code pfn_notify} is {@code NULL}, {@code clBuildProgram} does not return until the build
 *                    has completed. This callback function may be called asynchronously by the OpenCL implementation. It is the application's responsibility to ensure
 *                    that the callback function is thread-safe.
 * @param user_data   will be passed as an argument when {@code pfn_notify} is called. {@code user_data} can be NULL.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_PROGRAM INVALID_PROGRAM} if {@code program} is not a valid program object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code device_list} is {@code NULL} and {@code num_devices} is &gt; 0, or if {@code device_list} is not {@code NULL} and {@code num_devices} is 0.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code pfn_notify} is {@code NULL} but {@code user_data} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_DEVICE INVALID_DEVICE} if OpenCL devices listed in {@code device_list} are not in the list of devices associated with program.</li>
 *         <li>{@link #CL_INVALID_BINARY INVALID_BINARY} if {@code program} is created with {@link #clCreateProgramWithBinary CreateProgramWithBinary} and devices listed in {@code device_list} do not have a valid
 *         program binary loaded.</li>
 *         <li>{@link #CL_INVALID_BUILD_OPTIONS INVALID_BUILD_OPTIONS} if the build options specified by {@code options} are invalid.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the build of a program executable for any of the devices listed in {@code device_list} by a previous call to
 *         {@code clBuildProgram} for {@code program} has not completed.</li>
 *         <li>{@link #CL_COMPILER_NOT_AVAILABLE COMPILER_NOT_AVAILABLE} if {@code program} is created with {@link #clCreateProgramWithSource CreateProgramWithSource} and a compiler is not available i.e.
 *         {@link #CL_DEVICE_COMPILER_AVAILABLE DEVICE_COMPILER_AVAILABLE} is set to {@link #CL_FALSE FALSE}.</li>
 *         <li>{@link #CL_BUILD_PROGRAM_FAILURE BUILD_PROGRAM_FAILURE} if there is a failure to build the program executable. This error will be returned if {@code clBuildProgram} does
 *         not return until the build has completed.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if there are kernel objects attached to {@code program}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if program was not created with {@link #clCreateProgramWithSource CreateProgramWithSource} or {@link #clCreateProgramWithBinary CreateProgramWithBinary}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clBuildProgram(program:haxe.Int64,num_devices:Int,device_list:java.nio.ByteBuffer,options:java.nio.ByteBuffer,pfn_notify:org.lwjgl.opencl.CLProgramCallback,user_data:haxe.Int64):Int;
	@:overload(function (program:haxe.Int64,device:haxe.Int64,options:java.lang.CharSequence,pfn_notify:org.lwjgl.opencl.CLProgramCallback,user_data:haxe.Int64):Int {})
	@:overload(function (program:haxe.Int64,device_list:org.lwjgl.PointerBuffer,options:java.lang.CharSequence,pfn_notify:org.lwjgl.opencl.CLProgramCallback,user_data:haxe.Int64):Int {})
	@:overload(function (program:haxe.Int64,device_list:org.lwjgl.PointerBuffer,options:java.nio.ByteBuffer,pfn_notify:org.lwjgl.opencl.CLProgramCallback,user_data:haxe.Int64):Int {})
/** int2 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg2i(kernel:haxe.Int64,arg_index:Int,arg0:Int,arg1:Int):Int;
/** Unsafe version of {@link #clGetKernelInfo GetKernelInfo}  */
/** JNI method for {@link #clGetKernelInfo GetKernelInfo}  */
	static public function nclGetKernelInfo(kernel:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (kernel:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/**
 * Enqueues a barrier operation. The {@code clEnqueueBarrier} command ensures that all queued commands in {@code command_queue} have finished execution
 * before the next batch of commands can begin execution. The {@code clEnqueueBarrier} command is a synchronization point.
 *
 * @param command_queue the command-queue to insert the barrier to
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is successfully executed. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueBarrier(command_queue:haxe.Int64):Int;
/** Unsafe version of {@link #clEnqueueMapBuffer EnqueueMapBuffer}  */
/** JNI method for {@link #clEnqueueMapBuffer EnqueueMapBuffer}  */
	static public function nclEnqueueMapBuffer(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,offset:haxe.Int64,size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,offset:haxe.Int64,size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #clRetainKernel RetainKernel}  */
	static public function nclRetainKernel(kernel:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** long2 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg2l(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64,arg1:haxe.Int64):Int;
/** pointer2 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg2p(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64,arg1:haxe.Int64):Int;
/** Alternative version of: {@link #clGetDeviceIDs GetDeviceIDs}  */
/**
 * Obtains the list of devices available on a platform.
 *
 * @param platform    the platform to query
 * @param device_type a bitfield that identifies the type of OpenCL device. The {@code device_type} can be used to query specific OpenCL devices or all OpenCL devices
 *                    available. One or more of:<br>{@link #CL_DEVICE_TYPE_DEFAULT DEVICE_TYPE_DEFAULT}, {@link #CL_DEVICE_TYPE_CPU DEVICE_TYPE_CPU}, {@link #CL_DEVICE_TYPE_GPU DEVICE_TYPE_GPU}, {@link #CL_DEVICE_TYPE_ACCELERATOR DEVICE_TYPE_ACCELERATOR}, {@link #CL_DEVICE_TYPE_ALL DEVICE_TYPE_ALL}, {@link CL12#CL_DEVICE_TYPE_CUSTOM DEVICE_TYPE_CUSTOM}
 * @param num_entries the number of {@code cl_device_id} entries that can be added to devices. If {@code devices} is not {@code NULL}, the {@code num_entries} must be greater
 *                    than zero.
 * @param devices     returns a list of OpenCL devices found. The {@code cl_device_id} values returned in {@code devices} can be used to identify a specific OpenCL
 *                    device. If {@code devices} argument is {@code NULL}, this argument is ignored. The number of OpenCL devices returned is the minimum of the value specified
 *                    by {@code num_entries} or the number of OpenCL devices whose type matches {@code device_type}.
 * @param num_devices returns the number of OpenCL devices available that match {@code device_type}. If {@code num_devices} is {@code NULL}, this argument is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_PLATFORM INVALID_PLATFORM} if {@code platform} is not a valid platform.</li>
 *         <li>{@link #CL_INVALID_DEVICE_TYPE INVALID_DEVICE_TYPE} if {@code device_type} is not a valid value.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code num_entries} is equal to zero and {@code devices} is not {@code NULL} or if both {@code num_devices} and {@code devices} are {@code NULL}.</li>
 *         <li>{@link #CL_DEVICE_NOT_FOUND DEVICE_NOT_FOUND} if no OpenCL devices that matched {@code device_type} were found.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetDeviceIDs(platform:haxe.Int64,device_type:haxe.Int64,num_entries:Int,devices:java.nio.ByteBuffer,num_devices:java.nio.ByteBuffer):Int;
	@:overload(function (platform:haxe.Int64,device_type:haxe.Int64,devices:org.lwjgl.PointerBuffer,num_devices:java.nio.IntBuffer):Int {})
/** IntBuffer version of: {@link #clGetProgramBuildInfo GetProgramBuildInfo}  */
/** PointerBuffer version of: {@link #clGetProgramBuildInfo GetProgramBuildInfo}  */
/** Alternative version of: {@link #clGetProgramBuildInfo GetProgramBuildInfo}  */
/**
 * Returns build information for each device in the program object.
 *
 * @param program              the program object being queried
 * @param device               the device for which build information is being queried. {@code device} must be a valid device associated with {@code program}.
 * @param param_name           the information to query. One of:<br>{@link #CL_PROGRAM_BUILD_STATUS PROGRAM_BUILD_STATUS}, {@link #CL_PROGRAM_BUILD_OPTIONS PROGRAM_BUILD_OPTIONS}, {@link #CL_PROGRAM_BUILD_LOG PROGRAM_BUILD_LOG}, {@link CL12#CL_PROGRAM_BINARY_TYPE PROGRAM_BINARY_TYPE}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_DEVICE INVALID_DEVICE} if {@code device} is not in the list of devices associated with program.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_PROGRAM INVALID_PROGRAM} if {@code program} is a not a valid program object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetProgramBuildInfo(program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** Single short value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg1s(kernel:haxe.Int64,arg_index:Int,arg0:Int16):Int;
/**
 * Allows the implementation to release the resources allocated by the OpenCL compiler. This is a hint from the application and does not guarantee that the
 * compiler will not be used in the future or that the compiler will actually be unloaded by the implementation.
 * 
 * <p>Calls to {@link #clBuildProgram BuildProgram} after {@link #clUnloadCompiler UnloadCompiler} will reload the compiler, if necessary, to build the appropriate program executable.</p>
 *
 * @return always {@link #CL_SUCCESS SUCCESS}
 */
	static public function clUnloadCompiler():Int;
/** Single binary version of: {@link #clCreateProgramWithBinary CreateProgramWithBinary}  */
/** Array version of: {@link #clCreateProgramWithBinary CreateProgramWithBinary}  */
/** Alternative version of: {@link #clCreateProgramWithBinary CreateProgramWithBinary}  */
/**
 * Creates a program object for a context, and loads the binary bits specified by {@code binary} into the program object.
 * 
 * <p>The program binaries specified by {@code binaries} contain the bits that describe one of the following:
 * <ul>
 * <li>a program executable to be run on the device(s) associated with {@code context},</li>
 * <li>a compiled program for device(s) associated with {@code context}, or</li>
 * <li>a library of compiled programs for device(s) associated with {@code context}.</li>
 * </ul>
 * The program binary can consist of either or both:
 * <ul>
 * <li>Device-specific code and/or,</li>
 * <li>Implementation-specific intermediate representation (IR) which will be converted to the device-specific code.</li>
 * </ul>
 * OpenCL allows applications to create a program object using the program source or binary and build appropriate program executables. This can be very
 * useful as it allows applications to load program source and then compile and link to generate a program executable online on its first instance for
 * appropriate OpenCL devices in the system. These executables can now be queried and cached by the application. Future instances of the application
 * launching will no longer need to compile and link the program executables. The cached executables can be read and loaded by the application, which can
 * help significantly reduce the application initialization time.</p>
 *
 * @param context       a valid OpenCL context
 * @param num_devices   the number of devices listed in {@code device_list}
 * @param device_list   a pointer to a list of devices that are in {@code context}. device_list must be a non-{@code NULL} value. The binaries are loaded for devices specified in
 *                      this list.
 * @param lengths       an array of the size in bytes of the program binaries to be loaded for devices specified by {@code device_list}.
 * @param binaries      an array of pointers to program binaries to be loaded for devices specified by {@code device_list}. For each device given by {@code device_list[i]},
 *                      the pointer to the program binary for that device is given by {@code binaries[i]} and the length of this corresponding binary is given by
 *                      {@code lengths[i]}. {@code lengths[i]} cannot be zero and {@code binaries[i]} cannot be a {@code NULL} pointer.
 * @param binary_status returns whether the program binary for each device specified in device_list was loaded successfully or not. It is an array of {@code num_devices}
 *                      entries and returns {@link #CL_SUCCESS SUCCESS} in {@code binary_status[i]} if binary was successfully loaded for device specified by {@code device_list[i]};
 *                      otherwise returns {@link #CL_INVALID_VALUE INVALID_VALUE} if {@code lengths[i]} is zero or if {@code binaries[i]} is a {@code NULL} value or {@link #CL_INVALID_BINARY INVALID_BINARY} in
 *                      {@code binary_status[i]} if program binary is not a valid binary for the specified device. If {@code binary_status} is {@code NULL}, it is ignored.
 * @param errcode_ret   will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero program object and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the program object is created successfully. Otherwise, it returns a {@code NULL}
 *         value with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code device_list} is {@code NULL} or {@code num_devices} is zero.</li>
 *         <li>{@link #CL_INVALID_DEVICE INVALID_DEVICE} if OpenCL devices listed in {@code device_list} are not in the list of devices associated with {@code context}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code lengths} or {@code binaries} are NULL or if any entry in {@code lengths[i]} is zero or {@code binaries[i]} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_BINARY INVALID_BINARY} if an invalid program binary was encountered for any device. {@code binary_status} will return specific status for each device.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateProgramWithBinary(context:haxe.Int64,num_devices:Int,device_list:java.nio.ByteBuffer,lengths:java.nio.ByteBuffer,binaries:java.nio.ByteBuffer,binary_status:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,device_list:org.lwjgl.PointerBuffer,binary:java.nio.ByteBuffer,binary_status:java.nio.IntBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,device_list:org.lwjgl.PointerBuffer,binaries:java.NativeArray<java.nio.ByteBuffer>,binary_status:java.nio.IntBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,device_list:org.lwjgl.PointerBuffer,lengths:org.lwjgl.PointerBuffer,binaries:org.lwjgl.PointerBuffer,binary_status:java.nio.IntBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/** Unsafe version of {@link #clCreateContextFromType CreateContextFromType}  */
/** JNI method for {@link #clCreateContextFromType CreateContextFromType}  */
	static public function nclCreateContextFromType(properties:haxe.Int64,device_type:haxe.Int64,pfn_notify:haxe.Int64,user_data:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (properties:haxe.Int64,device_type:haxe.Int64,pfn_notify:haxe.Int64,user_data:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #clEnqueueWriteImage EnqueueWriteImage}  */
/** JNI method for {@link #clEnqueueWriteImage EnqueueWriteImage}  */
	static public function nclEnqueueWriteImage(command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:haxe.Int64,region:haxe.Int64,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:haxe.Int64,region:haxe.Int64,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/**
 * Enqueues a marker command to {@code command_queue}. The marker command is not completed until all commands enqueued before it have completed. The marker
 * command returns an event which can be waited on, i.e. this event can be waited on to insure that all commands, which have been queued before the marker
 * command, have been completed.
 *
 * @param command_queue the command-queue to insert the marker to
 * @param event         Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                      {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                      complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                      {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is successfully executed. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code event} is a {@code NULL} value.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clEnqueueMarker EnqueueMarker}  */
	static public function clEnqueueMarker(command_queue:haxe.Int64,event:org.lwjgl.PointerBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,event:java.nio.ByteBuffer):Int {})
/**
 * Increments the event reference count. The OpenCL commands that return an event perform an implicit retain.
 *
 * @param event the event to retain
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_EVENT INVALID_EVENT} if {@code event} is not a valid event object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainEvent(event:haxe.Int64):Int;
/** JNI method for {@link #clReleaseEvent ReleaseEvent}  */
	static public function nclReleaseEvent(event:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #clUnloadCompiler UnloadCompiler}  */
	static public function nclUnloadCompiler(__functionAddress:haxe.Int64):Int;
/** Alternative version of: {@link #clEnqueueCopyImage EnqueueCopyImage}  */
/**
 * Enqueues a command to copy image objects. {@code src_image} and {@code dst_image} can be 1D, 2D, 3D image or a 1D, 2D image array objects allowing us to
 * perform the following actions:
 * <ul>
 * <li>Copy a 1D image object to a 1D image object.</li>
 * <li>Copy a 1D image object to a scanline of a 2D image object and vice-versa.</li>
 * <li>Copy a 1D image object to a scanline of a 2D slice of a 3D image object and vice-versa.</li>
 * <li>Copy a 1D image object to a scanline of a specific image index of a 1D or 2D image array object and vice-versa.</li>
 * <li>Copy a 2D image object to a 2D image object.</li>
 * <li>Copy a 2D image object to a 2D slice of a 3D image object and vice-versa.</li>
 * <li>Copy a 2D image object to a specific image index of a 2D image array object and vice-versa.</li>
 * <li>Copy images from a 1D image array object to a 1D image array object.</li>
 * <li>Copy images from a 2D image array object to a 2D image array object.</li>
 * <li>Copy a 3D image object to a 3D image object.</li>
 * </ul>
 *
 * @param command_queue           the command-queue in which the copy command will be queued. The OpenCL context associated with {@code command_queue}, {@code src_image} and
 *                                {@code dst_image} must be the same.
 * @param src_image               
 * @param dst_image               
 * @param src_origin              the {@code (x, y, z)} offset in pixels in the 1D, 2D or 3D image, the {@code (x, y)} offset and the image index in the 2D image array or the
 *                                {@code (x)} offset and the image index in the 1D image array. If {@code src_image} is a 2D image object, {@code src_origin[2]} must be 0. If
 *                                {@code src_image} is a 1D image object, {@code src_origin[1]} and {@code src_origin[2]} must be 0. If {@code src_image} is a 1D image array object,
 *                                {@code src_origin[2]} must be 0. If {@code src_image} is a 1D image array object, {@code src_origin[1]} describes the image index in the 1D image
 *                                array. If {@code src_image} is a 2D image array object, {@code src_origin[2]} describes the image index in the 2D image array.
 * @param dst_origin              the {@code (x, y, z)} offset in pixels in the 1D, 2D or 3D image, the {@code (x, y)} offset and the image index in the 2D image array or the
 *                                {@code (x)} offset and the image index in the 1D image array. If {@code dst_image} is a 2D image object, {@code dst_origin[2]} must be 0. If
 *                                {@code dst_image} is a 1D image or 1D image buffer object, {@code dst_origin[1]} and {@code dst_origin[2]} must be 0. If {@code dst_image} is a 1D
 *                                image array object, {@code dst_origin[2]} must be 0. If {@code dst_image} is a 1D image array object, {@code dst_origin[1]} describes the image
 *                                index in the 1D image array. If {@code dst_image} is a 2D image array object, {@code dst_origin[2]} describes the image index in the 2D image array.
 * @param region                  the {@code (width, height, depth)} in pixels of the 1D, 2D or 3D rectangle, the {@code (width, height)} in pixels of the 2D rectangle and the number
 *                                of images of a 2D image array or the {@code (width)} in pixels of the 1D rectangle and the number of images of a 1D image array. If
 *                                {@code src_image} or {@code dst_image} is a 2D image object, {@code region[2]} must be 1. If {@code src_image} or {@code dst_image} is a 1D image or
 *                                1D image buffer object, {@code region[1]} and {@code region[2]} must be 1. If {@code src_image} or {@code dst_image} is a 1D image array object,
 *                                {@code region[2]} must be 1. The values in {@code region} cannot be 0.
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue}, {@code src_image} and {@code dst_image} are not the same or if the
 *         context associated with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code src_image} and {@code dst_image} are not valid image objects.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_MISMATCH IMAGE_FORMAT_MISMATCH} if {@code src_image} and {@code dst_image} do not use the same image format.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if the 2D or 3D rectangular region specified by {@code src_origin} and {@code src_origin + region} refers to a region
 *         outside {@code src_image}, or if the 2D or 3D rectangular region specified by {@code dst_origin} and {@code dst_origin + region} refers to a region
 *         outside {@code dst_image}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values in {@code src_origin}, {@code dst_origin} and {@code region} do not follow rules described in the argument
 *         description for {@code src_origin}, {@code dst_origin} and {@code region}.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if image dimensions (image width, height, specified or compute row and/or slice pitch) for {@code src_image} or
 *         {@code dst_image} are not supported by device associated with queue.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if image format (image channel order and data type) for {@code src_image} or {@code dst_image} are not
 *         supported by device associated with queue.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code src_image} or {@code dst_image}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the device associated with {@code command_queue} does not support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_MEM_COPY_OVERLAP MEM_COPY_OVERLAP} if {@code src_image} and {@code dst_image} are the same image object and the source and destination regions overlap.</li>
 *         </ul>
 */
	static public function clEnqueueCopyImage(command_queue:haxe.Int64,src_image:haxe.Int64,dst_image:haxe.Int64,src_origin:java.nio.ByteBuffer,dst_origin:java.nio.ByteBuffer,region:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,src_image:haxe.Int64,dst_image:haxe.Int64,src_origin:org.lwjgl.PointerBuffer,dst_origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clEnqueueMapImage EnqueueMapImage}  */
/** JNI method for {@link #clEnqueueMapImage EnqueueMapImage}  */
	static public function nclEnqueueMapImage(command_queue:haxe.Int64,image:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,origin:haxe.Int64,region:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,origin:haxe.Int64,region:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #clCreateProgramWithBinary CreateProgramWithBinary}  */
/** JNI method for {@link #clCreateProgramWithBinary CreateProgramWithBinary}  */
	static public function nclCreateProgramWithBinary(context:haxe.Int64,num_devices:Int,device_list:haxe.Int64,lengths:haxe.Int64,binaries:haxe.Int64,binary_status:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,num_devices:Int,device_list:haxe.Int64,lengths:haxe.Int64,binaries:haxe.Int64,binary_status:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/**
 * Decrements the context reference count.
 * 
 * <p>After the context reference count becomes zero and all the objects attached to context (such as memory objects, command-queues) are released, the
 * context is deleted.</p>
 *
 * @param context the context to release
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseContext(context:haxe.Int64):Int;
/** JNI method for {@link #clReleaseKernel ReleaseKernel}  */
	static public function nclReleaseKernel(kernel:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** IntBuffer version of: {@link #clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
/** LongBuffer version of: {@link #clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
/** PointerBuffer version of: {@link #clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
/** Alternative version of: {@link #clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
/**
 * Returns information about the kernel object that may be specific to a device.
 *
 * @param kernel               the kernel object being queried
 * @param device               identifies a specific device in the list of devices associated with {@code kernel}. The list of devices is the list of devices in the OpenCL context
 *                             that is associated with {@code kernel}. If the list of devices associated with {@code kernel} is a single device, {@code device} can be a {@code NULL} value.
 * @param param_name           the information to query. One of:<br>{@link #CL_KERNEL_WORK_GROUP_SIZE KERNEL_WORK_GROUP_SIZE}, {@link #CL_KERNEL_COMPILE_WORK_GROUP_SIZE KERNEL_COMPILE_WORK_GROUP_SIZE}, {@link #CL_KERNEL_LOCAL_MEM_SIZE KERNEL_LOCAL_MEM_SIZE}, {@link CL11#CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE}, {@link CL11#CL_KERNEL_PRIVATE_MEM_SIZE KERNEL_PRIVATE_MEM_SIZE}, {@link CL12#CL_KERNEL_GLOBAL_WORK_SIZE KERNEL_GLOBAL_WORK_SIZE}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_DEVICE INVALID_DEVICE} if {@code device} is not in the list of devices associated with {@code kernel} or if {@code device} is {@code NULL} but there is
 *         more than one device associated with {@code kernel}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is {@link CL12#CL_KERNEL_GLOBAL_WORK_SIZE KERNEL_GLOBAL_WORK_SIZE} and {@code device} is not a custom device or kernel is
 *         not a built-in kernel.</li>
 *         <li>{@link #CL_INVALID_KERNEL INVALID_KERNEL} if {@code kernel} is a not a valid kernel object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetKernelWorkGroupInfo(kernel:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (kernel:haxe.Int64,device:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,device:haxe.Int64,param_name:Int,param_value:java.nio.LongBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,device:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clBuildProgram BuildProgram}  */
/** JNI method for {@link #clBuildProgram BuildProgram}  */
	static public function nclBuildProgram(program:haxe.Int64,num_devices:Int,device_list:haxe.Int64,options:haxe.Int64,pfn_notify:haxe.Int64,user_data:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:haxe.Int64,num_devices:Int,device_list:haxe.Int64,options:haxe.Int64,pfn_notify:haxe.Int64,user_data:haxe.Int64):Int {})
/** Alternative version of: {@link #clGetPlatformIDs GetPlatformIDs}  */
/**
 * Obtains the list of available platforms.
 *
 * @param num_entries   the number of {@code cl_platform_id} entries that can be added to {@code platforms}. If {@code platforms} is not {@code NULL}, the {@code num_entries} must
 *                      be greater than zero.
 * @param platforms     returns a list of OpenCL platforms found. The {@code cl_platform_id} values returned in {@code platforms} can be used to identify a specific OpenCL
 *                      platform. If {@code platforms} argument is {@code NULL}, this argument is ignored. The number of OpenCL platforms returned is the minimum of the value
 *                      specified by {@code num_entries} or the number of OpenCL platforms available.
 * @param num_platforms returns the number of OpenCL platforms available. If {@code num_platforms} is {@code NULL}, this argument is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code num_entries} is equal to zero and {@code platforms} is not {@code NULL} or if both {@code num_platforms} and
 *         {@code platforms} are {@code NULL}.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetPlatformIDs(num_entries:Int,platforms:java.nio.ByteBuffer,num_platforms:java.nio.ByteBuffer):Int;
	@:overload(function (platforms:org.lwjgl.PointerBuffer,num_platforms:java.nio.IntBuffer):Int {})
/** Unsafe version of {@link #clGetPlatformInfo GetPlatformInfo}  */
/** JNI method for {@link #clGetPlatformInfo GetPlatformInfo}  */
	static public function nclGetPlatformInfo(platform:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (platform:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/**
 * Creates a {@link CLNativeKernel} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link CLNativeKernel} instance
 */
	static public function CLNativeKernel(sam:org.lwjgl.opencl.CLNativeKernel_SAM):org.lwjgl.opencl.CLNativeKernel;
/**
 * Decrements the {@code program} reference count. The program object is deleted after all kernel objects associated with program have been deleted and the
 * program reference count becomes zero.
 *
 * @param program the program object to release
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_PROGRAM INVALID_PROGRAM} if {@code program} is not a valid program object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseProgram(program:haxe.Int64):Int;
/** IntBuffer version of: {@link #clGetSamplerInfo GetSamplerInfo}  */
/** PointerBuffer version of: {@link #clGetSamplerInfo GetSamplerInfo}  */
/** Alternative version of: {@link #clGetSamplerInfo GetSamplerInfo}  */
/**
 * Returns information about a sampler object.
 *
 * @param sampler              the sampler being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_SAMPLER_REFERENCE_COUNT SAMPLER_REFERENCE_COUNT}, {@link #CL_SAMPLER_CONTEXT SAMPLER_CONTEXT}, {@link #CL_SAMPLER_NORMALIZED_COORDS SAMPLER_NORMALIZED_COORDS}, {@link #CL_SAMPLER_ADDRESSING_MODE SAMPLER_ADDRESSING_MODE}, {@link #CL_SAMPLER_FILTER_MODE SAMPLER_FILTER_MODE}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_SAMPLER INVALID_SAMPLER} if {@code sampler} is a not a valid sampler object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetSamplerInfo(sampler:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (sampler:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (sampler:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (sampler:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clCreateKernelsInProgram CreateKernelsInProgram}  */
/** JNI method for {@link #clCreateKernelsInProgram CreateKernelsInProgram}  */
	static public function nclCreateKernelsInProgram(program:haxe.Int64,num_kernels:Int,kernels:haxe.Int64,num_kernels_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:haxe.Int64,num_kernels:Int,kernels:haxe.Int64,num_kernels_ret:haxe.Int64):Int {})
/**
 * Increments the {@code program} reference count. {@code clCreateProgram} does an implicit retain.
 *
 * @param program the program object to retain
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_PROGRAM INVALID_PROGRAM} if {@code program} is not a valid program object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainProgram(program:haxe.Int64):Int;
/** IntBuffer version of: {@link #clGetContextInfo GetContextInfo}  */
/** PointerBuffer version of: {@link #clGetContextInfo GetContextInfo}  */
/** Alternative version of: {@link #clGetContextInfo GetContextInfo}  */
/**
 * Queries information about a context.
 *
 * @param context              the OpenCL context being queried
 * @param param_name           an enumeration constant that specifies the information to query. One of:<br>{@link #CL_CONTEXT_REFERENCE_COUNT CONTEXT_REFERENCE_COUNT}, {@link #CL_CONTEXT_DEVICES CONTEXT_DEVICES}, {@link #CL_CONTEXT_PROPERTIES CONTEXT_PROPERTIES}, {@link CL11#CL_CONTEXT_NUM_DEVICES CONTEXT_NUM_DEVICES}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not one of the supported values or if size in bytes specified by {@code param_value_size} is &lt;
 *         size of return type and {@code param_value} is not a {@code NULL} value.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetContextInfo(context:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (context:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (context:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (context:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** IntBuffer version of: {@link #clGetCommandQueueInfo GetCommandQueueInfo}  */
/** LongBuffer version of: {@link #clGetCommandQueueInfo GetCommandQueueInfo}  */
/** PointerBuffer version of: {@link #clGetCommandQueueInfo GetCommandQueueInfo}  */
/** Alternative version of: {@link #clGetCommandQueueInfo GetCommandQueueInfo}  */
/**
 * Queries information about a command-queue.
 *
 * @param command_queue        the command-queue being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_QUEUE_CONTEXT QUEUE_CONTEXT}, {@link #CL_QUEUE_DEVICE QUEUE_DEVICE}, {@link #CL_QUEUE_REFERENCE_COUNT QUEUE_REFERENCE_COUNT}, {@link #CL_QUEUE_PROPERTIES QUEUE_PROPERTIES}, {@link CL20#CL_QUEUE_SIZE QUEUE_SIZE}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not one of the supported values or if size in bytes specified by {@code param_value_size} is &lt;
 *         size of return type and {@code param_value} is not a {@code NULL} value.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetCommandQueueInfo(command_queue:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,param_name:Int,param_value:java.nio.LongBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** FloatBuffer version of: {@link #clCreateImage3D CreateImage3D}  */
/** IntBuffer version of: {@link #clCreateImage3D CreateImage3D}  */
/** ShortBuffer version of: {@link #clCreateImage3D CreateImage3D}  */
/** Alternative version of: {@link #clCreateImage3D CreateImage3D}  */
/**
 * Creates a 3D image object.
 *
 * @param context           a valid OpenCL context on which the image object is to be created
 * @param flags             a bit-field that is used to specify allocation and usage information about the image memory object being created. One of:<br>{@link #CL_MEM_READ_WRITE MEM_READ_WRITE}, {@link #CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link #CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, {@link #CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR}, {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR}, {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY}, {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY}, {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}
 * @param image_format      a pointer to a {@link CLImageFormat} structure that describes format properties of the image to be allocated
 * @param image_width       the width of the image in pixels
 * @param image_height      the height of the image in pixels
 * @param image_depth       the depth of the image in pixels. This must be a value &gt; 1.
 * @param image_row_pitch   the scan-line pitch in bytes. This must be 0 if {@code host_ptr} is {@code NULL} and can be either 0 or &#x2265; {@code image_width * size} of element in
 *                          bytes if {@code host_ptr} is not {@code NULL}. If {@code host_ptr} is not {@code NULL} and {@code image_row_pitch} = 0, {@code image_row_pitch} is calculated as
 *                          {@code image_width * size of element} in bytes. If {@code image_row_pitch} is not 0, it must be a multiple of the image element size in bytes.
 * @param image_slice_pitch the size in bytes of each 2D slice in the 3D image. This must be 0 if {@code host_ptr} is {@code NULL} and can be either 0 or &#x2265;
 *                          {@code image_row_pitch * image_height} if {@code host_ptr} is not {@code NULL}. If {@code host_ptr} is not {@code NULL} and {@code image_slice_pitch = 0},
 *                          {@code image_slice_pitch} is calculated as {@code image_row_pitch * image_height}. If {@code image_slice_pitch} is not 0, it must be a multiple of
 *                          the {@code image_row_pitch}.
 * @param host_ptr          a pointer to the image data that may already be allocated by the application. The size of the buffer that {@code host_ptr} points to must be &#x2265;
 *                          {@code image_slice_pitch * image_depth}. The size of each element in bytes must be a power of 2. The image data specified by {@code host_ptr} is
 *                          stored as a linear sequence of adjacent 2D slices. Each 2D slice is a linear sequence of adjacent scanlines. Each scanline is a linear sequence of
 *                          image elements.
 * @param errcode_ret       will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero image object and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the image object is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values specified in {@code flags} are not valid.</li>
 *         <li>{@link #CL_INVALID_IMAGE_FORMAT_DESCRIPTOR INVALID_IMAGE_FORMAT_DESCRIPTOR} if values specified in {@code image_format} are not valid or if {@code image_format} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if {@code image_width}, {@code image_height} are 0 or if {@code image_depth} &#x2264; 1 or if they exceed values
 *         specified in {@link #CL_DEVICE_IMAGE3D_MAX_WIDTH DEVICE_IMAGE3D_MAX_WIDTH}, {@link #CL_DEVICE_IMAGE3D_MAX_HEIGHT DEVICE_IMAGE3D_MAX_HEIGHT} or {@link #CL_DEVICE_IMAGE3D_MAX_DEPTH DEVICE_IMAGE3D_MAX_DEPTH} respectively for
 *         all devices in {@code context} or if values specified by {@code image_row_pitch} and {@code image_slice_pitch} do not follow rules described in the
 *         argument descriptions.</li>
 *         <li>{@link #CL_INVALID_HOST_PTR INVALID_HOST_PTR} if {@code host_ptr} is {@code NULL} and {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} or {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} are set in flags or if
 *         {@code host_ptr} is not {@code NULL} but {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} or {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} are not set in flags.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if the {@code image_format} is not supported.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for image object.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if there are no devices in {@code context} that support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateImage3D(context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,host_ptr:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,host_ptr:java.nio.FloatBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,host_ptr:java.nio.IntBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,host_ptr:java.nio.ShortBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,host_ptr:java.nio.ByteBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/**
 * Decrements the sampler reference count. The sampler object is deleted after the reference count becomes zero and commands queued for execution on a
 * command-queue(s) that use sampler have finished.
 *
 * @param sampler the sample object to release
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_SAMPLER INVALID_SAMPLER} if {@code sampler} is not a valid sampler object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseSampler(sampler:haxe.Int64):Int;
/** double4 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg4d(kernel:haxe.Int64,arg_index:Int,arg0:Float,arg1:Float,arg2:Float,arg3:Float):Int;
/** float4 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg4f(kernel:haxe.Int64,arg_index:Int,arg0:Float,arg1:Float,arg2:Float,arg3:Float):Int;
/** Alternative version of: {@link #clEnqueueUnmapMemObject EnqueueUnmapMemObject}  */
/**
 * Enqueues a command to unmap a previously mapped region of a memory object. Reads or writes from the host using the pointer returned by
 * {@link #clEnqueueMapBuffer EnqueueMapBuffer} or {@link #clEnqueueMapImage EnqueueMapImage} are considered to be complete.
 * 
 * <p>{@link #clEnqueueMapBuffer EnqueueMapBuffer}, and {@link #clEnqueueMapImage EnqueueMapImage} increments the mapped count of the memory object. The initial mapped count value of the memory object is zero.
 * Multiple calls to {@link #clEnqueueMapBuffer EnqueueMapBuffer}, or {@link #clEnqueueMapImage EnqueueMapImage} on the same memory object will increment this mapped count by appropriate number of calls.
 * {@code clEnqueueUnmapMemObject} decrements the mapped count of the memory object. {@link #clEnqueueMapBuffer EnqueueMapBuffer}, and {@link #clEnqueueMapImage EnqueueMapImage} act as synchronization points
 * for a region of the buffer object being mapped.</p>
 *
 * @param command_queue           a valid command-queue
 * @param memobj                  a valid memory object. The OpenCL context associated with {@code command_queue} and {@code memobj} must be the same.
 * @param mapped_ptr              the host address returned by a previous call to {@link #clEnqueueMapBuffer EnqueueMapBuffer}, or {@link #clEnqueueMapImage EnqueueMapImage} for {@code memobj}
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code memobj} is not a valid memory object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code mapped_ptr} is not a valid pointer returned by {@link #clEnqueueMapBuffer EnqueueMapBuffer}, or {@link #clEnqueueMapImage EnqueueMapImage} for {@code memobj}.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if context associated with {@code command_queue} and {@code memobj} are not the same or if the context associated with
 *         {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         </ul>
 */
	static public function clEnqueueUnmapMemObject(command_queue:haxe.Int64,memobj:haxe.Int64,mapped_ptr:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,memobj:haxe.Int64,mapped_ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** int4 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg4i(kernel:haxe.Int64,arg_index:Int,arg0:Int,arg1:Int,arg2:Int,arg3:Int):Int;
/** Alternative version of: {@link #clEnqueueCopyBuffer EnqueueCopyBuffer}  */
/**
 * Enqueues a command to copy a buffer object identified by {@code src_buffer} to another buffer object identified by {@code dst_buffer}.
 *
 * @param command_queue           the command-queue in which the copy command will be queued. The OpenCL context associated with {@code command_queue}, {@code src_buffer} and
 *                                {@code dst_buffer} must be the same.
 * @param src_buffer              the source buffer
 * @param dst_buffer              the destination buffer
 * @param src_offset              the offset where to begin copying data from {@code src_buffer}.
 * @param dst_offset              the offset where to begin copying data into {@code dst_buffer}
 * @param size                    the size in bytes to copy
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue}, {@code src_buffer} and {@code dst_buffer} are not the same or if
 *         the context associated with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code src_buffer} and {@code dst_buffer} are not valid buffer objects.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code src_offset}, {@code dst_offset}, {@code size}, {@code src_offset + size} or {@code dst_offset + size} require
 *         accessing elements outside the {@code src_buffer} and {@code dst_buffer} buffer objects respectively.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code size} is 0.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code src_buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code dst_buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_MEM_COPY_OVERLAP MEM_COPY_OVERLAP} if {@code src_buffer} and {@code dst_buffer} are the same buffer or sub-buffer object and the source and destination
 *         regions overlap or if {@code src_buffer} and {@code dst_buffer} are different sub-buffers of the same associated buffer object and they overlap. The
 *         regions overlap if <code style="font-family: monospace">src_offset &#x2264 dst_offset &#x2264 src_offset + size – 1</code> or if
 *         <code style="font-family: monospace">dst_offset &#x2264 src_offset &#x2264 dst_offset + size – 1</code>.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code src_buffer} or {@code dst_buffer}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueCopyBuffer(command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_offset:haxe.Int64,dst_offset:haxe.Int64,size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_offset:haxe.Int64,dst_offset:haxe.Int64,size:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** long4 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg4l(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64,arg1:haxe.Int64,arg2:haxe.Int64,arg3:haxe.Int64):Int;
/** Alternative version of: {@link #clCreateKernelsInProgram CreateKernelsInProgram}  */
/**
 * Creates kernel objects for all kernel functions in {@code program}. Kernel objects are not created for any {@code __kernel} functions in {@code program}
 * that do not have the same function definition across all devices for which a program executable has been successfully built.
 * 
 * <p>See {@link #clCreateKernel CreateKernel} for more details.</p>
 *
 * @param program         a program object with a successfully built executable
 * @param num_kernels     the size of memory pointed to by kernels specified as the number of cl_kernel entries
 * @param kernels         the buffer where the kernel objects for kernels in {@code program} will be returned. If {@code kernels} is {@code NULL}, it is ignored. If {@code kernels}
 *                        is not {@code NULL}, {@code num_kernels} must be greater than or equal to the number of kernels in {@code program}.
 * @param num_kernels_ret the number of kernels in {@code program}. If {@code num_kernels_ret} is {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the kernel objects were successfully allocated. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_PROGRAM INVALID_PROGRAM} if {@code program} is not a valid program object.</li>
 *         <li>{@link #CL_INVALID_PROGRAM_EXECUTABLE INVALID_PROGRAM_EXECUTABLE} if there is no successfully built executable for any device in {@code program}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code kernels} is not {@code NULL} and {@code num_kernels} is less than the number of kernels in {@code program}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateKernelsInProgram(program:haxe.Int64,num_kernels:Int,kernels:java.nio.ByteBuffer,num_kernels_ret:java.nio.ByteBuffer):Int;
	@:overload(function (program:haxe.Int64,kernels:org.lwjgl.PointerBuffer,num_kernels_ret:java.nio.IntBuffer):Int {})
/** pointer4 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg4p(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64,arg1:haxe.Int64,arg2:haxe.Int64,arg3:haxe.Int64):Int;
/** short4 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg4s(kernel:haxe.Int64,arg_index:Int,arg0:Int16,arg1:Int16,arg2:Int16,arg3:Int16):Int;
/** CharSequence version of: {@link #clGetExtensionFunctionAddress GetExtensionFunctionAddress}  */
/**
 * Returns the address of the extension function named by {@code funcname}. The pointer returned should be cast to a function pointer type matching the
 * extension function's definition defined in the appropriate extension specification and header file. A return value of {@code NULL} indicates that the specified
 * function does not exist for the implementation. A non-{@code NULL} return value for {@code clGetExtensionFunctionAddress} does not guarantee that an extension
 * function is actually supported. The application must also make a corresponding query using <code style="font-family: monospace">clGetPlatformInfo(platform, CL_PLATFORM_EXTENSIONS, &hellip; )</code>
 * or <code style="font-family: monospace">clGetDeviceInfo(device, CL_DEVICE_EXTENSIONS, &hellip; )</code> to determine if an extension is supported by the OpenCL implementation.
 * 
 * <p>{@code clGetExtensionFunctionAddress} may not be queried for core (non-extension) functions in OpenCL. For functions that are queryable with
 * {@code clGetExtensionFunctionAddress}, implementations may choose to also export those functions statically from the object libraries implementing those
 * functions. However, portable applications cannot rely on this behavior.</p>
 *
 * @param funcname the extension function name
 *
 * @return the extension function address
 */
	static public function clGetExtensionFunctionAddress(funcname:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (funcname:java.lang.CharSequence):haxe.Int64 {})
/** short3 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg3s(kernel:haxe.Int64,arg_index:Int,arg0:Int16,arg1:Int16,arg2:Int16):Int;
/** Alternative version of: {@link #clEnqueueNDRangeKernel EnqueueNDRangeKernel}  */
/**
 * Enqueues a command to execute a kernel on a device.
 *
 * @param command_queue           a valid command-queue. The kernel will be queued for execution on the device associated with {@code command_queue}.
 * @param kernel                  a valid kernel object. The OpenCL context associated with {@code kernel} and {@code command_queue} must be the same.
 * @param work_dim                the number of dimensions used to specify the global work-items and work-items in the work-group. {@code work_dim} must be greater than zero and less
 *                                than or equal to {@link #CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS DEVICE_MAX_WORK_ITEM_DIMENSIONS}.
 * @param global_work_offset      can be used to specify an array of {@code work_dim} unsigned values that describe the offset used to calculate the global ID of a work-item. If
 *                                {@code global_work_offset} is {@code NULL}, the global IDs start at offset <code style="font-family: monospace">(0, 0, &hellip; 0)</code>.
 * @param global_work_size        points to an array of {@code work_dim} unsigned values that describe the number of global work-items in {@code work_dim} dimensions that will
 *                                execute the kernel function. The total number of global work-items is computed as <code style="font-family: monospace">global_work_size[0] * &hellip; * global_work_size[work_dim – 1]</code>.
 * @param local_work_size         points to an array of {@code work_dim} unsigned values that describe the number of work-items that make up a work-group (also referred to as the
 *                                size of the work-group) that will execute the kernel specified by {@code kernel}. The total number of work-items in a work-group is computed as
 *                                <code style="font-family: monospace">local_work_size[0] * &hellip; * local_work_size[work_dim – 1]</code>. The total number of work-items in the work-group must be less than or equal to
 *                                the {@link #CL_DEVICE_MAX_WORK_GROUP_SIZE DEVICE_MAX_WORK_GROUP_SIZE} value and the number of work-items specified in <code style="font-family: monospace">local_work_size[0], &hellip; local_work_size[work_dim – 1]</code>
 *                                must be less than or equal to the corresponding values specified by {@link #CL_DEVICE_MAX_WORK_ITEM_SIZES DEVICE_MAX_WORK_ITEM_SIZES}<code style="font-family: monospace">[0]</code>, &hellip;
 *                                {@link #CL_DEVICE_MAX_WORK_ITEM_SIZES DEVICE_MAX_WORK_ITEM_SIZES}<code style="font-family: monospace">[work_dim – 1]</code>. The explicitly specified {@code local_work_size} will be used to determine how to
 *                                break the global work-items specified by {@code global_work_size} into appropriate work-group instances. If {@code local_work_size} is specified, the
 *                                values specified in <code style="font-family: monospace">global_work_size[0], &hellip; global_work_size[work_dim - 1]</code> must be evenly divisible by the corresponding values
 *                                specified in <code style="font-family: monospace">local_work_size[0], &hellip; local_work_size[work_dim – 1]</code>.
 *                                
 *                                <p>The work-group size to be used for kernel can also be specified in the program source using the
 *                                <code style="font-family: monospace">__attribute__((reqd_work_group_size(X, Y, Z)))</code> qualifier. In this case the size of work group specified by {@code local_work_size} must
 *                                match the value specified by the {@code reqd_work_group_size} attribute qualifier.</p>
 *                                
 *                                <p>{@code local_work_size} can also be a {@code NULL} value in which case the OpenCL implementation will determine how to be break the global work-items into
 *                                appropriate work-group instances.</p>
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the kernel execution was successfully queued. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_PROGRAM_EXECUTABLE INVALID_PROGRAM_EXECUTABLE} if there is no successfully built program executable available for device associated with {@code command_queue}.</li>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_KERNEL INVALID_KERNEL} if {@code kernel} is not a valid kernel object.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if context associated with {@code command_queue} and {@code kernel} are not the same or if the context associated with
 *         {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_KERNEL_ARGS INVALID_KERNEL_ARGS} if the kernel argument values have not been specified.</li>
 *         <li>{@link #CL_INVALID_WORK_DIMENSION INVALID_WORK_DIMENSION} if {@code work_dim} is not a valid value (i.e. a value between 1 and 3).</li>
 *         <li>{@link #CL_INVALID_GLOBAL_WORK_SIZE INVALID_GLOBAL_WORK_SIZE} if {@code global_work_size} is {@code NULL}, or if any of the values specified in
 *         <code style="font-family: monospace">global_work_size[0], &hellip; global_work_size[work_dim – 1]</code> are 0 or exceed the range given by the {@code sizeof(size_t)} for the device
 *         on which the kernel execution will be enqueued.</li>
 *         <li>{@link #CL_INVALID_GLOBAL_OFFSET INVALID_GLOBAL_OFFSET} if the value specified in {@code global_work_size} + the corresponding values in {@code global_work_offset} for
 *         any dimensions is greater than the {@code sizeof(size_t)} for the device on which the kernel execution will be enqueued.</li>
 *         <li>{@link #CL_INVALID_WORK_GROUP_SIZE INVALID_WORK_GROUP_SIZE} if {@code local_work_size} is specified and number of work-items specified by {@code global_work_size} is not
 *         evenly divisible by size of work-group given by {@code local_work_size} or does not match the work-group size specified for kernel using the
 *         <code style="font-family: monospace">__attribute__((reqd_work_group_size(X, Y, Z)))</code> qualifier in program source.</li>
 *         <li>{@link #CL_INVALID_WORK_GROUP_SIZE INVALID_WORK_GROUP_SIZE} if {@code local_work_size} is specified and the total number of work-items in the work-group computed as
 *         <code style="font-family: monospace">local_work_size[0] * &hellip; * local_work_size[work_dim – 1]</code> is greater than the value specified by {@link #CL_DEVICE_MAX_WORK_GROUP_SIZE DEVICE_MAX_WORK_GROUP_SIZE}</li>
 *         <li>{@link #CL_INVALID_WORK_GROUP_SIZE INVALID_WORK_GROUP_SIZE} if {@code local_work_size} is {@code NULL} and the <code style="font-family: monospace">__attribute__((reqd_work_group_size(X, Y, Z)))</code> qualifier
 *         is used to declare the work-group size for kernel in the program source.</li>
 *         <li>{@link #CL_INVALID_WORK_ITEM_SIZE INVALID_WORK_ITEM_SIZE} if the number of work-items specified in any of <code style="font-family: monospace">local_work_size[0], &hellip; local_work_size[work_dim – 1]</code>
 *         is greater than the corresponding values specified by {@link #CL_DEVICE_MAX_WORK_ITEM_SIZES DEVICE_MAX_WORK_ITEM_SIZES}{@code [0]}, &hellip; {@link #CL_DEVICE_MAX_WORK_ITEM_SIZES DEVICE_MAX_WORK_ITEM_SIZES}{@code [work_dim – 1]}.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if a sub-buffer object is specified as the value for an argument that is a buffer object and the offset
 *         specified when the sub-buffer object is created is not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if an image object is specified as an argument value and the image dimensions (image width, height, specified or
 *         compute row and/or slice pitch) are not supported by device associated with queue.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if an image object is specified as an argument value and the image format (image channel order and data type)
 *         is not supported by device associated with queue.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to queue the execution instance of kernel on the command-queue because of insufficient resources
 *         needed to execute the kernel. For example, the explicitly specified {@code local_work_size} causes a failure to execute the kernel because of
 *         insufficient resources such as registers or local memory. Another example would be the number of read-only image args used in kernel exceed the
 *         {@link #CL_DEVICE_MAX_READ_IMAGE_ARGS DEVICE_MAX_READ_IMAGE_ARGS} value for device or the number of write-only image args used in kernel exceed the
 *         {@link #CL_DEVICE_MAX_WRITE_IMAGE_ARGS DEVICE_MAX_WRITE_IMAGE_ARGS} value for device or the number of samplers used in kernel exceed {@link #CL_DEVICE_MAX_SAMPLERS DEVICE_MAX_SAMPLERS} for device.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with image or buffer objects specified
 *         as arguments to kernel.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueNDRangeKernel(command_queue:haxe.Int64,kernel:haxe.Int64,work_dim:Int,global_work_offset:java.nio.ByteBuffer,global_work_size:java.nio.ByteBuffer,local_work_size:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,kernel:haxe.Int64,work_dim:Int,global_work_offset:org.lwjgl.PointerBuffer,global_work_size:org.lwjgl.PointerBuffer,local_work_size:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** ByteBuffer version of: {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
/** DoubleBuffer version of: {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
/** FloatBuffer version of: {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
/** IntBuffer version of: {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
/** ShortBuffer version of: {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
/** Alternative version of: {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
/**
 * Enqueues a command to read from a buffer object to host memory.
 * 
 * <p>Calling {@code clEnqueueReadBuffer} to read a region of the buffer object with the {@code ptr} argument value set to {@code host_ptr + offset}, where
 * {@code host_ptr} is a pointer to the memory region specified when the buffer object being read is created with {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, must meet
 * the following requirements in order to avoid undefined behavior:
 * <ul>
 * <li>All commands that use this buffer object or a memory object (buffer or image) created from this buffer object have finished execution before the
 * read command begins execution.</li>
 * <li>The buffer object or memory objects created from this buffer object are not mapped.</li>
 * <li>The buffer object or memory objects created from this buffer object are not used by any command-queue until the read command has finished execution.</li>
 * </ul></p>
 *
 * @param command_queue           the command-queue in which the read command will be queued. {@code command_queue} and {@code buffer} must be created with the same OpenCL context.
 * @param buffer                  a valid buffer object
 * @param blocking_read           indicates if the read operation is <em>blocking</em> or <em>non-blocking</em>
 *                                
 *                                <p>If {@code blocking_read} is {@link #CL_TRUE TRUE} i.e. the read command is blocking, {@code clEnqueueReadBuffer} does not return until the buffer data has been
 *                                read and copied into memory pointed to by {@code ptr}.</p>
 *                                
 *                                <p>If {@code blocking_read} is {@link #CL_FALSE FALSE} i.e. the read command is non-blocking, {@code clEnqueueReadBuffer} queues a non-blocking read command and
 *                                returns. The contents of the buffer that {@code ptr} points to cannot be used until the read command has completed. The {@code event} argument
 *                                returns an event object which can be used to query the execution status of the read command. When the read command has completed, the contents of
 *                                the buffer that {@code ptr} points to can be used by the application.</p>
 * @param offset                  the offset in bytes in the buffer object to read from
 * @param size                    the size in bytes of data being read
 * @param ptr                     the pointer to buffer in host memory where data is to be read into
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue} and {@code buffer} are not the same or if the context associated
 *         with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code buffer} is not a valid buffer object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if the region being read specified by {@code (offset, size)} is out of bounds or if {@code ptr} is a {@code NULL} value or if
 *         {@code size} is 0.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link CL11#CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the read operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with buffer.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueReadBuffer} is called on buffer which has been created with {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueReadBuffer(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,size:haxe.Int64,ptr:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,ptr:java.nio.DoubleBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,ptr:java.nio.FloatBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,ptr:java.nio.IntBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,ptr:java.nio.ShortBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,size:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clGetEventProfilingInfo GetEventProfilingInfo}  */
/** JNI method for {@link #clGetEventProfilingInfo GetEventProfilingInfo}  */
	static public function nclGetEventProfilingInfo(event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Unsafe version of {@link #clWaitForEvents WaitForEvents}  */
/** JNI method for {@link #clWaitForEvents WaitForEvents}  */
	static public function nclWaitForEvents(num_events:Int,event_list:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (num_events:Int,event_list:haxe.Int64):Int {})
/**
 * Increments the sampler reference count. {@link #clCreateSampler CreateSampler} performs an implicit retain.
 *
 * @param sampler the sample object to retain
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_SAMPLER INVALID_SAMPLER} if sampler is not a valid sampler object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainSampler(sampler:haxe.Int64):Int;
/**
 * Issues all previously queued OpenCL commands in {@code command_queue} to the device associated with {@code command_queue}. {@code clFlush} only
 * guarantees that all queued commands to {@code command_queue} will eventually be submitted to the appropriate device. There is no guarantee that they
 * will be complete after {@code clFlush} returns.
 * 
 * <p>Any blocking commands queued in a command-queue and {@link #clReleaseCommandQueue ReleaseCommandQueue} perform an implicit flush of the command-queue. These blocking commands are
 * {@link #clEnqueueReadBuffer EnqueueReadBuffer}, {@link CL11#clEnqueueReadBufferRect EnqueueReadBufferRect}, {@link #clEnqueueReadImage EnqueueReadImage}, with {@code blocking_read} set to {@link #CL_TRUE TRUE}; {@link #clEnqueueWriteBuffer EnqueueWriteBuffer},
 * {@link CL11#clEnqueueWriteBufferRect EnqueueWriteBufferRect}, {@link #clEnqueueWriteImage EnqueueWriteImage} with {@code blocking_write} set to {@link #CL_TRUE TRUE}; {@link #clEnqueueMapBuffer EnqueueMapBuffer}, {@link #clEnqueueMapImage EnqueueMapImage} with
 * {@code blocking_map} set to {@link #CL_TRUE TRUE}; or {@link #clWaitForEvents WaitForEvents}.</p>
 * 
 * <p>To use event objects that refer to commands enqueued in a command-queue as event objects to wait on by commands enqueued in a different command-queue,
 * the application must call a {@code clFlush} or any blocking commands that perform an implicit flush of the command-queue where the commands that refer
 * to these event objects are enqueued.</p>
 *
 * @param command_queue the command-queue
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function call was executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clFlush(command_queue:haxe.Int64):Int;
/** Unsafe version of {@link #clGetProgramBuildInfo GetProgramBuildInfo}  */
/** JNI method for {@link #clGetProgramBuildInfo GetProgramBuildInfo}  */
	static public function nclGetProgramBuildInfo(program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Unsafe version of {@link #clCreateKernel CreateKernel}  */
/** JNI method for {@link #clCreateKernel CreateKernel}  */
	static public function nclCreateKernel(program:haxe.Int64,kernel_name:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (program:haxe.Int64,kernel_name:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** byte4 value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg4b(kernel:haxe.Int64,arg_index:Int,arg0:Int8,arg1:Int8,arg2:Int8,arg3:Int8):Int;
/** Unsafe version of {@link #clGetDeviceInfo GetDeviceInfo}  */
/** JNI method for {@link #clGetDeviceInfo GetDeviceInfo}  */
	static public function nclGetDeviceInfo(device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Unsafe version of {@link #clGetSupportedImageFormats GetSupportedImageFormats}  */
/** JNI method for {@link #clGetSupportedImageFormats GetSupportedImageFormats}  */
	static public function nclGetSupportedImageFormats(context:haxe.Int64,flags:haxe.Int64,image_type:Int,num_entries:Int,image_formats:haxe.Int64,num_image_formats:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_type:Int,num_entries:Int,image_formats:haxe.Int64,num_image_formats:haxe.Int64):Int {})
/** Single value version of: {@link #clCreateContext CreateContext}  */
/** Alternative version of: {@link #clCreateContext CreateContext}  */
/**
 * Creates an OpenCL context. An OpenCL context is created with one or more devices. Contexts are used by the OpenCL runtime for managing objects such as
 * command-queues, memory, program and kernel objects and for executing kernels on one or more devices specified in the context.
 *
 * @param properties  a list of context property names and their corresponding values. Each property name is immediately followed by the corresponding desired value. The
 *                    list is terminated with 0. One of:<br>{@link #CL_CONTEXT_PLATFORM CONTEXT_PLATFORM}, {@link CL12#CL_CONTEXT_INTEROP_USER_SYNC CONTEXT_INTEROP_USER_SYNC}, {@link KHRGLSharing#CL_GL_CONTEXT_KHR GL_CONTEXT_KHR}, {@link KHRGLSharing#CL_EGL_DISPLAY_KHR EGL_DISPLAY_KHR}, {@link KHRGLSharing#CL_GLX_DISPLAY_KHR GLX_DISPLAY_KHR}, {@link KHRGLSharing#CL_WGL_HDC_KHR WGL_HDC_KHR}, {@link KHRGLSharing#CL_CGL_SHAREGROUP_KHR CGL_SHAREGROUP_KHR}
 * @param num_devices the number of devices specified in the {@code devices} argument
 * @param devices     a list of unique devices returned by {@link #clGetDeviceIDs GetDeviceIDs} or sub-devices created by {@link CL12#clCreateSubDevices CreateSubDevices} for a platform
 * @param pfn_notify  a callback function that can be registered by the application. This callback function will be used by the OpenCL implementation to report
 *                    information on errors during context creation as well as errors that occur at runtime in this context. This callback function may be called
 *                    asynchronously by the OpenCL implementation. It is the application's responsibility to ensure that the callback function is thread-safe.
 *                    
 *                    <p>If {@code pfn_notify} is {@code NULL}, no callback function is registered.</p>
 * @param user_data   will be passed as the {@code user_data} argument when {@code pfn_notify} is called. {@code user_data} can be {@code NULL}.
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero context and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the context is created successfully. Otherwise, it returns a {@code NULL} value with the
 *         following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_PLATFORM INVALID_PLATFORM} if {@code properties} is {@code NULL} and no platform could be selected or if platform value specified in properties is not a
 *         valid platform.</li>
 *         <li>{@link CL11#CL_INVALID_PROPERTY INVALID_PROPERTY} if context property name in {@code properties} is not a supported property name, if the value specified for a
 *         supported property name is not valid, or if the same property name is specified more than once.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code devices} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code num_devices} is equal to zero.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code pfn_notify} is {@code NULL} but {@code user_data} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_DEVICE INVALID_DEVICE} if {@code devices} contains an invalid device.</li>
 *         <li>{@link #CL_DEVICE_NOT_AVAILABLE DEVICE_NOT_AVAILABLE} if a device in {@code devices} is currently not available even though the device was returned by {@link #clGetDeviceIDs GetDeviceIDs}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateContext(properties:java.nio.ByteBuffer,num_devices:Int,devices:java.nio.ByteBuffer,pfn_notify:org.lwjgl.opencl.CLCreateContextCallback,user_data:haxe.Int64,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (properties:org.lwjgl.PointerBuffer,device:haxe.Int64,pfn_notify:org.lwjgl.opencl.CLCreateContextCallback,user_data:haxe.Int64,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (properties:org.lwjgl.PointerBuffer,devices:org.lwjgl.PointerBuffer,pfn_notify:org.lwjgl.opencl.CLCreateContextCallback,user_data:haxe.Int64,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/** CharSequence version of: {@link #clCreateKernel CreateKernel}  */
/** Alternative version of: {@link #clCreateKernel CreateKernel}  */
/**
 * Creates a kernel object.
 * 
 * <p>A kernel is a function declared in a program. A kernel is identified by the {@code __kernel} qualifier applied to any function in a program. A kernel
 * object encapsulates the specific {@code __kernel} function declared in a program and the argument values to be used when executing this {@code __kernel}
 * function.</p>
 * 
 * <p>Kernel objects can only be created once you have a program object with a valid program source or binary loaded into the program object and the program
 * executable has been successfully built for one or more devices associated with program. No changes to the program executable are allowed while there are
 * kernel objects associated with a program object. This means that calls to {@link #clBuildProgram BuildProgram} and {@link CL12#clCompileProgram CompileProgram} return
 * {@link #CL_INVALID_OPERATION INVALID_OPERATION} if there are kernel objects attached to a program object. The OpenCL context associated with program will be the context
 * associated with kernel. The list of devices associated with program are the devices associated with kernel. Devices associated with a program object for
 * which a valid program executable has been built can be used to execute kernels declared in the program object.</p>
 *
 * @param program     a program object with a successfully built executable
 * @param kernel_name a function name in the program declared with the {@code __kernel} qualifier
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero kernel object and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the kernel object is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_PROGRAM INVALID_PROGRAM} if {@code program} is not a valid program object.</li>
 *         <li>{@link #CL_INVALID_PROGRAM_EXECUTABLE INVALID_PROGRAM_EXECUTABLE} if there is no successfully built executable for {@code program}.</li>
 *         <li>{@link #CL_INVALID_KERNEL_NAME INVALID_KERNEL_NAME} if {@code kernel_name} is not found in {@code program}.</li>
 *         <li>{@link #CL_INVALID_KERNEL_DEFINITION INVALID_KERNEL_DEFINITION} if the function definition for {@code __kernel} function given by {@code kernel_name} such as the number of
 *         arguments, the argument types are not the same for all devices for which the program executable has been built.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code kernel_name} is {@code NULL}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateKernel(program:haxe.Int64,kernel_name:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (program:haxe.Int64,kernel_name:java.lang.CharSequence,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (program:haxe.Int64,kernel_name:java.nio.ByteBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/**
 * Creates a {@link CLProgramCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link CLProgramCallback} instance
 */
	static public function CLProgramCallback(sam:org.lwjgl.opencl.CLProgramCallback_SAM):org.lwjgl.opencl.CLProgramCallback;
/** Single value version of: {@link #clEnqueueWaitForEvents EnqueueWaitForEvents}  */
/** Alternative version of: {@link #clEnqueueWaitForEvents EnqueueWaitForEvents}  */
/**
 * Enqueues a wait for a specific event or a list of events to complete before any future commands queued in the command-queue are executed.
 *
 * @param command_queue the command-queue
 * @param num_events    the number of events in {@code event_list}
 * @param event_list    the list of events
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function was successfully executed. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue} and events in {@code event_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code num_events} is zero or {@code event_list} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_EVENT INVALID_EVENT} if event objects specified in {@code event_list} are not valid events.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueWaitForEvents(command_queue:haxe.Int64,num_events:Int,event_list:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,event:haxe.Int64):Int {})
	@:overload(function (command_queue:haxe.Int64,event_list:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #clRetainContext RetainContext}  */
	static public function nclRetainContext(context:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Alternative version of: {@link #clGetPlatformInfo GetPlatformInfo}  */
/**
 * Returns information about the specified OpenCL platform.
 *
 * @param platform             the platform to query
 * @param param_name           the parameter to query. One of:<br>{@link #CL_PLATFORM_PROFILE PLATFORM_PROFILE}, {@link #CL_PLATFORM_VERSION PLATFORM_VERSION}, {@link #CL_PLATFORM_NAME PLATFORM_NAME}, {@link #CL_PLATFORM_VENDOR PLATFORM_VENDOR}, {@link #CL_PLATFORM_EXTENSIONS PLATFORM_EXTENSIONS}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          the memory location where appropriate values for a given {@code param_name} will be returned
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_PLATFORM INVALID_PLATFORM} if {@code platform} is not a valid platform.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not one of the supported values or if size in bytes specified by {@code param_value_size} is &lt;
 *         size of return type and {@code param_value} is not a {@code NULL} value.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetPlatformInfo(platform:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (platform:haxe.Int64,param_name:Int,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** FloatBuffer version of: {@link #clCreateImage2D CreateImage2D}  */
/** IntBuffer version of: {@link #clCreateImage2D CreateImage2D}  */
/** ShortBuffer version of: {@link #clCreateImage2D CreateImage2D}  */
/** Alternative version of: {@link #clCreateImage2D CreateImage2D}  */
/**
 * Creates a 2D image object.
 *
 * @param context         a valid OpenCL context on which the image object is to be created
 * @param flags           a bit-field that is used to specify allocation and usage information about the image memory object being created. One of:<br>{@link #CL_MEM_READ_WRITE MEM_READ_WRITE}, {@link #CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link #CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, {@link #CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR}, {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR}, {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY}, {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY}, {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}
 * @param image_format    a pointer to a {@link CLImageFormat} structure that describes format properties of the image to be allocated
 * @param image_width     the width of the image in pixels
 * @param image_height    the height of the image in pixels
 * @param image_row_pitch the scan-line pitch in bytes. This must be 0 if {@code host_ptr} is {@code NULL} and can be either 0 or &#x2265; {@code image_width * size} of element in
 *                        bytes if {@code host_ptr} is not {@code NULL}. If {@code host_ptr} is not {@code NULL} and {@code image_row_pitch} = 0, {@code image_row_pitch} is calculated as
 *                        {@code image_width * size of element} in bytes. If {@code image_row_pitch} is not 0, it must be a multiple of the image element size in bytes.
 * @param host_ptr        a pointer to the image data that may already be allocated by the application. The size of the buffer that {@code host_ptr} points to must be &#x2265;
 *                        {@code image_row_pitch * image_height}. The size of each element in bytes must be a power of 2. The image data specified by {@code host_ptr} is
 *                        stored as a linear sequence of adjacent scanlines. Each scanline is stored as a linear sequence of image elements.
 * @param errcode_ret     will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero image object and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the image object is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values specified in {@code flags} are not valid.</li>
 *         <li>{@link #CL_INVALID_IMAGE_FORMAT_DESCRIPTOR INVALID_IMAGE_FORMAT_DESCRIPTOR} if values specified in {@code image_format} are not valid or if {@code image_format} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if {@code image_width} or {@code image_height} are 0 or if they exceed values specified in
 *         {@link #CL_DEVICE_IMAGE2D_MAX_WIDTH DEVICE_IMAGE2D_MAX_WIDTH} or {@link #CL_DEVICE_IMAGE2D_MAX_HEIGHT DEVICE_IMAGE2D_MAX_HEIGHT} respectively for all devices in {@code context} or if values specified
 *         by {@code image_row_pitch} do not follow rules described in the argument description.</li>
 *         <li>{@link #CL_INVALID_HOST_PTR INVALID_HOST_PTR} if {@code host_ptr} is {@code NULL} and {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} or {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} are set in flags or if
 *         {@code host_ptr} is not {@code NULL} but {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} or {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} are not set in flags.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if the {@code image_format} is not supported.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for image object.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if there are no devices in {@code context} that support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateImage2D(context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_row_pitch:haxe.Int64,host_ptr:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_row_pitch:haxe.Int64,host_ptr:java.nio.FloatBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_row_pitch:haxe.Int64,host_ptr:java.nio.IntBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_row_pitch:haxe.Int64,host_ptr:java.nio.ShortBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:java.nio.ByteBuffer,image_width:haxe.Int64,image_height:haxe.Int64,image_row_pitch:haxe.Int64,host_ptr:java.nio.ByteBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/** Unsafe version of {@link #clCreateSampler CreateSampler}  */
/** JNI method for {@link #clCreateSampler CreateSampler}  */
	static public function nclCreateSampler(context:haxe.Int64,normalized_coords:Int,addressing_mode:Int,filter_mode:Int,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,normalized_coords:Int,addressing_mode:Int,filter_mode:Int,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #clEnqueueCopyBuffer EnqueueCopyBuffer}  */
/** JNI method for {@link #clEnqueueCopyBuffer EnqueueCopyBuffer}  */
	static public function nclEnqueueCopyBuffer(command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_offset:haxe.Int64,dst_offset:haxe.Int64,size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_offset:haxe.Int64,dst_offset:haxe.Int64,size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Alternative version of: {@link #clGetSupportedImageFormats GetSupportedImageFormats}  */
/**
 * Can be used to get the list of image formats supported by an OpenCL implementation when the following information about an image memory object is
 * specified:
 * <ul>
 * <li>Context</li>
 * <li>Image type – 1D, 2D, or 3D image, 1D image buffer, 1D or 2D image array</li>
 * <li>Image object allocation information</li>
 * </ul>
 * 
 * <p>{@code clGetSupportedImageFormats} returns a union of image formats supported by all devices in the context.</p>
 *
 * @param context           a valid OpenCL context on which the image object(s) will be created
 * @param flags             a bit-field that is used to specify allocation and usage information about the image memory object being created. One of:<br>{@link #CL_MEM_READ_WRITE MEM_READ_WRITE}, {@link #CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link #CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, {@link #CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR}, {@link #CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR}, {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY}, {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY}, {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}
 * @param image_type        the image type. One of:<br>{@link CL12#CL_MEM_OBJECT_IMAGE1D MEM_OBJECT_IMAGE1D}, {@link CL12#CL_MEM_OBJECT_IMAGE1D_BUFFER MEM_OBJECT_IMAGE1D_BUFFER}, {@link #CL_MEM_OBJECT_IMAGE2D MEM_OBJECT_IMAGE2D}, {@link #CL_MEM_OBJECT_IMAGE3D MEM_OBJECT_IMAGE3D}, {@link CL12#CL_MEM_OBJECT_IMAGE1D_ARRAY MEM_OBJECT_IMAGE1D_ARRAY}, {@link CL12#CL_MEM_OBJECT_IMAGE2D_ARRAY MEM_OBJECT_IMAGE2D_ARRAY}
 * @param num_entries       the number of entries that can be returned in the memory location given by {@code image_formats}
 * @param image_formats     a pointer to a memory location where the list of supported image formats are returned. Each entry describes a {@link CLImageFormat} structure
 *                          supported by the OpenCL implementation. If {@code image_formats} is {@code NULL}, it is ignored.
 * @param num_image_formats the actual number of supported image formats for a specific context and values specified by {@code flags}. If {@code num_image_formats} is {@code NULL}, it
 *                          is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code flags} or {@code image_type} are not valid, or if {@code num_entries} is 0 and {@code image_formats} is not {@code NULL}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetSupportedImageFormats(context:haxe.Int64,flags:haxe.Int64,image_type:Int,num_entries:Int,image_formats:java.nio.ByteBuffer,num_image_formats:java.nio.ByteBuffer):Int;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_type:Int,image_formats:java.nio.ByteBuffer,num_image_formats:java.nio.IntBuffer):Int {})
/**
 * Decrements the event reference count.
 * 
 * <p>The event object is deleted once the reference count becomes zero, the specific command identified by this event has completed (or terminated) and there
 * are no commands in the command-queues of a context that require a wait for this event to complete.</p>
 * 
 * <p><strong>NOTE</strong>: Developers should be careful when releasing their last reference count on events created by {@link CL11#clCreateUserEvent CreateUserEvent} that
 * have not yet been set to status of {@link #CL_COMPLETE COMPLETE} or an error. If the user event was used in the {@code event_wait_list} argument passed to a
 * clEnqueue*** API or another application host thread is waiting for it in {@link #clWaitForEvents WaitForEvents}, those commands and host threads will continue to wait for the
 * event status to reach {@link #CL_COMPLETE COMPLETE} or error, even after the user has released the object. Since in this scenario the developer has released his
 * last reference count to the user event, it would be in principle no longer valid for him to change the status of the event to unblock all the other
 * machinery. As a result the waiting tasks will wait forever, and associated events, cl_mem objects, command queues and contexts are likely to leak.
 * In-order command-queues caught up in this deadlock may cease to do any work.</p>
 *
 * @param event the event to release
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_EVENT INVALID_EVENT} if {@code event} is not a valid event object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseEvent(event:haxe.Int64):Int;
/** Unsafe version of {@link #clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
/** JNI method for {@link #clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
	static public function nclGetKernelWorkGroupInfo(kernel:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (kernel:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/**
 * Creates a sampler object.
 * 
 * <p>A sampler object describes how to sample an image when the image is read in the kernel. The built-in functions to read from an image in a kernel take a
 * sampler as an argument. The sampler arguments to the image read function can be sampler objects created using OpenCL functions and passed as argument
 * values to the kernel or can be samplers declared inside a kernel.</p>
 *
 * @param context           a valid OpenCL context
 * @param normalized_coords determines if the image coordinates specified are normalized or not
 * @param addressing_mode   specifies how out-of-range image coordinates are handled when reading from an image. One of:<br>{@link #CL_ADDRESS_NONE ADDRESS_NONE}, {@link #CL_ADDRESS_CLAMP_TO_EDGE ADDRESS_CLAMP_TO_EDGE}, {@link #CL_ADDRESS_CLAMP ADDRESS_CLAMP}, {@link #CL_ADDRESS_REPEAT ADDRESS_REPEAT}, {@link CL11#CL_ADDRESS_MIRRORED_REPEAT ADDRESS_MIRRORED_REPEAT}
 * @param filter_mode       the type of filter that must be applied when reading an image. One of:<br>{@link #CL_FILTER_NEAREST FILTER_NEAREST}, {@link #CL_FILTER_LINEAR FILTER_LINEAR}
 * @param errcode_ret       will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero sampler object and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the sampler object is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code addressing_mode}, {@code filter_mode} or {@code normalized_coords} or combination of these argument values are
 *         not valid.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if images are not supported by any device associated with {@code context} (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clCreateSampler CreateSampler}  */
	static public function clCreateSampler(context:haxe.Int64,normalized_coords:Int,addressing_mode:Int,filter_mode:Int,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,normalized_coords:Int,addressing_mode:Int,filter_mode:Int,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/** DoubleBuffer version of: {@link #clEnqueueWriteImage EnqueueWriteImage}  */
/** FloatBuffer version of: {@link #clEnqueueWriteImage EnqueueWriteImage}  */
/** IntBuffer version of: {@link #clEnqueueWriteImage EnqueueWriteImage}  */
/** ShortBuffer version of: {@link #clEnqueueWriteImage EnqueueWriteImage}  */
/** Alternative version of: {@link #clEnqueueWriteImage EnqueueWriteImage}  */
/**
 * Enqueues a command to write to an image or image array object from host memory.
 * 
 * <p>Calling {@code clEnqueueWriteImage} to update the latest bits in a region of the image with the {@code ptr} argument value set to
 * <code style="font-family: monospace">host_ptr + (origin[2] * image slice pitch + origin[1] * image row pitch + origin[0] * bytes per pixel)</code>, where {@code host_ptr} is a pointer
 * to the memory region specified when the image being written is created with {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, must meet the following requirements in order
 * to avoid undefined behavior:
 * <ul>
 * <li>The host memory region being written contains the latest bits when the enqueued write command begins execution.</li>
 * <li>The input_row_pitch and input_slice_pitch argument values in clEnqueueWriteImage must be set to the image row pitch and slice pitch.</li>
 * <li>The image object is not mapped.</li>
 * <li>The image object is not used by any command-queue until the write command has finished execution.</li>
 * </ul></p>
 *
 * @param command_queue           the command-queue in which the write command will be queued. {@code command_queue} and {@code image} must be created with the same OpenCL context.
 * @param image                   a valid image or image array object
 * @param blocking_write          indicates if the read operation is blocking or non-blocking.
 *                                
 *                                <p>If {@code blocking_write} is {@link #CL_TRUE TRUE}, the OpenCL implementation copies the data referred to by {@code ptr} and enqueues the write command in the
 *                                command-queue. The memory pointed to by {@code ptr} can be reused by the application after the {@code clEnqueueWriteImage} call returns.</p>
 *                                
 *                                <p>If {@code blocking_write} is {@link #CL_FALSE FALSE}, the OpenCL implementation will use {@code ptr} to perform a non-blocking write. As the write is non-blocking
 *                                the implementation can return immediately. The memory pointed to by {@code ptr} cannot be reused by the application after the call returns. The
 *                                {@code event} argument returns an event object which can be used to query the execution status of the write command. When the write command has
 *                                completed, the memory pointed to by {@code ptr} can then be reused by the application.</p>
 * @param origin                  defines the {@code (x, y, z)} offset in pixels in the 1D, 2D or 3D image, the {@code (x, y)} offset and the image index in the 2D image array or the
 *                                {@code (x)} offset and the image index in the 1D image array. If {@code image} is a 2D image object, {@code origin[2]} must be 0. If {@code image}
 *                                is a 1D image or 1D image buffer object, {@code origin[1]} and {@code origin[2]} must be 0. If {@code image} is a 1D image array object,
 *                                {@code origin[2]} must be 0. If {@code image} is a 1D image array object, {@code origin[1]} describes the image index in the 1D image array. If
 *                                {@code image} is a 2D image array object, {@code origin[2]} describes the image index in the 2D image array.
 * @param region                  defines the {@code (width, height, depth)} in pixels of the 1D, 2D or 3D rectangle, the {@code (width, height)} in pixels of the 2D rectangle and
 *                                the number of images of a 2D image array or the {@code (width)} in pixels of the 1D rectangle and the number of images of a 1D image array. If
 *                                {@code image} is a 2D image object, {@code region[2]} must be 1. If {@code image} is a 1D image or 1D image buffer object, {@code region[1]} and
 *                                {@code region[2]} must be 1. If {@code image} is a 1D image array object, {@code region[2]} must be 1. The values in {@code region} cannot be 0.
 * @param input_row_pitch         the length of each row in bytes. This value must be greater than or equal to the {@code element size in bytes * width}. If {@code input_row_pitch} is set
 *                                to 0, the appropriate row pitch is calculated based on the size of each element in bytes multiplied by {@code width}.
 * @param input_slice_pitch       the size in bytes of the 2D slice of the 3D region of a 3D image or each image of a 1D or 2D image array being written. This must be 0 if {@code image}
 *                                is a 1D or 2D image. This value must be greater than or equal to {@code input_row_pitch * height}. If {@code input_slice_pitch} is set to 0, the appropriate
 *                                slice pitch is calculated based on the {@code input_row_pitch * height}.
 * @param ptr                     the pointer to a buffer in host memory where image data is to be written to
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue} and {@code image} are not the same or if the context associated
 *         with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code image} is not a valid image object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if the region being written specified by {@code origin} and {@code region} is out of bounds or if {@code ptr} is a
 *         {@code NULL} value.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values in {@code origin} and {@code region} do not follow rules described in the argument description for
 *         {@code origin} and {@code region}.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if image dimensions (image width, height, specified or compute row and/or slice pitch) for {@code image} are not
 *         supported by device associated with queue.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if image format (image channel order and data type) for {@code image} are not supported by device associated
 *         with queue.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code image}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the device associated with {@code command_queue} does not support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueReadImage} is called on image which has been created with {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueWriteImage} is called on image which has been created with {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link CL11#CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the write operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueWriteImage(command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:java.nio.ByteBuffer,region:java.nio.ByteBuffer,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:java.nio.DoubleBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:java.nio.FloatBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:java.nio.IntBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:java.nio.ShortBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_write:Int,origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,input_row_pitch:haxe.Int64,input_slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clEnqueueCopyBufferToImage EnqueueCopyBufferToImage}  */
/** JNI method for {@link #clEnqueueCopyBufferToImage EnqueueCopyBufferToImage}  */
	static public function nclEnqueueCopyBufferToImage(command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_image:haxe.Int64,src_offset:haxe.Int64,dst_origin:haxe.Int64,region:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_image:haxe.Int64,src_offset:haxe.Int64,dst_origin:haxe.Int64,region:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Alternative version of: {@link #clEnqueueCopyBufferToImage EnqueueCopyBufferToImage}  */
/**
 * Enqueues a command to copy a buffer object to an image object.
 *
 * @param command_queue           a valid command-queue. The OpenCL context associated with {@code command_queue}, {@code src_buffer} and {@code dst_image} must be the same.
 * @param src_buffer              a valid buffer object
 * @param dst_image               a valid image object
 * @param src_offset              the offset where to begin copying data from {@code src_buffer}
 * @param dst_origin              the {@code (x, y, z)} offset in pixels in the 1D, 2D or 3D image, the {@code (x, y)} offset and the image index in the 2D image array or the
 *                                {@code (x)} offset and the image index in the 1D image array. If {@code dst_image} is a 2D image object, {@code dst_origin[2]} must be 0. If
 *                                {@code dst_image} is a 1D image or 1D image buffer object, {@code dst_origin[1]} and {@code dst_origin[2]} must be 0. If {@code dst_image} is a 1D
 *                                image array object, {@code dst_origin[2]} must be 0. If {@code dst_image} is a 1D image array object, {@code dst_origin[1]} describes the image
 *                                index in the 1D image array. If {@code dst_image} is a 2D image array object, {@code dst_origin[2]} describes the image index in the 2D image array.
 * @param region                  the {@code (width, height, depth)} in pixels of the 1D, 2D or 3D rectangle, the {@code (width, height)} in pixels of the 2D rectangle and the number
 *                                of images of a 2D image array or the {@code (width)} in pixels of the 1D rectangle and the number of images of a 1D image array. If
 *                                {@code dst_image} is a 2D image object, {@code region[2]} must be 1. If {@code dst_image} is a 1D image or
 *                                1D image buffer object, {@code region[1]} and {@code region[2]} must be 1. If {@code dst_image} is a 1D image array object,
 *                                {@code region[2]} must be 1. The values in {@code region} cannot be 0.
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue}, {@code src_buffer} and {@code dst_image} are not the same or if
 *         the context associated with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code src_buffer} is not a valid buffer object or {@code dst_image} is not a valid image object or if
 *         {@code dst_image} is a 1D image buffer object created from {@code src_buffer}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if the 1D, 2D or 3D rectangular region specified by {@code dst_origin} and {@code dst_origin + region} refer to a region
 *         outside {@code dst_image}, or if the region specified by {@code src_offset} and {@code src_offset + src_cb refer} to a region outside
 *         {@code src_buffer}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if values in {@code dst_origin} and {@code region} do not follow rules described in the argument description for
 *         {@code dst_origin} and {@code region}.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code src_buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_INVALID_IMAGE_SIZE INVALID_IMAGE_SIZE} if image dimensions (image width, height, specified or compute row and/or slice pitch) for {@code dst_image} are not
 *         supported by device associated with queue.</li>
 *         <li>{@link #CL_IMAGE_FORMAT_NOT_SUPPORTED IMAGE_FORMAT_NOT_SUPPORTED} if image format (image channel order and data type) for {@code dst_image} are not supported by device
 *         associated with queue.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code src_buffer} or {@code dst_image}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the device associated with {@code command_queue} does not support images (i.e. {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT} is
 *         {@link #CL_FALSE FALSE}).</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueCopyBufferToImage(command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_image:haxe.Int64,src_offset:haxe.Int64,dst_origin:java.nio.ByteBuffer,region:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_image:haxe.Int64,src_offset:haxe.Int64,dst_origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clCreateProgramWithSource CreateProgramWithSource}  */
/** JNI method for {@link #clCreateProgramWithSource CreateProgramWithSource}  */
	static public function nclCreateProgramWithSource(context:haxe.Int64,count:Int,strings:haxe.Int64,lengths:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,count:Int,strings:haxe.Int64,lengths:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #clRetainProgram RetainProgram}  */
	static public function nclRetainProgram(program:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #clReleaseSampler ReleaseSampler}  */
	static public function nclReleaseSampler(sampler:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Increments the {@code memobj} reference count.
 * 
 * <p>{@link #clCreateBuffer CreateBuffer}, {@link CL11#clCreateSubBuffer CreateSubBuffer} and {@link CL12#clCreateImage CreateImage} perform an implicit retain.</p>
 *
 * @param memobj the memory object to retain
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code memobj} is not a valid memory object (buffer or image object).</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainMemObject(memobj:haxe.Int64):Int;
/**
 * Decrements the {@code kernel} reference count.
 * 
 * <p>The kernel object is deleted once the number of instances that are retained to {@code kernel} become zero and the kernel object is no longer needed by
 * any enqueued commands that use {@code kernel}.</p>
 *
 * @param kernel the kernel to release
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_KERNEL INVALID_KERNEL} if kernel is not a valid kernel object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseKernel(kernel:haxe.Int64):Int;
/** Alternative version of: {@link #clEnqueueTask EnqueueTask}  */
/**
 * Enqueues a command to execute a kernel on a device. The kernel is executed using a single work-item.
 * 
 * <p>{@code clEnqueueTask} is equivalent to calling {@link #clEnqueueNDRangeKernel EnqueueNDRangeKernel} with {@code work_dim = 1}, {@code global_work_offset = NULL},
 * {@code global_work_size[0]} set to 1 and {@code local_work_size[0]} set to 1.</p>
 *
 * @param command_queue           a valid command-queue. The kernel will be queued for execution on the device associated with {@code command_queue}.
 * @param kernel                  a valid kernel object. The OpenCL context associated with {@code kernel} and {@code command_queue} must be the same.
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the kernel execution was successfully queued. Otherwise, see {@link #clEnqueueNDRangeKernel EnqueueNDRangeKernel}.
 */
	static public function clEnqueueTask(command_queue:haxe.Int64,kernel:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,kernel:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** IntBuffer version of: {@link #clGetEventInfo GetEventInfo}  */
/** PointerBuffer version of: {@link #clGetEventInfo GetEventInfo}  */
/** Alternative version of: {@link #clGetEventInfo GetEventInfo}  */
/**
 * Returns information about an event object.
 * 
 * <p>Using {@code clGetEventInfo} to determine if a command identified by event has finished execution (i.e. {@link #CL_EVENT_COMMAND_EXECUTION_STATUS EVENT_COMMAND_EXECUTION_STATUS}
 * returns {@link #CL_COMPLETE COMPLETE}) is not a synchronization point. There are no guarantees that the memory objects being modified by command associated with
 * event will be visible to other enqueued commands.</p>
 *
 * @param event                the event object being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_EVENT_COMMAND_QUEUE EVENT_COMMAND_QUEUE}, {@link #CL_EVENT_COMMAND_TYPE EVENT_COMMAND_TYPE}, {@link #CL_EVENT_REFERENCE_COUNT EVENT_REFERENCE_COUNT}, {@link #CL_EVENT_COMMAND_EXECUTION_STATUS EVENT_COMMAND_EXECUTION_STATUS}, {@link CL11#CL_EVENT_CONTEXT EVENT_CONTEXT}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if information to query given in {@code param_name} cannot be queried for event.</li>
 *         <li>{@link #CL_INVALID_EVENT INVALID_EVENT} if {@code event} is a not a valid event object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetEventInfo(event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (event:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (event:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** ByteBuffer version of: {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
/** DoubleBuffer version of: {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
/** FloatBuffer version of: {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
/** IntBuffer version of: {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
/** ShortBuffer version of: {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
/** Alternative version of: {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
/**
 * Enqueues a command to write to a buffer object from host memory.
 * 
 * <p>Calling {@code clEnqueueWriteBuffer} to update the latest bits in a region of the buffer object with the {@code ptr} argument value set to
 * {@code host_ptr + offset}, where {@code host_ptr} is a pointer to the memory region specified when the buffer object being written is created with
 * {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, must meet the following requirements in order to avoid undefined behavior:
 * <ul>
 * <li>The host memory region given by {@code (host_ptr + offset, cb)} contains the latest bits when the enqueued write command begins execution.</li>
 * <li>The buffer object or memory objects created from this buffer object are not mapped.</li>
 * <li>The buffer object or memory objects created from this buffer object are not used by any command-queue until the write command has finished execution.</li>
 * </ul></p>
 *
 * @param command_queue           the command-queue in which the write command will be queued. {@code command_queue} and {@code buffer} must be created with the same OpenCL context.
 * @param buffer                  a valid buffer object
 * @param blocking_write          indicates if the write operation is <em>blocking</em> or <em>non-blocking</em>
 *                                
 *                                <p>If {@code blocking_write} is {@link #CL_TRUE TRUE}, the OpenCL implementation copies the data referred to by {@code ptr} and enqueues the write operation in the
 *                                command-queue. The memory pointed to by {@code ptr} can be reused by the application after the {@code clEnqueueWriteBuffer} call returns.</p>
 *                                
 *                                <p>If {@code blocking_write} is {@link #CL_FALSE FALSE}, the OpenCL implementation will use {@code ptr} to perform a nonblocking write. As the write is non-blocking
 *                                the implementation can return immediately. The memory pointed to by {@code ptr} cannot be reused by the application after the call returns. The
 *                                {@code event} argument returns an event object which can be used to query the execution status of the write command. When the write command has
 *                                completed, the memory pointed to by {@code ptr} can then be reused by the application.</p>
 * @param offset                  the offset in bytes in the buffer object to write to
 * @param size                    the size in bytes of data being written
 * @param ptr                     the pointer to buffer in host memory where data is to be written from
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue} and {@code buffer} are not the same or if the context associated
 *         with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code buffer} is not a valid buffer object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if the region being written specified by {@code (offset, size)} is out of bounds or if {@code ptr} is a {@code NULL} value or if
 *         {@code size} is 0.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link CL11#CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the write operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with buffer.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueWriteBuffer} is called on buffer which has been created with {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueWriteBuffer(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,size:haxe.Int64,ptr:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,ptr:java.nio.DoubleBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,ptr:java.nio.FloatBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,ptr:java.nio.IntBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,ptr:java.nio.ShortBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,size:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Alternative version of: {@link #clSetKernelArg SetKernelArg}  */
/** ByteBuffer version of: {@link #clSetKernelArg SetKernelArg}  */
/** DoubleBuffer version of: {@link #clSetKernelArg SetKernelArg}  */
/** FloatBuffer version of: {@link #clSetKernelArg SetKernelArg}  */
/** IntBuffer version of: {@link #clSetKernelArg SetKernelArg}  */
/** LongBuffer version of: {@link #clSetKernelArg SetKernelArg}  */
/** ShortBuffer version of: {@link #clSetKernelArg SetKernelArg}  */
/** PointerBuffer version of: {@link #clSetKernelArg SetKernelArg}  */
/**
 * Set the argument value for a specific argument of a kernel.
 *
 * @param kernel    a valid kernel object
 * @param arg_index the argument index. Arguments to the kernel are referred by indices that go from 0 for the leftmost argument to {@code n - 1}, where {@code n} is
 *                  the total number of arguments declared by a kernel.
 *                  
 *                  <p>For example, consider the following kernel:
 *                  <pre><code style="font-family: monospace">
 *                  kernel void image_filter (
 *                  	int n, int m,
 *                  	__constant float *filter_weights,
 *                  	__read_only image2d_t src_image,
 *                  	__write_only image2d_t dst_image
 *                  ) {
 *                  	&hellip;
 *                  }</code></pre>
 *                  Argument index values for image_filter will be 0 for {@code n}, 1 for {@code m}, 2 for {@code filter_weights}, 3 for {@code src_image} and 4 for
 *                  {@code dst_image}.</p>
 *                  
 *                  <p><strong>NOTE</strong>: A kernel object does not update the reference count for objects such as memory, sampler objects specified as argument values
 *                  by {@code clSetKernelArg}, Users may not rely on a kernel object to retain objects specified as argument values to the kernel.</p>
 * @param arg_size  the size of the argument value. If the argument is a memory object, the size is the size of the buffer or image object type. For arguments declared
 *                  with the {@code __local} qualifier, the size specified will be the size in bytes of the buffer that must be allocated for the {@code __local}
 *                  argument. If the argument is of type {@code sampler_t}, the {@code arg_size} value must be equal to {@code sizeof(cl_sampler)}. For all other
 *                  arguments, the size will be the size of argument type.
 * @param arg_value a pointer to data that should be used as the argument value for argument specified by {@code arg_index}. The argument data pointed to by
 *                  {@code arg_value} is copied and the {@code arg_value} pointer can therefore be reused by the application after {@code clSetKernelArg} returns. The
 *                  argument value specified is the value used by all API calls that enqueue kernel ({@link #clEnqueueNDRangeKernel EnqueueNDRangeKernel} and {@link #clEnqueueTask EnqueueTask}) until
 *                  the argument value is changed by a call to {@code clSetKernelArg} for {@code kernel}.
 *                  
 *                  <p>If the argument is a memory object (buffer, image or image array), the {@code arg_value} entry will be a pointer to the appropriate buffer, image or
 *                  image array object. The memory object must be created with the context associated with the kernel object. If the argument is a buffer object, the
 *                  {@code arg_value} pointer can be {@code NULL} or point to a {@code NULL} value in which case a {@code NULL} value will be used as the value for the argument declared as
 *                  a pointer to {@code __global} or {@code __constant} memory in the kernel. If the argument is declared with the {@code __local} qualifier, the
 *                  {@code arg_value} entry must be {@code NULL}. If the argument is of type {@code sampler_t}, the {@code arg_value} entry must be a pointer to the sampler
 *                  object.</p>
 *                  
 *                  <p>If the argument is declared to be a pointer of a built-in scalar or vector type, or a user defined structure type in the global or constant address
 *                  space, the memory object specified as argument value must be a buffer object (or {@code NULL}). If the argument is declared with the {@code __constant}
 *                  qualifier, the size in bytes of the memory object cannot exceed {@link #CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE DEVICE_MAX_CONSTANT_BUFFER_SIZE} and the number of arguments declared as
 *                  pointers to {@code __constant} memory cannot exceed {@link #CL_DEVICE_MAX_CONSTANT_ARGS DEVICE_MAX_CONSTANT_ARGS}.</p>
 *                  
 *                  <p>The memory object specified as argument value must be a 2D image object if the argument is declared to be of type {@code image2d_t}. The memory
 *                  object specified as argument value must be a 3D image object if argument is declared to be of type {@code image3d_t}. The memory object specified as
 *                  argument value must be a 1D image object if the argument is declared to be of type {@code image1d_t}. The memory object specified as argument value
 *                  must be a 1D image buffer object if the argument is declared to be of type {@code image1d_buffer_t}. The memory object specified as argument value
 *                  must be a 1D image array object if argument is declared to be of type {@code image1d_array_t}. The memory object specified as argument value must be
 *                  a 2D image array object if argument is declared to be of type {@code image2d_array_t}.</p>
 *                  
 *                  <p>For all other kernel arguments, the {@code arg_value} entry must be a pointer to the actual data to be used as argument value.</p>
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function was executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_KERNEL INVALID_KERNEL} if {@code kernel} is not a valid kernel object.</li>
 *         <li>{@link #CL_INVALID_ARG_INDEX INVALID_ARG_INDEX} if {@code arg_index} is not a valid argument index.</li>
 *         <li>{@link #CL_INVALID_ARG_VALUE INVALID_ARG_VALUE} if {@code arg_value} specified is not a valid value.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} for an argument declared to be a memory object when the specified {@code arg_value} is not a valid memory object.</li>
 *         <li>{@link #CL_INVALID_SAMPLER INVALID_SAMPLER} for an argument declared to be of type {@code sampler_t} when the specified {@code arg_value} is not a valid sampler object.</li>
 *         <li>{@link #CL_INVALID_ARG_SIZE INVALID_ARG_SIZE} if {@code arg_size} does not match the size of the data type for an argument that is not a memory object or if the
 *         argument is a memory object and {@code arg_size != sizeof(cl_mem)} or if {@code arg_size} is zero and the argument is declared with the
 *         {@code __local} qualifier or if the argument is a sampler and {@code arg_size != sizeof(cl_sampler)}.</li>
 *         <li>{@link #CL_INVALID_ARG_VALUE INVALID_ARG_VALUE} if the argument is an image declared with the {@code read_only} qualifier and {@code arg_value} refers to an image
 *         object created with {@code cl_mem_flags} of {@link #CL_MEM_WRITE_ONLY MEM_WRITE_ONLY} or if the image argument is declared with the {@code write_only} qualifier
 *         and {@code arg_value} refers to an image object created with {@code cl_mem_flags} of {@link #CL_MEM_READ_ONLY MEM_READ_ONLY}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clSetKernelArg(kernel:haxe.Int64,arg_index:Int,arg_size:haxe.Int64,arg_value:java.nio.ByteBuffer):Int;
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_size:haxe.Int64):Int {})
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_value:java.nio.ByteBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_value:java.nio.DoubleBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_value:java.nio.FloatBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_value:java.nio.IntBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_value:java.nio.LongBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_value:java.nio.ShortBuffer):Int {})
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_value:org.lwjgl.PointerBuffer):Int {})
/** IntBuffer version of: {@link #clGetProgramInfo GetProgramInfo}  */
/** PointerBuffer version of: {@link #clGetProgramInfo GetProgramInfo}  */
/** Alternative version of: {@link #clGetProgramInfo GetProgramInfo}  */
/**
 * Returns information about a program object.
 *
 * @param program              the program object being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_PROGRAM_REFERENCE_COUNT PROGRAM_REFERENCE_COUNT}, {@link #CL_PROGRAM_CONTEXT PROGRAM_CONTEXT}, {@link #CL_PROGRAM_NUM_DEVICES PROGRAM_NUM_DEVICES}, {@link #CL_PROGRAM_DEVICES PROGRAM_DEVICES}, {@link #CL_PROGRAM_SOURCE PROGRAM_SOURCE}, {@link #CL_PROGRAM_BINARY_SIZES PROGRAM_BINARY_SIZES}, {@link #CL_PROGRAM_BINARIES PROGRAM_BINARIES}, {@link CL12#CL_PROGRAM_NUM_KERNELS PROGRAM_NUM_KERNELS}, {@link CL12#CL_PROGRAM_KERNEL_NAMES PROGRAM_KERNEL_NAMES}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_PROGRAM INVALID_PROGRAM} if {@code program} is a not a valid program object.</li>
 *         <li>{@link #CL_INVALID_PROGRAM_EXECUTABLE INVALID_PROGRAM_EXECUTABLE} if {@code param_name} is {@link CL12#CL_PROGRAM_NUM_KERNELS PROGRAM_NUM_KERNELS} or {@link CL12#CL_PROGRAM_KERNEL_NAMES PROGRAM_KERNEL_NAMES} and a
 *         successful program executable has not been built for at least one device in the list of devices associated with {@code program}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetProgramInfo(program:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (program:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (program:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (program:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #clEnqueueBarrier EnqueueBarrier}  */
	static public function nclEnqueueBarrier(command_queue:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clCreateContext CreateContext}  */
/** JNI method for {@link #clCreateContext CreateContext}  */
	static public function nclCreateContext(properties:haxe.Int64,num_devices:Int,devices:haxe.Int64,pfn_notify:haxe.Int64,user_data:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (properties:haxe.Int64,num_devices:Int,devices:haxe.Int64,pfn_notify:haxe.Int64,user_data:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Single string version of: {@link #clCreateProgramWithSource CreateProgramWithSource}  */
/** Array version of: {@link #clCreateProgramWithSource CreateProgramWithSource}  */
/** Alternative version of: {@link #clCreateProgramWithSource CreateProgramWithSource}  */
/**
 * Creates a program object for a context, and loads the source code specified by the text strings in the strings array into the program object. The
 * devices associated with the program object are the devices associated with {@code context}. The source code specified by strings is either an OpenCL C
 * program source, header or implementation-defined source for custom devices that support an online compiler.
 *
 * @param context     a valid OpenCL context
 * @param count       the number of elements in the {@code strings} and {@code lengths} arrays
 * @param strings     an array of {@code count} pointers to optionally null-terminated character strings that make up the source code
 * @param lengths     an array with the number of chars in each string (the string length). If an element in {@code lengths} is zero, its accompanying string is
 *                    null-terminated. If {@code lengths} is {@code NULL}, all strings in the {@code strings} argument are considered null-terminated. Any length value passed in
 *                    that is greater than zero excludes the null terminator in its count.
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero program object and {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS} if the program object is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code count} is zero or if {@code strings} or any entry in {@code strings} is {@code NULL}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateProgramWithSource(context:haxe.Int64,count:Int,strings:java.nio.ByteBuffer,lengths:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,string:java.lang.CharSequence,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,strings:java.NativeArray<java.lang.CharSequence>,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (context:haxe.Int64,strings:org.lwjgl.PointerBuffer,lengths:org.lwjgl.PointerBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/** Unsafe version of {@link #clCreateImage2D CreateImage2D}  */
/** JNI method for {@link #clCreateImage2D CreateImage2D}  */
	static public function nclCreateImage2D(context:haxe.Int64,flags:haxe.Int64,image_format:haxe.Int64,image_width:haxe.Int64,image_height:haxe.Int64,image_row_pitch:haxe.Int64,host_ptr:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:haxe.Int64,image_width:haxe.Int64,image_height:haxe.Int64,image_row_pitch:haxe.Int64,host_ptr:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #clEnqueueReadImage EnqueueReadImage}  */
/** JNI method for {@link #clEnqueueReadImage EnqueueReadImage}  */
	static public function nclEnqueueReadImage(command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:haxe.Int64,region:haxe.Int64,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,image:haxe.Int64,blocking_read:Int,origin:haxe.Int64,region:haxe.Int64,row_pitch:haxe.Int64,slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/**
 * Increments the context reference count.
 * 
 * <p>{@link #clCreateContext CreateContext} and {@link #clCreateContextFromType CreateContextFromType} perform an implicit retain. This is very helpful for 3rd party libraries, which typically get a context passed
 * to them by the application. However, it is possible that the application may delete the context without informing the library. Allowing functions to
 * attach to (i.e. retain) and release a context solves the problem of a context being used by a library no longer being valid.</p>
 *
 * @param context the context to retain
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainContext(context:haxe.Int64):Int;
/** Unsafe version of {@link #clEnqueueNDRangeKernel EnqueueNDRangeKernel}  */
/** JNI method for {@link #clEnqueueNDRangeKernel EnqueueNDRangeKernel}  */
	static public function nclEnqueueNDRangeKernel(command_queue:haxe.Int64,kernel:haxe.Int64,work_dim:Int,global_work_offset:haxe.Int64,global_work_size:haxe.Int64,local_work_size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,kernel:haxe.Int64,work_dim:Int,global_work_offset:haxe.Int64,global_work_size:haxe.Int64,local_work_size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Unsafe version of {@link #clEnqueueTask EnqueueTask}  */
/** JNI method for {@link #clEnqueueTask EnqueueTask}  */
	static public function nclEnqueueTask(command_queue:haxe.Int64,kernel:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,kernel:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Unsafe version of {@link #clEnqueueMarker EnqueueMarker}  */
/** JNI method for {@link #clEnqueueMarker EnqueueMarker}  */
	static public function nclEnqueueMarker(command_queue:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,event:haxe.Int64):Int {})
/** JNI method for {@link #clReleaseProgram ReleaseProgram}  */
	static public function nclReleaseProgram(program:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Increments the {@code kernel} reference count. {@link #clCreateKernel CreateKernel} or {@link #clCreateKernelsInProgram CreateKernelsInProgram} do an implicit retain.
 *
 * @param kernel the kernel to retain
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_KERNEL INVALID_KERNEL} if kernel is not a valid kernel object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clRetainKernel(kernel:haxe.Int64):Int;
/** Single byte value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg1b(kernel:haxe.Int64,arg_index:Int,arg0:Int8):Int;
/** Unsafe version of {@link #clEnqueueNativeKernel EnqueueNativeKernel}  */
/** JNI method for {@link #clEnqueueNativeKernel EnqueueNativeKernel}  */
	static public function nclEnqueueNativeKernel(command_queue:haxe.Int64,user_func:haxe.Int64,args:haxe.Int64,cb_args:haxe.Int64,num_mem_objects:Int,mem_list:haxe.Int64,args_mem_loc:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,user_func:haxe.Int64,args:haxe.Int64,cb_args:haxe.Int64,num_mem_objects:Int,mem_list:haxe.Int64,args_mem_loc:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** JNI method for {@link #clFinish Finish}  */
	static public function nclFinish(command_queue:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clEnqueueUnmapMemObject EnqueueUnmapMemObject}  */
/** JNI method for {@link #clEnqueueUnmapMemObject EnqueueUnmapMemObject}  */
	static public function nclEnqueueUnmapMemObject(command_queue:haxe.Int64,memobj:haxe.Int64,mapped_ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,memobj:haxe.Int64,mapped_ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Single double value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg1d(kernel:haxe.Int64,arg_index:Int,arg0:Float):Int;
/** Unsafe version of {@link #clSetKernelArg SetKernelArg}  */
/** JNI method for {@link #clSetKernelArg SetKernelArg}  */
	static public function nclSetKernelArg(kernel:haxe.Int64,arg_index:Int,arg_size:haxe.Int64,arg_value:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (kernel:haxe.Int64,arg_index:Int,arg_size:haxe.Int64,arg_value:haxe.Int64):Int {})
/** Single float value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg1f(kernel:haxe.Int64,arg_index:Int,arg0:Float):Int;
/** Unsafe version of {@link #clGetImageInfo GetImageInfo}  */
/** JNI method for {@link #clGetImageInfo GetImageInfo}  */
	static public function nclGetImageInfo(image:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (image:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Single value version of: {@link #clWaitForEvents WaitForEvents}  */
/** Alternative version of: {@link #clWaitForEvents WaitForEvents}  */
/**
 * Waits on the host thread for commands identified by event objects in {@code event_list} to complete. A command is considered complete if its execution
 * status is {@link #CL_COMPLETE COMPLETE} or a negative value. The events specified in {@code event_list} act as synchronization points.
 *
 * @param num_events the number of events in {@code event_list}
 * @param event_list the list of events
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the execution status of all events in event_list is {@link #CL_COMPLETE COMPLETE}. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code num_events} is zero or {@code event_list} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if events specified in {@code event_list} do not belong to the same context.</li>
 *         <li>{@link #CL_INVALID_EVENT INVALID_EVENT} if event objects specified in {@code event_list} are not valid event objects.</li>
 *         <li>{@link CL11#CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the execution status of any of the events in {@code event_list} is a negative integer value.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clWaitForEvents(num_events:Int,event_list:java.nio.ByteBuffer):Int;
	@:overload(function (event:haxe.Int64):Int {})
	@:overload(function (event_list:org.lwjgl.PointerBuffer):Int {})
/**
 * Decrements the {@code memobj} reference count.
 * 
 * <p>After the {@code memobj} reference count becomes zero and commands queued for execution on a command-queue(s) that use {@code memobj} have finished, the
 * memory object is deleted. If {@code memobj} is a buffer object, {@code memobj} cannot be deleted until all sub-buffer objects associated with
 * {@code memobj} are deleted.</p>
 *
 * @param memobj the memory object to release
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code memobj} is not a valid memory object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseMemObject(memobj:haxe.Int64):Int;
/** Single int value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg1i(kernel:haxe.Int64,arg_index:Int,arg0:Int):Int;
/** Single long value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg1l(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64):Int;
/** Unsafe version of {@link #clGetCommandQueueInfo GetCommandQueueInfo}  */
/** JNI method for {@link #clGetCommandQueueInfo GetCommandQueueInfo}  */
	static public function nclGetCommandQueueInfo(command_queue:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Unsafe version of {@link #clGetExtensionFunctionAddress GetExtensionFunctionAddress}  */
/** JNI method for {@link #clGetExtensionFunctionAddress GetExtensionFunctionAddress}  */
	static public function nclGetExtensionFunctionAddress(funcname:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (funcname:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
/** JNI method for {@link #clEnqueueReadBuffer EnqueueReadBuffer}  */
	static public function nclEnqueueReadBuffer(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,size:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,offset:haxe.Int64,size:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Unsafe version of {@link #clCreateImage3D CreateImage3D}  */
/** JNI method for {@link #clCreateImage3D CreateImage3D}  */
	static public function nclCreateImage3D(context:haxe.Int64,flags:haxe.Int64,image_format:haxe.Int64,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,host_ptr:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,image_format:haxe.Int64,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,host_ptr:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
/** JNI method for {@link #clEnqueueWriteBuffer EnqueueWriteBuffer}  */
	static public function nclEnqueueWriteBuffer(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,size:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,offset:haxe.Int64,size:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** IntBuffer version of: {@link #clGetMemObjectInfo GetMemObjectInfo}  */
/** LongBuffer version of: {@link #clGetMemObjectInfo GetMemObjectInfo}  */
/** PointerBuffer version of: {@link #clGetMemObjectInfo GetMemObjectInfo}  */
/** Alternative version of: {@link #clGetMemObjectInfo GetMemObjectInfo}  */
/**
 * Returns information that is common to all memory objects (buffer and image objects).
 *
 * @param memobj               the memory object being queried
 * @param param_name           the information to query. One of:<br>{@link #CL_MEM_TYPE MEM_TYPE}, {@link #CL_MEM_FLAGS MEM_FLAGS}, {@link #CL_MEM_SIZE MEM_SIZE}, {@link #CL_MEM_HOST_PTR MEM_HOST_PTR}, {@link #CL_MEM_MAP_COUNT MEM_MAP_COUNT}, {@link #CL_MEM_REFERENCE_COUNT MEM_REFERENCE_COUNT}, {@link #CL_MEM_CONTEXT MEM_CONTEXT}, {@link CL11#CL_MEM_ASSOCIATED_MEMOBJECT MEM_ASSOCIATED_MEMOBJECT}, {@link CL11#CL_MEM_OFFSET MEM_OFFSET}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return type
 *         and {@code param_value} is not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code memobj} is a not a valid memory object.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetMemObjectInfo(memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value:java.nio.LongBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** Single pointer value version of: {@link #clSetKernelArg SetKernelArg}  */
	static public function clSetKernelArg1p(kernel:haxe.Int64,arg_index:Int,arg0:haxe.Int64):Int;
/** Unsafe version of {@link #clGetEventInfo GetEventInfo}  */
/** JNI method for {@link #clGetEventInfo GetEventInfo}  */
	static public function nclGetEventInfo(event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (event:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** JNI method for {@link #clFlush Flush}  */
	static public function nclFlush(command_queue:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clGetPlatformIDs GetPlatformIDs}  */
/** JNI method for {@link #clGetPlatformIDs GetPlatformIDs}  */
	static public function nclGetPlatformIDs(num_entries:Int,platforms:haxe.Int64,num_platforms:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (num_entries:Int,platforms:haxe.Int64,num_platforms:haxe.Int64):Int {})
/** Unsafe version of {@link #clCreateCommandQueue CreateCommandQueue}  */
/** JNI method for {@link #clCreateCommandQueue CreateCommandQueue}  */
	static public function nclCreateCommandQueue(context:haxe.Int64,device:haxe.Int64,properties:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,device:haxe.Int64,properties:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/**
 * Decrements the {@code command_queue} reference count.
 * 
 * <p>After the {@code command_queue} reference count becomes zero and all commands queued to {@code command_queue} have finished (eg. kernel executions,
 * memory object updates etc.), the command-queue is deleted.</p>
 * 
 * <p>{@code clReleaseCommandQueue} performs an implicit flush to issue any previously queued OpenCL commands in command_queue.</p>
 *
 * @param command_queue the command-queue to release
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clReleaseCommandQueue(command_queue:haxe.Int64):Int;
/**
 * Creates a {@link CLCreateContextCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link CLCreateContextCallback} instance
 */
	static public function CLCreateContextCallback(sam:org.lwjgl.opencl.CLCreateContextCallback_SAM):org.lwjgl.opencl.CLCreateContextCallback;
/** JNI method for {@link #clRetainSampler RetainSampler}  */
	static public function nclRetainSampler(sampler:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** IntBuffer version of: {@link #clGetDeviceInfo GetDeviceInfo}  */
/** LongBuffer version of: {@link #clGetDeviceInfo GetDeviceInfo}  */
/** PointerBuffer version of: {@link #clGetDeviceInfo GetDeviceInfo}  */
/** Alternative version of: {@link #clGetDeviceInfo GetDeviceInfo}  */
/**
 * Returns specific information about an OpenCL device. {@code device} may be a device returned by {@link #clGetDeviceIDs GetDeviceIDs} or a sub-device created by
 * {@link CL12#clCreateSubDevices CreateSubDevices}. If {@code device} is a sub-device, the specific information for the sub-device will be returned.
 *
 * @param device               the device to query
 * @param param_name           an enumeration constant tha identifies the device information being queried. One of:<br>{@link #CL_DEVICE_TYPE DEVICE_TYPE}, {@link #CL_DEVICE_VENDOR_ID DEVICE_VENDOR_ID}, {@link #CL_DEVICE_MAX_COMPUTE_UNITS DEVICE_MAX_COMPUTE_UNITS}, {@link #CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS DEVICE_MAX_WORK_ITEM_DIMENSIONS}, {@link #CL_DEVICE_MAX_WORK_GROUP_SIZE DEVICE_MAX_WORK_GROUP_SIZE}, {@link #CL_DEVICE_MAX_WORK_ITEM_SIZES DEVICE_MAX_WORK_ITEM_SIZES}, {@link #CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR DEVICE_PREFERRED_VECTOR_WIDTH_CHAR}, {@link #CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT DEVICE_PREFERRED_VECTOR_WIDTH_SHORT}, {@link #CL_DEVICE_PREFERRED_VECTOR_WIDTH_ DEVICE_PREFERRED_VECTOR_WIDTH_}, {@link #CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG DEVICE_PREFERRED_VECTOR_WIDTH_LONG}, {@link #CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT}, {@link #CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE}, {@link #CL_DEVICE_MAX_CLOCK_FREQUENCY DEVICE_MAX_CLOCK_FREQUENCY}, {@link #CL_DEVICE_ADDRESS_BITS DEVICE_ADDRESS_BITS}, {@link #CL_DEVICE_MAX_READ_IMAGE_ARGS DEVICE_MAX_READ_IMAGE_ARGS}, {@link #CL_DEVICE_MAX_WRITE_IMAGE_ARGS DEVICE_MAX_WRITE_IMAGE_ARGS}, {@link #CL_DEVICE_MAX_MEM_ALLOC_SIZE DEVICE_MAX_MEM_ALLOC_SIZE}, {@link #CL_DEVICE_IMAGE2D_MAX_WIDTH DEVICE_IMAGE2D_MAX_WIDTH}, {@link #CL_DEVICE_IMAGE2D_MAX_HEIGHT DEVICE_IMAGE2D_MAX_HEIGHT}, {@link #CL_DEVICE_IMAGE3D_MAX_WIDTH DEVICE_IMAGE3D_MAX_WIDTH}, {@link #CL_DEVICE_IMAGE3D_MAX_HEIGHT DEVICE_IMAGE3D_MAX_HEIGHT}, {@link #CL_DEVICE_IMAGE3D_MAX_DEPTH DEVICE_IMAGE3D_MAX_DEPTH}, {@link #CL_DEVICE_IMAGE_SUPPORT DEVICE_IMAGE_SUPPORT}, {@link #CL_DEVICE_MAX_PARAMETER_SIZE DEVICE_MAX_PARAMETER_SIZE}, {@link #CL_DEVICE_MAX_SAMPLERS DEVICE_MAX_SAMPLERS}, {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN}, {@link #CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE DEVICE_MIN_DATA_TYPE_ALIGN_SIZE}, {@link #CL_DEVICE_SINGLE_FP_CONFIG DEVICE_SINGLE_FP_CONFIG}, {@link #CL_DEVICE_GLOBAL_MEM_CACHE_TYPE DEVICE_GLOBAL_MEM_CACHE_TYPE}, {@link #CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE DEVICE_GLOBAL_MEM_CACHELINE_SIZE}, {@link #CL_DEVICE_GLOBAL_MEM_CACHE_SIZE DEVICE_GLOBAL_MEM_CACHE_SIZE}, {@link #CL_DEVICE_GLOBAL_MEM_SIZE DEVICE_GLOBAL_MEM_SIZE}, {@link #CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE DEVICE_MAX_CONSTANT_BUFFER_SIZE}, {@link #CL_DEVICE_MAX_CONSTANT_ARGS DEVICE_MAX_CONSTANT_ARGS}, {@link #CL_DEVICE_LOCAL_MEM_TYPE DEVICE_LOCAL_MEM_TYPE}, {@link #CL_DEVICE_LOCAL_MEM_SIZE DEVICE_LOCAL_MEM_SIZE}, {@link #CL_DEVICE_ERROR_CORRECTION_SUPPORT DEVICE_ERROR_CORRECTION_SUPPORT}, {@link #CL_DEVICE_PROFILING_TIMER_RESOLUTION DEVICE_PROFILING_TIMER_RESOLUTION}, {@link #CL_DEVICE_ENDIAN_LITTLE DEVICE_ENDIAN_LITTLE}, {@link #CL_DEVICE_AVAILABLE DEVICE_AVAILABLE}, {@link #CL_DEVICE_COMPILER_AVAILABLE DEVICE_COMPILER_AVAILABLE}, {@link #CL_DEVICE_EXECUTION_CAPABILITIES DEVICE_EXECUTION_CAPABILITIES}, {@link #CL_DEVICE_QUEUE_PROPERTIES DEVICE_QUEUE_PROPERTIES}, {@link #CL_DEVICE_NAME DEVICE_NAME}, {@link #CL_DEVICE_VENDOR DEVICE_VENDOR}, {@link #CL_DRIVER_VERSION DRIVER_VERSION}, {@link #CL_DEVICE_PROFILE DEVICE_PROFILE}, {@link #CL_DEVICE_VERSION DEVICE_VERSION}, {@link #CL_DEVICE_EXTENSIONS DEVICE_EXTENSIONS}, {@link #CL_DEVICE_PLATFORM DEVICE_PLATFORM}, {@link CL11#CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF DEVICE_PREFERRED_VECTOR_WIDTH_HALF}, {@link CL11#CL_DEVICE_HOST_UNIFIED_MEMORY DEVICE_HOST_UNIFIED_MEMORY}, {@link CL11#CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR DEVICE_NATIVE_VECTOR_WIDTH_CHAR}, {@link CL11#CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT DEVICE_NATIVE_VECTOR_WIDTH_SHORT}, {@link CL11#CL_DEVICE_NATIVE_VECTOR_WIDTH_INT DEVICE_NATIVE_VECTOR_WIDTH_INT}, {@link CL11#CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG DEVICE_NATIVE_VECTOR_WIDTH_LONG}, {@link CL11#CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT DEVICE_NATIVE_VECTOR_WIDTH_FLOAT}, {@link CL11#CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE}, {@link CL11#CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF DEVICE_NATIVE_VECTOR_WIDTH_HALF}, {@link CL11#CL_DEVICE_OPENCL_C_VERSION DEVICE_OPENCL_C_VERSION}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_DEVICE INVALID_DEVICE} if {@code device} is not valid.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not one of the supported values or if size in bytes specified by {@code param_value_size} is &lt;
 *         size of return type and {@code param_value} is not a {@code NULL} value or if {@code param_name} is a value that is available as an extension and the
 *         corresponding extension is not supported by the device.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetDeviceInfo(device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (device:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (device:haxe.Int64,param_name:Int,param_value:java.nio.LongBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (device:haxe.Int64,param_name:Int,param_value:org.lwjgl.PointerBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (device:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #clReleaseContext ReleaseContext}  */
	static public function nclReleaseContext(context:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clEnqueueWaitForEvents EnqueueWaitForEvents}  */
/** JNI method for {@link #clEnqueueWaitForEvents EnqueueWaitForEvents}  */
	static public function nclEnqueueWaitForEvents(command_queue:haxe.Int64,num_events:Int,event_list:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,num_events:Int,event_list:haxe.Int64):Int {})
/** Unsafe version of {@link #clGetDeviceIDs GetDeviceIDs}  */
/** JNI method for {@link #clGetDeviceIDs GetDeviceIDs}  */
	static public function nclGetDeviceIDs(platform:haxe.Int64,device_type:haxe.Int64,num_entries:Int,devices:haxe.Int64,num_devices:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (platform:haxe.Int64,device_type:haxe.Int64,num_entries:Int,devices:haxe.Int64,num_devices:haxe.Int64):Int {})
/** JNI method for {@link #clRetainCommandQueue RetainCommandQueue}  */
	static public function nclRetainCommandQueue(command_queue:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Enqueues a command to map a region of the buffer object given by buffer into the host address space and returns a pointer to this mapped region.
 * 
 * <p>The pointer returned maps a region starting at {@code offset} and is at least {@code size} bytes in size. The result of a memory access outside this
 * region is undefined.</p>
 * 
 * <p>If the buffer object is created with {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} set in {@code mem_flags}, the following will be true:
 * <ul>
 * <li>The {@code host_ptr} specified in {@link #clCreateBuffer CreateBuffer} is guaranteed to contain the latest bits in the region being mapped when the
 * {@code clEnqueueMapBuffer} command has completed.</li>
 * <li>The pointer value returned by {@code clEnqueueMapBuffer} will be derived from the {@code host_ptr} specified when the buffer object is created.</li>
 * </ul></p>
 * 
 * <p>Mapped buffer objects are unmapped using {@link #clEnqueueUnmapMemObject EnqueueUnmapMemObject}.</p>
 *
 * @param command_queue           a valid command-queue
 * @param buffer                  a valid buffer object. The OpenCL context associated with command_queue and buffer must be the same.
 * @param blocking_map            indicates if the map operation is blocking or non-blocking.
 *                                
 *                                <p>If {@code blocking_map} is {@link #CL_TRUE TRUE}, {@code clEnqueueMapBuffer} does not return until the specified region in buffer is mapped into the host address
 *                                space and the application can access the contents of the mapped region using the pointer returned by {@code clEnqueueMapBuffer}.</p>
 *                                
 *                                <p>If {@code blocking_map} is {@link #CL_FALSE FALSE} i.e. map operation is non-blocking, the pointer to the mapped region returned by {@code clEnqueueMapBuffer}
 *                                cannot be used until the map command has completed. The {@code event} argument returns an event object which can be used to query the execution
 *                                status of the map command. When the map command is completed, the application can access the contents of the mapped region using the pointer
 *                                returned by {@code clEnqueueMapBuffer}.</p>
 * @param map_flags               a bit-field. One of:<br>{@link #CL_MAP_READ MAP_READ}, {@link #CL_MAP_WRITE MAP_WRITE}, {@link CL12#CL_MAP_WRITE_INVALIDATE_REGION MAP_WRITE_INVALIDATE_REGION}
 * @param offset                  the offset in bytes of the region in the buffer object that is being mapped
 * @param size                    the size in bytes of the region in the buffer object that is being mapped
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 * @param errcode_ret             will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a pointer to the mapped region. The {@code errcode_ret} is set to {@link #CL_SUCCESS SUCCESS}. A {@code NULL} pointer is returned otherwise with one of the following error values
 *         returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if context associated with {@code command_queue} and {@code buffer} are not the same or if the context associated with
 *         {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code buffer} is not a valid buffer object.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if region being mapped given by {@code (offset, size)} is out of bounds or if {@code size} is 0 or if values specified in
 *         {@code map_flags} are not valid.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL11#CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link #CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_MAP_FAILURE MAP_FAILURE} if there is a failure to map the requested region into the host address space. This error cannot occur for buffer objects
 *         created with {@link #CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} or {@link #CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR}.</li>
 *         <li>{@link CL11#CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the map operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code buffer}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if buffer has been created with {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY} or {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS} and
 *         {@link #CL_MAP_READ MAP_READ} is set in {@code map_flags} or if {@code buffer} has been created with {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} or
 *         {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS} and {@link #CL_MAP_WRITE MAP_WRITE} or {@link CL12#CL_MAP_WRITE_INVALIDATE_REGION MAP_WRITE_INVALIDATE_REGION} is set in {@code map_flags}.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clEnqueueMapBuffer EnqueueMapBuffer}  */
	static public function clEnqueueMapBuffer(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,offset:haxe.Int64,size:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer,errcode_ret:java.nio.IntBuffer,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_map:Int,map_flags:haxe.Int64,offset:haxe.Int64,size:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/** Unsafe version of {@link #clGetSamplerInfo GetSamplerInfo}  */
/** JNI method for {@link #clGetSamplerInfo GetSamplerInfo}  */
	static public function nclGetSamplerInfo(sampler:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (sampler:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** Returns the {@link CL10} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.CL10;
/** Unsafe version of {@link #clCreateBuffer CreateBuffer}  */
/** JNI method for {@link #clCreateBuffer CreateBuffer}  */
	static public function nclCreateBuffer(context:haxe.Int64,flags:haxe.Int64,size:haxe.Int64,host_ptr:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,size:haxe.Int64,host_ptr:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Single value version of: {@link #clEnqueueNativeKernel EnqueueNativeKernel}  */
/** Alternative version of: {@link #clEnqueueNativeKernel EnqueueNativeKernel}  */
/**
 * Enqueues a command to execute a native C/C++ function not compiled using the OpenCL compiler.
 *
 * @param command_queue           a valid command-queue. A native user function can only be executed on a command-queue created on a device that has {@link #CL_EXEC_NATIVE_KERNEL EXEC_NATIVE_KERNEL}
 *                                capability set in {@link #CL_DEVICE_EXECUTION_CAPABILITIES DEVICE_EXECUTION_CAPABILITIES}.
 * @param user_func               a pointer to a host-callable user function
 * @param args                    a pointer to the args list that {@code user_func} should be called with
 * @param cb_args                 the size in bytes of the args list that {@code args} points to.
 *                                
 *                                <p>The data pointed to by {@code args} and {@code cb_args} bytes in size will be copied and a pointer to this copied region will be passed to
 *                                {@code user_func}. The copy needs to be done because the memory objects (cl_mem values) that args may contain need to be modified and replaced by
 *                                appropriate pointers to global memory. When {@code clEnqueueNativeKernel} returns, the memory region pointed to by args can be reused by the
 *                                application.</p>
 * @param num_mem_objects         the number of buffer objects that are passed in {@code args}
 * @param mem_list                a list of valid buffer objects, if {@code num_mem_objects} &gt; 0. The buffer object values specified in {@code mem_list} are memory object handles
 *                                (cl_mem values) returned by {@link #clCreateBuffer CreateBuffer} or {@code NULL}.
 * @param args_mem_loc            a pointer to appropriate locations that {@code args} points to where memory object handles (cl_mem values) are stored. Before the user function is
 *                                executed, the memory object handles are replaced by pointers to global memory.
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link #CL_SUCCESS SUCCESS} if the user function execution instance was successfully queued. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link #CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link #CL_INVALID_CONTEXT INVALID_CONTEXT} if context associated with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code user_func} is {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code args} is a {@code NULL} value and {@code cb_args} &gt; 0, or if {@code args} is a {@code NULL} value and
 *         {@code num_mem_objects} &gt; 0.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code args} is not {@code NULL} and {@code cb_args} is 0.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code num_mem_objects} &gt; 0 and {@code mem_list} or {@code args_mem_loc} are {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_VALUE INVALID_VALUE} if {@code num_mem_objects} = 0 and {@code mem_list} or {@code args_mem_loc} are not {@code NULL}.</li>
 *         <li>{@link #CL_INVALID_OPERATION INVALID_OPERATION} if the device associated with {@code command_queue} cannot execute the native kernel.</li>
 *         <li>{@link #CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if one or more memory objects specified in {@code mem_list} are not valid or are not buffer objects.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to queue the execution instance of kernel on the command-queue because of insufficient resources
 *         needed to execute the kernel.</li>
 *         <li>{@link #CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with buffer objects specified as
 *         arguments to kernel.</li>
 *         <li>{@link #CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link #CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueNativeKernel(command_queue:haxe.Int64,user_func:org.lwjgl.opencl.CLNativeKernel,args:java.nio.ByteBuffer,cb_args:haxe.Int64,num_mem_objects:Int,mem_list:java.nio.ByteBuffer,args_mem_loc:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,user_func:org.lwjgl.opencl.CLNativeKernel,args:java.nio.ByteBuffer,memobj:haxe.Int64,memobj_loc:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,user_func:org.lwjgl.opencl.CLNativeKernel,args:java.nio.ByteBuffer,mem_list:org.lwjgl.PointerBuffer,args_mem_loc:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/**
 * Blocks until all previously queued OpenCL commands in {@code command_queue} are issued to the associated device and have completed. {@code clFinish}
 * does not return until all previously queued commands in {@code command_queue} have been processed and completed. {@code clFinish} is also a
 * synchronization point.
 *
 * @param command_queue the command-queue
 */
	static public function clFinish(command_queue:haxe.Int64):Int;

}
