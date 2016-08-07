package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CL11")
@:final
/** The core OpenCL 1.1 functionality.  */
extern class CL11 
{
/** Error Codes.  */
	inline static public var CL_MISALIGNED_SUB_BUFFER_OFFSET:Int = -13;
/** Error Codes.  */
	inline static public var CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST:Int = -14;
/** Error Codes.  */
	inline static public var CL_INVALID_PROPERTY:Int = -64;
/** OpenCL Version.  */
	inline static public var CL_VERSION_1_1:Int = 1;
/** cl_device_info.  */
	inline static public var CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF:Int = 4148;
/** cl_device_info.  */
	inline static public var CL_DEVICE_HOST_UNIFIED_MEMORY:Int = 4149;
/** cl_device_info.  */
	inline static public var CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR:Int = 4150;
/** cl_device_info.  */
	inline static public var CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT:Int = 4151;
/** cl_device_info.  */
	inline static public var CL_DEVICE_NATIVE_VECTOR_WIDTH_INT:Int = 4152;
/** cl_device_info.  */
	inline static public var CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG:Int = 4153;
/** cl_device_info.  */
	inline static public var CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT:Int = 4154;
/** cl_device_info.  */
	inline static public var CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE:Int = 4155;
/** cl_device_info.  */
	inline static public var CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF:Int = 4156;
/** cl_device_info.  */
	inline static public var CL_DEVICE_OPENCL_C_VERSION:Int = 4157;
/** cl_device_fp_config - bitfield.  */
	inline static public var CL_FP_SOFT_FLOAT:Int = 64;
/** cl_context_info.  */
	inline static public var CL_CONTEXT_NUM_DEVICES:Int = 4227;
/** cl_channel_order.  */
	inline static public var CL_Rx:Int = 4282;
/** cl_channel_order.  */
	inline static public var CL_RGx:Int = 4283;
/** cl_channel_order.  */
	inline static public var CL_RGBx:Int = 4284;
/** cl_mem_info.  */
	inline static public var CL_MEM_ASSOCIATED_MEMOBJECT:Int = 4359;
/** cl_mem_info.  */
	inline static public var CL_MEM_OFFSET:Int = 4360;
/** cl_addressing_mode.  */
	inline static public var CL_ADDRESS_MIRRORED_REPEAT:Int = 4404;
/** cl_kernel_work_group_info.  */
	inline static public var CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE:Int = 4531;
/** cl_kernel_work_group_info.  */
	inline static public var CL_KERNEL_PRIVATE_MEM_SIZE:Int = 4532;
/** cl_event_info.  */
	inline static public var CL_EVENT_CONTEXT:Int = 4564;
/** cl_command_type.  */
	inline static public var CL_COMMAND_READ_BUFFER_RECT:Int = 4609;
/** cl_command_type.  */
	inline static public var CL_COMMAND_WRITE_BUFFER_RECT:Int = 4610;
/** cl_command_type.  */
	inline static public var CL_COMMAND_COPY_BUFFER_RECT:Int = 4611;
/** cl_command_type.  */
	inline static public var CL_COMMAND_USER:Int = 4612;
/** cl_buffer_create_type.  */
	inline static public var CL_BUFFER_CREATE_TYPE_REGION:Int = 4640;
/** Function address.  */
	public var CreateSubBuffer:haxe.Int64;
/** Function address.  */
	public var SetMemObjectDestructorCallback:haxe.Int64;
/** Function address.  */
	public var EnqueueReadBufferRect:haxe.Int64;
/** Function address.  */
	public var EnqueueWriteBufferRect:haxe.Int64;
/** Function address.  */
	public var EnqueueCopyBufferRect:haxe.Int64;
/** Function address.  */
	public var CreateUserEvent:haxe.Int64;
/** Function address.  */
	public var SetUserEventStatus:haxe.Int64;
/** Function address.  */
	public var SetEventCallback:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Registers a user callback function with a memory object. Each call to {@code clSetMemObjectDestructorCallback} registers the specified user callback
 * function on a callback stack associated with {@code memobj}. The registered user callback functions are called in the reverse order in which they were
 * registered. The user callback functions are called and then the memory object's resources are freed and the memory object is deleted. This provides a
 * mechanism for the application (and libraries) using {@code memobj} to be notified when the memory referenced by {@code host_ptr}, specified when the
 * memory object is created and used as the storage bits for the memory object, can be reused or freed.
 *
 * @param memobj     a valid memory object
 * @param pfn_notify the callback function that can be registered by the application. This callback function may be called asynchronously by the OpenCL implementation.
 *                   It is the application's responsibility to ensure that the callback function is thread-safe.
 * @param user_data  will be passed as the {@code user_data} argument when {@code pfn_notify} is called. {@code user_data} can be {@code NULL}.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code memobj} is not a valid memory object.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code pfn_notify} is NULL.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clSetMemObjectDestructorCallback(memobj:haxe.Int64,pfn_notify:org.lwjgl.opencl.CLMemObjectDestructorCallback,user_data:haxe.Int64):Int;
/**
 * Creates a user event object. User events allow applications to enqueue commands that wait on a user event to finish before the command is executed by
 * the device.
 * 
 * <p>The execution status of the user event object created is set to {@link CL10#CL_SUBMITTED SUBMITTED}.</p>
 *
 * @param context     a valid OpenCL context
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero event object and {@code errcode_ret} is set to {@link CL10#CL_SUCCESS SUCCESS} if the user event object is created successfully. Otherwise, it returns a {@code NULL}
 *         value with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clCreateUserEvent CreateUserEvent}  */
	static public function clCreateUserEvent(context:haxe.Int64,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Registers a user callback function for a specific command execution status. The registered callback function will be called when the execution status of
 * command associated with event changes to an execution status equal to or past the status specified by {@code command_exec_status}.
 * 
 * <p>Each call to {@code clSetEventCallback} registers the specified user callback function on a callback stack associated with event. The order in which the
 * registered user callback functions are called is undefined.</p>
 * 
 * <p>All callbacks registered for an event object must be called. All enqueued callbacks shall be called before the event object is destroyed. Callbacks must
 * return promptly. The behavior of calling expensive system routines, OpenCL API calls to create contexts or command-queues, or blocking OpenCL operations
 * from the following list below, in a callback is undefined.
 * <ul>
 * <li>{@link CL10#clFinish Finish},</li>
 * <li>{@link CL10#clWaitForEvents WaitForEvents},</li>
 * <li>blocking calls to {@link CL10#clEnqueueReadBuffer EnqueueReadBuffer}, {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}, {@link CL10#clEnqueueWriteBuffer EnqueueWriteBuffer}, {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect},</li>
 * <li>blocking calls to {@link CL10#clEnqueueReadImage EnqueueReadImage} and {@link CL10#clEnqueueWriteImage EnqueueWriteImage},</li>
 * <li>blocking calls to {@link CL10#clEnqueueMapBuffer EnqueueMapBuffer} and {@link CL10#clEnqueueMapImage EnqueueMapImage},</li>
 * <li>blocking calls to {@link CL10#clBuildProgram BuildProgram}, {@link CL12#clCompileProgram CompileProgram} or {@link CL12#clLinkProgram LinkProgram}</li>
 * </ul>
 * If an application needs to wait for completion of a routine from the above list in a callback, please use the non-blocking form of the function, and
 * assign a completion callback to it to do the remainder of your work. Note that when a callback (or other code) enqueues commands to a command-queue, the
 * commands are not required to begin execution until the queue is flushed. In standard usage, blocking enqueue calls serve this role by implicitly
 * flushing the queue. Since blocking calls are not permitted in callbacks, those callbacks that enqueue commands on a command queue should either call
 * {@link CL10#clFlush Flush} on the queue before returning or arrange for {@link CL10#clFlush Flush} to be called later on another thread.</p>
 *
 * @param event                      a valid event object
 * @param command_exec_callback_type the command execution status for which the callback is registered. There is no guarantee that the callback functions registered for various
 *                                   execution status values for an event will be called in the exact order that the execution status of a command changes. Furthermore, it should be
 *                                   noted that receiving a call back for an event with a status other than {@link CL10#CL_COMPLETE COMPLETE}, in no way implies that the memory model or
 *                                   execution model as defined by the OpenCL specification has changed. For example, it is not valid to assume that a corresponding memory transfer has
 *                                   completed unless the event is in a state {@link CL10#CL_COMPLETE COMPLETE}. One of:<br>{@link CL10#CL_SUBMITTED SUBMITTED}, {@link CL10#CL_RUNNING RUNNING}, {@link CL10#CL_COMPLETE COMPLETE}
 * @param pfn_notify                 the event callback function that can be registered by the application. This callback function may be called asynchronously by the OpenCL
 *                                   implementation. It is the application's responsibility to ensure that the callback function is thread-safe.
 * @param user_data                  will be passed as the {@code user_data} argument when {@code pfn_notify} is called. {@code user_data} can be {@code NULL}.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_EVENT INVALID_EVENT} if {@code event} is not a valid event object.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code pfn_event_notify} is {@code NULL} or if {@code command_exec_callback_type} is not {@link CL10#CL_SUBMITTED SUBMITTED},
 *         {@link CL10#CL_RUNNING RUNNING} or {@link CL10#CL_COMPLETE COMPLETE}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code event} is a user event object and {@code command_exec_callback_type} is not {@link CL10#CL_COMPLETE COMPLETE}.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clSetEventCallback(event:haxe.Int64,command_exec_callback_type:Int,pfn_notify:org.lwjgl.opencl.CLEventCallback,user_data:haxe.Int64):Int;
/** Alternative version of: {@link #clEnqueueCopyBufferRect EnqueueCopyBufferRect}  */
/**
 * Enqueues a command to copy a 2D or 3D rectangular region from the buffer object identified by {@code src_buffer} to a 2D or 3D region in the buffer
 * object identified by {@code dst_buffer}. Copying begins at the source offset and destination offset which are computed as described below in the
 * description for {@code src_origin} and {@code dst_origin}. Each byte of the region's width is copied from the source offset to the destination offset.
 * After copying each width, the source and destination offsets are incremented by their respective source and destination row pitches. After copying each
 * 2D rectangle, the source and destination offsets are incremented by their respective source and destination slice pitches.
 * 
 * <p><strong>NOTE</strong>: If {@code src_buffer} and {@code dst_buffer} are the same buffer object, {@code src_row_pitch} must equal {@code dst_row_pitch}
 * and {@code src_slice_pitch} must equal {@code dst_slice_pitch}.</p>
 *
 * @param command_queue           the command-queue in which the copy command will be queued. The OpenCL context associated with {@code command_queue}, {@code src_buffer} and
 *                                {@code dst_buffer} must be the same.
 * @param src_buffer              the source buffer
 * @param dst_buffer              the destination buffer
 * @param src_origin              the {@code (x, y, z)} offset in the memory region associated with {@code src_buffer}. For a 2D rectangle region, the z value given by {@code src_origin[2]}
 *                                should be 0. The offset in bytes is computed as <code style="font-family: monospace">src_origin[2] * src_slice_pitch + src_origin[1] * src_row_pitch + src_origin[0]</code>.
 * @param dst_origin              the {@code (x, y, z)} offset in the memory region associated with {@code dst_buffer}. For a 2D rectangle region, the z value given by {@code dst_origin[2]}
 *                                should be 0. The offset in bytes is computed as <code style="font-family: monospace">dst_origin[2] * dst_slice_pitch + dst_origin[1] * dst_row_pitch + dst_origin[0]</code>.
 * @param region                  the ({@code width} in bytes, {@code height} in rows, {@code depth} in slices) of the 2D or 3D rectangle being copied. For a 2D rectangle, the depth
 *                                value given by {@code region[2]} should be 1. The values in {@code region} cannot be 0.
 * @param src_row_pitch           the length of each row in bytes to be used for the memory region associated with {@code src_buffer}. If {@code src_row_pitch} is 0, {@code src_row_pitch}
 *                                is computed as {@code region[0]}.
 * @param src_slice_pitch         the length of each 2D slice in bytes to be used for the memory region associated with {@code src_buffer}. If {@code src_slice_pitch} is 0,
 *                                {@code src_slice_pitch} is computed as {@code region[1] * src_row_pitch}.
 * @param dst_row_pitch           the length of each row in bytes to be used for the memory region associated with {@code dst_buffer}. If {@code dst_row_pitch} is 0, {@code dst_row_pitch}
 *                                is computed as {@code region[0]}.
 * @param dst_slice_pitch         the length of each 2D slice in bytes to be used for the memory region associated with {@code dst_buffer}. If {@code dst_slice_pitch} is 0,
 *                                {@code dst_slice_pitch} is computed as {@code region[1] * dst_row_pitch}.
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue}, {@code src_buffer} and {@code dst_buffer} are not the same or
 *         if the context associated with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code src_buffer} and {@code dst_buffer} are not valid buffer objects.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code (src_origin, region, src_row_pitch, src_slice_pitch)} or {@code (dst_origin, region, dst_row_pitch, dst_slice_pitch)}
 *         require accessing elements outside the {@code src_buffer} and {@code dst_buffer} buffer objects respectively.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if any {@code region} array element is 0.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code src_row_pitch} is not 0 and is less than {@code region[0]}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code dst_row_pitch} is not 0 and is less than {@code region[0]}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code src_slice_pitch} is not 0 and is less than {@code region[1] * src_row_pitch} or if {@code src_slice_pitch}
 *         is not 0 and is not a multiple of {@code src_row_pitch}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code dst_slice_pitch} is not 0 and is less than {@code region[1] * dst_row_pitch} or if {@code dst_slice_pitch}
 *         is not 0 and is not a multiple of {@code dst_row_pitch}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code src_buffer} and {@code dst_buffer} are the same buffer object and {@code src_slice_pitch} is not equal to
 *         {@code dst_slice_pitch} and {@code src_row_pitch} is not equal to {@code dst_row_pitch}.</li>
 *         <li>{@link CL10#CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL10#CL_MEM_COPY_OVERLAP MEM_COPY_OVERLAP} if {@code src_buffer} and {@code dst_buffer} are the same buffer or subbuffer object and the source and destination
 *         regions overlap or if {@code src_buffer} and {@code dst_buffer} are different sub-buffers of the same associated buffer object and they overlap.</li>
 *         <li>{@link #CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code src_buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link CL10#CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code dst_buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link CL10#CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link CL10#CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code src_buffer} or {@code dst_buffer}.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueCopyBufferRect(command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_origin:java.nio.ByteBuffer,dst_origin:java.nio.ByteBuffer,region:java.nio.ByteBuffer,src_row_pitch:haxe.Int64,src_slice_pitch:haxe.Int64,dst_row_pitch:haxe.Int64,dst_slice_pitch:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_origin:org.lwjgl.PointerBuffer,dst_origin:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,src_row_pitch:haxe.Int64,src_slice_pitch:haxe.Int64,dst_row_pitch:haxe.Int64,dst_slice_pitch:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect}  */
/** JNI method for {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect}  */
	static public function nclEnqueueWriteBufferRect(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:haxe.Int64,host_offset:haxe.Int64,region:haxe.Int64,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:haxe.Int64,host_offset:haxe.Int64,region:haxe.Int64,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/**
 * Sets the execution status of a user event object.
 * 
 * <p><strong>NOTE</strong>: Enqueued commands that specify user events in the {@code event_wait_list} argument of {@code clEnqueue***} commands must ensure
 * that the status of these user events being waited on are set using {@code clSetUserEventStatus} before any OpenCL APIs that release OpenCL objects
 * except for event objects are called; otherwise the behavior is undefined.</p>
 * 
 * <p>For example, the following code sequence will result in undefined behavior of {@link CL10#clReleaseMemObject ReleaseMemObject}.
 * <pre><code style="font-family: monospace">
 * ev1 = clCreateUserEvent(ctx, NULL);
 * clEnqueueWriteBuffer(cq, buf1, CL_FALSE, ..., 1, &ev1, NULL);
 * clEnqueueWriteBuffer(cq, buf2, CL_FALSE, ...);
 * clReleaseMemObject(buf2);
 * clSetUserEventStatus(ev1, CL_COMPLETE);</code></pre>
 * The following code sequence, however, works correctly.
 * <pre><code style="font-family: monospace">
 * ev1 = clCreateUserEvent(ctx, NULL);
 * clEnqueueWriteBuffer(cq, buf1, CL_FALSE, ..., 1, &ev1, NULL);
 * clEnqueueWriteBuffer(cq, buf2, CL_FALSE, ...);
 * clSetUserEventStatus(ev1, CL_COMPLETE);
 * clReleaseMemObject(buf2);</code></pre></p>
 *
 * @param event            a user event object created using {@link #clCreateUserEvent CreateUserEvent}
 * @param execution_status the new execution status to be set and can be {@link CL10#CL_COMPLETE COMPLETE} or a negative integer value to indicate an error. A negative integer value
 *                         causes all enqueued commands that wait on this user event to be terminated. {@code clSetUserEventStatus} can only be called once to change the
 *                         execution status of event.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function was executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_EVENT INVALID_EVENT} if {@code event} is not a valid user event object.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if the {@code execution_status} is not {@link CL10#CL_COMPLETE COMPLETE} or a negative integer value.</li>
 *         <li>{@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if the {@code execution_status} for event has already been changed by a previous call to {@code clSetUserEventStatus}.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clSetUserEventStatus(event:haxe.Int64,execution_status:Int):Int;
/** DoubleBuffer version of: {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}  */
/** FloatBuffer version of: {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}  */
/** IntBuffer version of: {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}  */
/** ShortBuffer version of: {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}  */
/** Alternative version of: {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}  */
/**
 * Enqueues a command to read a 2D or 3D rectangular region from a buffer object to host memory.
 * 
 * <p>Calling {@code clEnqueueReadBufferRect} to read a region of the buffer object with the {@code ptr} argument value set to {@code host_ptr} and
 * {@code host_origin}, {@code buffer_origin} values are the same, where {@code host_ptr} is a pointer to the memory region specified when the buffer
 * object being read is created with {@link CL10#CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, must meet the following requirements in order to avoid undefined behavior:
 * <ul>
 * <li>All commands that use this buffer object or a memory object (buffer or image) created from this buffer object have finished execution before the
 * read command begins execution.</li>
 * <li>The buffer object or memory objects created from this buffer object are not mapped.</li>
 * <li>The buffer object or memory objects created from this buffer object are not used by any command-queue until the read command has finished execution.</li>
 * </ul></p>
 *
 * @param command_queue           the command-queue in which the read command will be queued. {@code command_queue} and {@code buffer} must be created with the same OpenCL context.
 * @param buffer                  a valid buffer object
 * @param blocking_read           indicates if the read operation is <em>blocking</em> or <em>nonblocking</em>.
 *                                
 *                                <p>If {@code blocking_read} is {@link CL10#CL_TRUE TRUE} i.e. the read command is blocking, {@code clEnqueueReadBufferRect} does not return until the buffer data has
 *                                been read and copied into memory pointed to by {@code ptr}.</p>
 *                                
 *                                <p>If {@code blocking_read} is {@link CL10#CL_FALSE FALSE} i.e. the read command is non-blocking, {@code clEnqueueReadBufferRect} queues a non-blocking read command and
 *                                returns. The contents of the buffer that {@code ptr} points to cannot be used until the read command has completed. The {@code event} argument
 *                                returns an event object which can be used to query the execution status of the read command. When the read command has completed, the contents of
 *                                the buffer that {@code ptr} points to can be used by the application.</p>
 * @param buffer_offset           the {@code (x, y, z)} offset in the memory region associated with {@code buffer}. For a 2D rectangle region, the z value given by {@code buffer_origin[2]}
 *                                should be 0. The offset in bytes is computed as <code style="font-family: monospace">buffer_origin[2] * buffer_slice_pitch + buffer_origin[1] * buffer_row_pitch + buffer_origin[0]</code>.
 * @param host_offset             the {@code (x, y, z)} offset in the memory region pointed to by {@code ptr}. For a 2D rectangle region, the z value given by {@code host_origin[2]}
 *                                should be 0. The offset in bytes is computed as <code style="font-family: monospace">host_origin[2] * host_slice_pitch + host_origin[1] * host_row_pitch + host_origin[0]</code>.
 * @param region                  the (width in bytes, height in rows, depth in slices) of the 2D or 3D rectangle being read or written. For a 2D rectangle copy, the depth value
 *                                given by {@code region[2]} should be 1. The values in region cannot be 0.
 * @param buffer_row_pitch        the length of each row in bytes to be used for the memory region associated with {@code buffer}. If {@code buffer_row_pitch} is 0,
 *                                {@code buffer_row_pitch} is computed as {@code region[0]}.
 * @param buffer_slice_pitch      the length of each 2D slice in bytes to be used for the memory region associated with {@code buffer}. If {@code buffer_slice_pitch} is 0,
 *                                {@code buffer_slice_pitch} is computed as {@code region[1] * buffer_row_pitch}.
 * @param host_row_pitch          the length of each row in bytes to be used for the memory region pointed to by {@code ptr}. If {@code host_row_pitch} is 0, {@code host_row_pitch}
 *                                is computed as {@code region[0]}.
 * @param host_slice_pitch        the length of each 2D slice in bytes to be used for the memory region pointed to by {@code ptr}. If {@code host_slice_pitch} is 0,
 *                                {@code host_slice_pitch} is computed as {@code region[1] * host_row_pitch}.
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
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue} and {@code buffer} are not the same or if the context associated
 *         with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code buffer} is not a valid buffer object.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if the region being read specified by {@code (buffer_origin, region, buffer_row_pitch, buffer_slice_pitch)} is out of bounds.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code ptr} is a {@code NULL} value.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if any {@code region} array element is 0.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code buffer_row_pitch} is not 0 and is less than {@code region[0]}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code host_row_pitch} is not 0 and is less than {@code region[0]}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code buffer_slice_pitch} is not 0 and is less than {@code region[1] * buffer_row_pitch} and not a multiple of {@code buffer_row_pitch}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code host_slice_pitch} is not 0 and is less than {@code region[1] * host_row_pitch} and not a multiple of {@code host_row_pitch}.</li>
 *         <li>{@link CL10#CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link CL10#CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the read operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link CL10#CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code buffer}.</li>
 *         <li>{@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueReadBufferRect} is called on buffer which has been created with {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY} or {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueReadBufferRect(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:java.nio.ByteBuffer,host_offset:java.nio.ByteBuffer,region:java.nio.ByteBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.DoubleBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.FloatBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.IntBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.ShortBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clCreateUserEvent CreateUserEvent}  */
/** JNI method for {@link #clCreateUserEvent CreateUserEvent}  */
	static public function nclCreateUserEvent(context:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #clSetMemObjectDestructorCallback SetMemObjectDestructorCallback}  */
	static public function nclSetMemObjectDestructorCallback(memobj:haxe.Int64,pfn_notify:haxe.Int64,user_data:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clEnqueueCopyBufferRect EnqueueCopyBufferRect}  */
/** JNI method for {@link #clEnqueueCopyBufferRect EnqueueCopyBufferRect}  */
	static public function nclEnqueueCopyBufferRect(command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_origin:haxe.Int64,dst_origin:haxe.Int64,region:haxe.Int64,src_row_pitch:haxe.Int64,src_slice_pitch:haxe.Int64,dst_row_pitch:haxe.Int64,dst_slice_pitch:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,src_buffer:haxe.Int64,dst_buffer:haxe.Int64,src_origin:haxe.Int64,dst_origin:haxe.Int64,region:haxe.Int64,src_row_pitch:haxe.Int64,src_slice_pitch:haxe.Int64,dst_row_pitch:haxe.Int64,dst_slice_pitch:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** JNI method for {@link #clSetEventCallback SetEventCallback}  */
	static public function nclSetEventCallback(event:haxe.Int64,command_exec_callback_type:Int,pfn_notify:haxe.Int64,user_data:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Creates a {@link CLEventCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link CLEventCallback} instance
 */
	static public function CLEventCallback(sam:org.lwjgl.opencl.CLEventCallback_SAM):org.lwjgl.opencl.CLEventCallback;
/** Unsafe version of {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}  */
/** JNI method for {@link #clEnqueueReadBufferRect EnqueueReadBufferRect}  */
	static public function nclEnqueueReadBufferRect(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:haxe.Int64,host_offset:haxe.Int64,region:haxe.Int64,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_read:Int,buffer_offset:haxe.Int64,host_offset:haxe.Int64,region:haxe.Int64,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/**
 * Creates a {@link CLMemObjectDestructorCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link CLMemObjectDestructorCallback} instance
 */
	static public function CLMemObjectDestructorCallback(sam:org.lwjgl.opencl.CLMemObjectDestructorCallback_SAM):org.lwjgl.opencl.CLMemObjectDestructorCallback;
/** DoubleBuffer version of: {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect}  */
/** FloatBuffer version of: {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect}  */
/** IntBuffer version of: {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect}  */
/** ShortBuffer version of: {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect}  */
/** Alternative version of: {@link #clEnqueueWriteBufferRect EnqueueWriteBufferRect}  */
/**
 * Enqueues a command to write a 2D or 3D rectangular region to a buffer object from host memory.
 * 
 * <p>Calling {@code clEnqueueWriteBufferRect} to update the latest bits in a region of the buffer object with the {@code ptr} argument value set to
 * {@code host_ptr} and {@code host_origin}, {@code buffer_origin} values are the same, where {@code host_ptr} is a pointer to the memory region specified
 * when the buffer object being written is created with {@link CL10#CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, must meet the following requirements in order to avoid undefined
 * behavior:
 * <ul>
 * <li>The host memory region given by {@code (buffer_origin region)} contains the latest bits when the enqueued write command begins execution.</li>
 * <li>The buffer object or memory objects created from this buffer object are not mapped.</li>
 * <li>The buffer object or memory objects created from this buffer object are not used by any command-queue until the write command has finished execution.</li>
 * </ul></p>
 *
 * @param command_queue           the command-queue in which the write command will be queued. {@code command_queue} and {@code buffer} must be created with the same OpenCL context.
 * @param buffer                  a valid buffer object
 * @param blocking_write          indicates if the write operation is <em>blocking</em> or <em>nonblocking</em>.
 *                                
 *                                <p>If {@code blocking_write} is {@link CL10#CL_TRUE TRUE}, the OpenCL implementation copies the data referred to by {@code ptr} and enqueues the write operation in the
 *                                command-queue. The memory pointed to by {@code ptr} can be reused by the application after the {@code clEnqueueWriteBufferRect} call returns.</p>
 *                                
 *                                <p>If {@code blocking_write} is {@link CL10#CL_FALSE FALSE}, the OpenCL implementation will use {@code ptr} to perform a non-blocking write. As the write is non-blocking
 *                                the implementation can return immediately. The memory pointed to by {@code ptr} cannot be reused by the application after the call returns. The
 *                                {@code event} argument returns an event object which can be used to query the execution status of the write command. When the write command has
 *                                completed, the memory pointed to by {@code ptr} can then be reused by the application.</p>
 * @param buffer_offset           the {@code (x, y, z)} offset in the memory region associated with {@code buffer}. For a 2D rectangle region, the z value given by {@code buffer_origin[2]}
 *                                should be 0. The offset in bytes is computed as <code style="font-family: monospace">buffer_origin[2] * buffer_slice_pitch + buffer_origin[1] * buffer_row_pitch + buffer_origin[0]</code>.
 * @param host_offset             the {@code (x, y, z)} offset in the memory region pointed to by {@code ptr}. For a 2D rectangle region, the z value given by {@code host_origin[2]}
 *                                should be 0. The offset in bytes is computed as <code style="font-family: monospace">host_origin[2] * host_slice_pitch + host_origin[1] * host_row_pitch + host_origin[0]</code>.
 * @param region                  the (width in bytes, height in rows, depth in slices) of the 2D or 3D rectangle being read or written. For a 2D rectangle copy, the depth value
 *                                given by {@code region[2]} should be 1. The values in region cannot be 0.
 * @param buffer_row_pitch        the length of each row in bytes to be used for the memory region associated with {@code buffer}. If {@code buffer_row_pitch} is 0,
 *                                {@code buffer_row_pitch} is computed as {@code region[0]}.
 * @param buffer_slice_pitch      the length of each 2D slice in bytes to be used for the memory region associated with {@code buffer}. If {@code buffer_slice_pitch} is 0,
 *                                {@code buffer_slice_pitch} is computed as {@code region[1] * buffer_row_pitch}.
 * @param host_row_pitch          the length of each row in bytes to be used for the memory region pointed to by {@code ptr}. If {@code host_row_pitch} is 0, {@code host_row_pitch}
 *                                is computed as {@code region[0]}.
 * @param host_slice_pitch        the length of each 2D slice in bytes to be used for the memory region pointed to by {@code ptr}. If {@code host_slice_pitch} is 0,
 *                                {@code host_slice_pitch} is computed as {@code region[1] * host_row_pitch}.
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
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if the context associated with {@code command_queue} and {@code buffer} are not the same or if the context associated
 *         with {@code command_queue} and events in {@code event_wait_list} are not the same.</li>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code buffer} is not a valid buffer object.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if the region being written specified by {@code (buffer_origin, region, buffer_row_pitch, buffer_slice_pitch)} is out of bounds.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code ptr} is a {@code NULL} value.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if any {@code region} array element is 0.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code buffer_row_pitch} is not 0 and is less than {@code region[0]}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code host_row_pitch} is not 0 and is less than {@code region[0]}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code buffer_slice_pitch} is not 0 and is less than {@code region[1] * buffer_row_pitch} and not a multiple of {@code buffer_row_pitch}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code host_slice_pitch} is not 0 and is less than {@code region[1] * host_row_pitch} and not a multiple of {@code host_row_pitch}.</li>
 *         <li>{@link CL10#CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link #CL_MISALIGNED_SUB_BUFFER_OFFSET MISALIGNED_SUB_BUFFER_OFFSET} if {@code buffer} is a sub-buffer object and offset specified when the sub-buffer object is created is
 *         not aligned to {@link CL10#CL_DEVICE_MEM_BASE_ADDR_ALIGN DEVICE_MEM_BASE_ADDR_ALIGN} value for device associated with queue.</li>
 *         <li>{@link #CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST} if the write operation is blocking and the execution status of any of the events in
 *         {@code event_wait_list} is a negative integer value.</li>
 *         <li>{@link CL10#CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for data store associated with {@code buffer}.</li>
 *         <li>{@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if {@code clEnqueueWriteBufferRect} is called on buffer which has been created with {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} or {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS}.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueWriteBufferRect(command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:java.nio.ByteBuffer,host_offset:java.nio.ByteBuffer,region:java.nio.ByteBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.DoubleBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.FloatBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.IntBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.ShortBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,buffer:haxe.Int64,blocking_write:Int,buffer_offset:org.lwjgl.PointerBuffer,host_offset:org.lwjgl.PointerBuffer,region:org.lwjgl.PointerBuffer,buffer_row_pitch:haxe.Int64,buffer_slice_pitch:haxe.Int64,host_row_pitch:haxe.Int64,host_slice_pitch:haxe.Int64,ptr:java.nio.ByteBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Alternative version of: {@link #clCreateSubBuffer CreateSubBuffer}  */
/**
 * Creates a new buffer object (referred to as a sub-buffer object) from an existing buffer object.
 * 
 * <p><strong>NOTE</strong>: Concurrent reading from, writing to and copying between both a buffer object and its sub-buffer object(s) is undefined.
 * Concurrent reading from, writing to and copying between overlapping sub-buffer objects created with the same buffer object is undefined. Only reading
 * from both a buffer object and its sub-buffer objects or reading from multiple overlapping sub-buffer objects is defined.</p>
 *
 * @param buffer             a valid buffer object and cannot be a sub-buffer object
 * @param flags              a bit-field that is used to specify allocation and usage information about the sub-buffer memory object being created.
 *                           
 *                           <p>If the {@link CL10#CL_MEM_READ_WRITE MEM_READ_WRITE}, {@link CL10#CL_MEM_READ_ONLY MEM_READ_ONLY} or {@link CL10#CL_MEM_WRITE_ONLY MEM_WRITE_ONLY} values are not specified in flags, they are
 *                           inherited from the corresponding memory access qualifers associated with buffer. The {@link CL10#CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR}, {@link CL10#CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR}
 *                           and {@link CL10#CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} values cannot be specified in flags but are inherited from the corresponding memory access qualifiers
 *                           associated with buffer. If {@link CL10#CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR} is specified in the memory access qualifier values associated with buffer it does not
 *                           imply any additional copies when the sub-buffer is created from buffer. If the {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY}, {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY}
 *                           or {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS} values are not specified in flags, they are inherited from the corresponding memory access qualifiers
 *                           associated with buffer.</p>
 * @param buffer_create_type the type of buffer object to be created. Must be:<br>{@link #CL_BUFFER_CREATE_TYPE_REGION BUFFER_CREATE_TYPE_REGION}
 * @param buffer_create_info details about the buffer object to be created.
 *                           
 *                           <p>When {@code buffer_create_type} is {@link #CL_BUFFER_CREATE_TYPE_REGION BUFFER_CREATE_TYPE_REGION}, then {@code buffer_create_info} is a pointer to a {@link CLBufferRegion}
 *                           structure. {@code (origin, size)} defines the offset and size in bytes in buffer.</p>
 * @param errcode_ret        will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code buffer} is not a valid buffer object or is a sub-buffer object.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code buffer} was created with {@link CL10#CL_MEM_WRITE_ONLY MEM_WRITE_ONLY} and {@code flags} specifies {@link CL10#CL_MEM_READ_WRITE MEM_READ_WRITE}
 *         or {@link CL10#CL_MEM_READ_ONLY MEM_READ_ONLY}, or if {@code buffer} was created with {@link CL10#CL_MEM_READ_ONLY MEM_READ_ONLY} and {@code flags} specifies
 *         {@link CL10#CL_MEM_READ_WRITE MEM_READ_WRITE} or {@link CL10#CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, or if {@code flags} specifies {@link CL10#CL_MEM_USE_HOST_PTR MEM_USE_HOST_PTR} or
 *         {@link CL10#CL_MEM_ALLOC_HOST_PTR MEM_ALLOC_HOST_PTR} or {@link CL10#CL_MEM_COPY_HOST_PTR MEM_COPY_HOST_PTR}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code buffer} was created with {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY} and {@code flags} specify {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY},
 *         or if {@code buffer} was created with {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} and {@code flags} specify {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY}, or if
 *         {@code buffer} was created with {@link CL12#CL_MEM_HOST_NO_ACCESS MEM_HOST_NO_ACCESS} and {@code flags} specify {@link CL12#CL_MEM_HOST_READ_ONLY MEM_HOST_READ_ONLY} or {@link CL12#CL_MEM_HOST_WRITE_ONLY MEM_HOST_WRITE_ONLY}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if value specified in {@code buffer_create_type} is not valid.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if value(s) specified in {@code buffer_create_info} (for a given {@code buffer_create_type}) is not valid or if
 *         {@code buffer_create_info} is {@code NULL}.</li>
 *         <li>{@link CL10#CL_INVALID_BUFFER_SIZE INVALID_BUFFER_SIZE} if {@code size} is 0.</li>
 *         <li>{@link CL10#CL_MEM_OBJECT_ALLOCATION_FAILURE MEM_OBJECT_ALLOCATION_FAILURE} if there is a failure to allocate memory for sub-buffer object.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clCreateSubBuffer(buffer:haxe.Int64,flags:haxe.Int64,buffer_create_type:Int,buffer_create_info:java.nio.ByteBuffer,errcode_ret:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (buffer:haxe.Int64,flags:haxe.Int64,buffer_create_type:Int,buffer_create_info:java.nio.ByteBuffer,errcode_ret:java.nio.IntBuffer):haxe.Int64 {})
/** Returns the {@link CL11} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.CL11;
/** JNI method for {@link #clSetUserEventStatus SetUserEventStatus}  */
	static public function nclSetUserEventStatus(event:haxe.Int64,execution_status:Int,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #clCreateSubBuffer CreateSubBuffer}  */
/** JNI method for {@link #clCreateSubBuffer CreateSubBuffer}  */
	static public function nclCreateSubBuffer(buffer:haxe.Int64,flags:haxe.Int64,buffer_create_type:Int,buffer_create_info:haxe.Int64,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (buffer:haxe.Int64,flags:haxe.Int64,buffer_create_type:Int,buffer_create_info:haxe.Int64,errcode_ret:haxe.Int64):haxe.Int64 {})

}
