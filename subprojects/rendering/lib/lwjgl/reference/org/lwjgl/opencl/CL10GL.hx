package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CL10GL")
@:final
/**
 * The OpenCL 1.0 OpenGL interoperability functionality.
 * 
 * <p>OpenCL memory objects may be created from OpenGL objects if and only if the OpenCL context has been created from an OpenGL share group object or
 * context. OpenGL share groups and contexts are created using platform specific APIs such as EGL, CGL, WGL, and GLX. On MacOS X, an OpenCL context may be
 * created from an OpenGL share group object using the OpenCL platform extension <strong>cl_apple_gl_sharing</strong>. On other platforms including
 * Microsoft Windows, Linux/Unix and others, an OpenCL context may be created from an OpenGL context using the Khronos platform extension
 * <strong>cl_khr_gl_sharing</strong>.</p>
 * 
 * <p>Any supported OpenGL object defined within the GL share group object, or the share group associated with the GL context from which the CL context is
 * created, may be shared, with the exception of the default OpenGL objects (i.e. objects named zero), which may not be shared.
 * <h3>Lifetime of Shared Objects</h3>
 * An OpenCL memory object created from an OpenGL object (hereinafter refered to as a “shared CL/GL object”) remains valid as long as the corresponding GL
 * object has not been deleted. If the GL object is deleted through the GL API (e.g. {@link GL15#glDeleteBuffers}, {@link GL11#glDeleteTextures}, or
 * {@link GL30#glDeleteRenderbuffers}), subsequent use of the CL buffer or image object will result in undefined behavior, including but not limited to
 * possible CL errors and data corruption, but may not result in program termination.</p>
 * 
 * <p>The CL context and corresponding command-queues are dependent on the existence of the GL share group object, or the share group associated with the GL
 * context from which the CL context is created. If the GL share group object or all GL contexts in the share group are destroyed, any use of the CL
 * context or command-queue(s) will result in undefined behavior, which may include program termination. Applications should destroy the CL
 * command-queue(s) and CL context before destroying the corresponding GL share group or contexts.
 * <h3>Synchronizing OpenCL and OpenGL Access to Shared Objects</h3>
 * The application is responsible for maintaining the proper order of operations if the CL and GL contexts are in separate threads.</p>
 * 
 * <p>If a GL context is bound to a thread other than the one in which {@link #clEnqueueReleaseGLObjects EnqueueReleaseGLObjects} is called, changes to any of the objects in
 * {@code mem_objects} may not be visible to that context without additional steps being taken by the application. For an OpenGL 3.1 (or later) context,
 * the requirements are described in Appendix D ("Shared Objects and Multiple Contexts") of the OpenGL 3.1 Specification. For prior versions of OpenGL, the
 * requirements are implementation dependent.</p>
 * 
 * <p>Attempting to access the data store of an OpenGL object after it has been acquired by OpenCL and before it has been released will result in undefined
 * behavior. Similarly, attempting to access a shared CL/GL object from OpenCL before it has been acquired by the OpenCL command queue, or after it has
 * been released, will result in undefined behavior.</p>
 */
extern class CL10GL 
{
/** Error Codes  */
	inline static public var CL_INVALID_GL_OBJECT:Int = -60;
/** Error Codes  */
	inline static public var CL_INVALID_MIP_LEVEL:Int = -62;
/** cl_gl_object_type  */
	inline static public var CL_GL_OBJECT_BUFFER:Int = 8192;
/** cl_gl_object_type  */
	inline static public var CL_GL_OBJECT_TEXTURE2D:Int = 8193;
/** cl_gl_object_type  */
	inline static public var CL_GL_OBJECT_TEXTURE3D:Int = 8194;
/** cl_gl_object_type  */
	inline static public var CL_GL_OBJECT_RENDERBUFFER:Int = 8195;
/** cl_gl_texture_info  */
	inline static public var CL_GL_TEXTURE_TARGET:Int = 8196;
/** cl_gl_texture_info  */
	inline static public var CL_GL_MIPMAP_LEVEL:Int = 8197;
/** Function address.  */
	public var CreateFromGLBuffer:haxe.Int64;
/** Function address.  */
	public var CreateFromGLTexture2D:haxe.Int64;
/** Function address.  */
	public var CreateFromGLTexture3D:haxe.Int64;
/** Function address.  */
	public var CreateFromGLRenderbuffer:haxe.Int64;
/** Function address.  */
	public var GetGLObjectInfo:haxe.Int64;
/** Function address.  */
	public var GetGLTextureInfo:haxe.Int64;
/** Function address.  */
	public var EnqueueAcquireGLObjects:haxe.Int64;
/** Function address.  */
	public var EnqueueReleaseGLObjects:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #clGetGLObjectInfo GetGLObjectInfo}  */
/** JNI method for {@link #clGetGLObjectInfo GetGLObjectInfo}  */
	static public function nclGetGLObjectInfo(memobj:haxe.Int64,gl_object_type:haxe.Int64,gl_object_name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (memobj:haxe.Int64,gl_object_type:haxe.Int64,gl_object_name:haxe.Int64):Int {})
/** Unsafe version of {@link #clEnqueueAcquireGLObjects EnqueueAcquireGLObjects}  */
/** JNI method for {@link #clEnqueueAcquireGLObjects EnqueueAcquireGLObjects}  */
	static public function nclEnqueueAcquireGLObjects(command_queue:haxe.Int64,num_objects:Int,mem_objects:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,num_objects:Int,mem_objects:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Single value version of: {@link #clEnqueueReleaseGLObjects EnqueueReleaseGLObjects}  */
/** Alternative version of: {@link #clEnqueueReleaseGLObjects EnqueueReleaseGLObjects}  */
/**
 * Releases OpenCL memory objects that have been created from OpenGL objects. These objects need to be released before they can be used by OpenGL. The
 * OpenGL objects are released by the OpenCL context associated with {@code command_queue}.
 * 
 * <p>After calling {@code clEnqueueReleaseGLObjects}, the application is responsible for ensuring that any pending OpenCL operations which access the objects
 * specified in {@code mem_objects} have completed prior to executing subsequent GL commands which reference these objects. This may be accomplished
 * portably by calling {@link CL10#clWaitForEvents WaitForEvents} with the event object returned by {@code clEnqueueReleaseGLObjects}, or by calling {@link CL10#clFinish Finish}.
 * Some implementations may offer more efficient methods.</p>
 *
 * @param command_queue           a valid command-queue
 * @param num_objects             the number of memory objects to be released in {@code mem_objects}
 * @param mem_objects             a pointer to a list of CL memory objects that correpond to GL objects
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. If {@code num_objects} is 0 and {@code mem_objects} is {@code NULL} the function does nothing and returns
 *         {@link CL10#CL_SUCCESS SUCCESS}. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code num_objects} is zero and {@code mem_objects} is not a {@code NULL} value or if {@code num_objects} &gt; 0 and
 *         {@code mem_objects} is {@code NULL}.</li>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if memory objects in {@code mem_objects} are not valid OpenCL memory objects.</li>
 *         <li>{@link CL10#CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if context associated with {@code command_queue} was not created from an OpenGL context.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if memory objects in {@code mem_objects} have not been created from a GL object(s).</li>
 *         <li>{@link CL10#CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueReleaseGLObjects(command_queue:haxe.Int64,num_objects:Int,mem_objects:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,mem_object:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,mem_objects:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clCreateFromGLTexture3D CreateFromGLTexture3D}  */
/** JNI method for {@link #clCreateFromGLTexture3D CreateFromGLTexture3D}  */
	static public function nclCreateFromGLTexture3D(context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #clCreateFromGLTexture2D CreateFromGLTexture2D}  */
/** JNI method for {@link #clCreateFromGLTexture2D CreateFromGLTexture2D}  */
	static public function nclCreateFromGLTexture2D(context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:haxe.Int64):haxe.Int64 {})
/**
 * Creates an OpenCL buffer object from an OpenGL buffer object.
 * 
 * <p>The size of the GL buffer object data store at the time {@code clCreateFromGLBuffer} is called will be used as the size of buffer object returned by
 * {@code clCreateFromGLBuffer}. If the state of a GL buffer object is modified through the GL API (e.g. {@link GL15#glBufferData}) while there exists a
 * corresponding CL buffer object, subsequent use of the CL buffer object will result in undefined behavior.</p>
 * 
 * <p>The {@link CL10#clRetainMemObject RetainMemObject} and {@link CL10#clReleaseMemObject ReleaseMemObject} functions can be used to retain and release the buffer object.</p>
 *
 * @param context     a valid OpenCL context created from an OpenGL context
 * @param flags       a bit-field that is used to specify usage information. One of:<br>{@link CL10#CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link CL10#CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link CL10#CL_MEM_READ_WRITE MEM_READ_WRITE}
 * @param bufobj      the name of a GL buffer object. The data store of the GL buffer object must have have been previously created by calling {@link GL15#glBufferData},
 *                    although its contents need not be initialized. The size of the data store will be used to determine the size of the CL buffer object.
 * @param errcode_ret will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero OpenCL buffer object and {@code errcode_ret} is set to {@link CL10#CL_SUCCESS SUCCESS} if the buffer object is created successfully. Otherwise, it returns a {@code NULL}
 *         value with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context or was not created from a GL context.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if values specified in {@code flags} are not valid.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if {@code bufobj} is not a GL buffer object or is a GL buffer object but does not have an existing data store or the
 *         size of the buffer is 0.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clCreateFromGLBuffer CreateFromGLBuffer}  */
	static public function clCreateFromGLBuffer(context:haxe.Int64,flags:haxe.Int64,bufobj:Int,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,bufobj:Int,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Creates an OpenCL 2D image object from an OpenGL 2D texture object, or a single face of an OpenGL cubemap texture object.
 * 
 * <p>If the state of a GL texture object is modified through the GL API (e.g. {@link GL11#glTexImage2D} or the values of the texture parameters
 * {@link GL12#GL_TEXTURE_BASE_LEVEL} or {@link GL12#GL_TEXTURE_MAX_LEVEL} are modified) while there exists a corresponding CL image object, subsequent use
 * of the CL image object will result in undefined behavior.</p>
 * 
 * <p>The {@link CL10#clRetainMemObject RetainMemObject} and {@link CL10#clReleaseMemObject ReleaseMemObject} functions can be used to retain and release the image objects.</p>
 *
 * @param context        a valid OpenCL context created from an OpenGL context
 * @param flags          a bit-field that is used to specify usage information. One of:<br>{@link CL10#CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link CL10#CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link CL10#CL_MEM_READ_WRITE MEM_READ_WRITE}
 * @param texture_target defines the image type of {@code texture}. No reference to a bound GL texture object is made or implied by this parameter. One of:<br>{@link GL11#GL_TEXTURE_2D}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Z}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Z}, {@link GL31#GL_TEXTURE_RECTANGLE}
 * @param miplevel       the mipmap level to be used. Implementations may return {@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} for {@code miplevel} values &gt; 0.
 * @param texture        the name of a GL 2D, cubemap or rectangle texture object. The texture object must be a complete texture as per OpenGL rules on texture completeness.
 *                       The texture format and dimensions defined by OpenGL for the specified {@code miplevel} of the texture will be used to create the 2D image object.
 *                       Only GL texture objects with an internal format that maps to appropriate OpenCL image channel order and data type may be used to create a 2D image
 *                       object.
 * @param errcode_ret    will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero OpenCL image object and {@code errcode_ret} is set to {@link CL10#CL_SUCCESS SUCCESS} if the image object is created successfully. Otherwise, it returns a {@code NULL}
 *         value with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context or was not created from a GL context.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if values specified in {@code flags} are not valid or if value specified in {@code texture_target} is not one of the
 *         values specified in the description of {@code texture_target}.</li>
 *         <li>{@link #CL_INVALID_MIP_LEVEL INVALID_MIP_LEVEL} if {@code miplevel} is less than the value of {@code level}<sub>base</sub> (for OpenGL implementations) or zero (for
 *         OpenGL ES implementations); or greater than the value of {@code q} (for both OpenGL and OpenGL ES).</li>
 *         <li>{@link #CL_INVALID_MIP_LEVEL INVALID_MIP_LEVEL} if {@code miplevel} is greather than zero and the OpenGL implementation does not support creating from non-zero mipmap
 *         levels.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if {@code texture} is not a GL texture object whose type matches {@code texture_target}, if the specified {@code miplevel}
 *         of texture is not defined, or if the width or height of the specified {@code miplevel} is zero.</li>
 *         <li>{@link CL10#CL_INVALID_IMAGE_FORMAT_DESCRIPTOR INVALID_IMAGE_FORMAT_DESCRIPTOR} if the OpenGL texture internal format does not map to a supported OpenCL image format.</li>
 *         <li>{@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if {@code texture} is a GL texture object created with a border width value greater than zero.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clCreateFromGLTexture2D CreateFromGLTexture2D}  */
	static public function clCreateFromGLTexture2D(context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Creates an OpenCL 3D image object from an OpenGL 3D texture object.
 * 
 * <p>If the state of a GL texture object is modified through the GL API (e.g. {@link GL12#glTexImage3D} or the values of the texture parameters
 * {@link GL12#GL_TEXTURE_BASE_LEVEL} or {@link GL12#GL_TEXTURE_MAX_LEVEL} are modified) while there exists a corresponding CL image object, subsequent use
 * of the CL image object will result in undefined behavior.</p>
 * 
 * <p>The {@link CL10#clRetainMemObject RetainMemObject} and {@link CL10#clReleaseMemObject ReleaseMemObject} functions can be used to retain and release the image objects.</p>
 *
 * @param context        a valid OpenCL context created from an OpenGL context
 * @param flags          a bit-field that is used to specify usage information. One of:<br>{@link CL10#CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link CL10#CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link CL10#CL_MEM_READ_WRITE MEM_READ_WRITE}
 * @param texture_target defines the image type of {@code texture}. No reference to a bound GL texture object is made or implied by this parameter. Must be:<br>{@link GL12#GL_TEXTURE_3D}
 * @param miplevel       the mipmap level to be used
 * @param texture        the name of a GL 3D texture object. The texture object must be a complete texture as per OpenGL rules on texture completeness. The texture format
 *                       and dimensions defined by OpenGL for the specified {@code miplevel} of the texture will be used to create the 3D image object. Only GL texture
 *                       objects with an internal format that maps to appropriate OpenCL image channel order and data type can be used to create the 3D image object.
 * @param errcode_ret    will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero image object and {@code errcode_ret} is set to {@link CL10#CL_SUCCESS SUCCESS} if the image object is created successfully. Otherwise, it returns a {@code NULL} value
 *         with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context or was not created from a GL context.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if values specified in {@code flags} are not valid or if value specified in {@code texture_target} is not one of the
 *         values specified in the description of {@code texture_target}.</li>
 *         <li>{@link #CL_INVALID_MIP_LEVEL INVALID_MIP_LEVEL} if {@code miplevel} is less than the value of {@code level}<sub>base</sub> (for OpenGL implementations) or zero (for
 *         OpenGL ES implementations); or greater than the value of {@code q} (for both OpenGL and OpenGL ES).</li>
 *         <li>{@link #CL_INVALID_MIP_LEVEL INVALID_MIP_LEVEL} if {@code miplevel} is greather than zero and the OpenGL implementation does not support creating from non-zero mipmap
 *         levels.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if {@code texture} is not a GL texture object whose type matches {@code texture_target}, if the specified {@code miplevel}
 *         of texture is not defined, or if the width or height of the specified {@code miplevel} is zero.</li>
 *         <li>{@link CL10#CL_INVALID_IMAGE_FORMAT_DESCRIPTOR INVALID_IMAGE_FORMAT_DESCRIPTOR} if the OpenGL texture internal format does not map to a supported OpenCL image format.</li>
 *         <li>{@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if {@code texture} is a GL texture object created with a border width value greater than zero.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clCreateFromGLTexture3D CreateFromGLTexture3D}  */
	static public function clCreateFromGLTexture3D(context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,texture_target:Int,miplevel:Int,texture:Int,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/** Single value version of: {@link #clEnqueueAcquireGLObjects EnqueueAcquireGLObjects}  */
/** Alternative version of: {@link #clEnqueueAcquireGLObjects EnqueueAcquireGLObjects}  */
/**
 * Acquire OpenCL memory objects that have been created from OpenGL objects. These objects need to be acquired before they can be used by any OpenCL
 * commands queued to a command-queue. The OpenGL objects are acquired by the OpenCL context associated with command_queue and can therefore be used by all
 * command-queues associated with the OpenCL context.
 * 
 * <p>Prior to calling {@code clEnqueueAcquireGLObjects}, the application must ensure that any pending GL operations which access the objects specified in
 * {@code mem_objects} have completed. This may be accomplished portably by issuing and waiting for completion of a {@link GL11#glFinish} command on all GL
 * contexts with pending references to these objects. Implementations may offer more efficient synchronization methods; for example on some platforms
 * calling {@link GL11#glFlush} may be sufficient, or synchronization may be implicit within a thread, or there may be vendor-specific extensions that
 * enable placing a fence in the GL command stream and waiting for completion of that fence in the CL command queue. Note that no synchronization methods
 * other than {@link GL11#glFinish} are portable between OpenGL implementations at this time.</p>
 *
 * @param command_queue           a valid command-queue. All devices used to create the OpenCL context associated with {@code command_queue} must support acquiring shared CL/GL
 *                                objects. This constraint is enforced at context creation time.
 * @param num_objects             the number of memory objects to be acquired in {@code mem_objects}
 * @param mem_objects             a pointer to a list of CL memory objects that correspond to GL objects
 * @param num_events_in_wait_list the number of events in {@code event_wait_list}
 * @param event_wait_list         a list of events that need to complete before this particular command can be executed. If {@code event_wait_list} is {@code NULL}, then this particular command
 *                                does not wait on any event to complete. The events specified in {@code event_wait_list} act as synchronization points. The context associated with events in
 *                                {@code event_wait_list} and {@code command_queue} must be the same.
 * @param event                   Returns an event object that identifies this particular command and can be used to query or queue a wait for this particular command to complete.
 *                                {@code event} can be {@code NULL} in which case it will not be possible for the application to query the status of this command or queue a wait for this command to
 *                                complete. If the {@code event_wait_list} and the {@code event} arguments are not {@code NULL}, the event argument should not refer to an element of the
 *                                {@code event_wait_list} array.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. If {@code num_objects} is 0 and {@code mem_objects} is {@code NULL} the function does nothing and returns
 *         {@link CL10#CL_SUCCESS SUCCESS}. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code num_objects} is zero and {@code mem_objects} is not a {@code NULL} value or if {@code num_objects} &gt; 0 and
 *         {@code mem_objects} is {@code NULL}.</li>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if memory objects in {@code mem_objects} are not valid OpenCL memory objects.</li>
 *         <li>{@link CL10#CL_INVALID_COMMAND_QUEUE INVALID_COMMAND_QUEUE} if {@code command_queue} is not a valid command-queue.</li>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if context associated with {@code command_queue} was not created from an OpenGL context.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if memory objects in {@code mem_objects} have not been created from a GL object(s).</li>
 *         <li>{@link CL10#CL_INVALID_EVENT_WAIT_LIST INVALID_EVENT_WAIT_LIST} if {@code event_wait_list} is {@code NULL} and {@code num_events_in_wait_list} &gt; 0, or {@code event_wait_list} is not
 *         {@code NULL} and {@code num_events_in_wait_list} is 0, or if event objects in {@code event_wait_list} are not valid events.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clEnqueueAcquireGLObjects(command_queue:haxe.Int64,num_objects:Int,mem_objects:java.nio.ByteBuffer,num_events_in_wait_list:Int,event_wait_list:java.nio.ByteBuffer,event:java.nio.ByteBuffer):Int;
	@:overload(function (command_queue:haxe.Int64,mem_object:haxe.Int64,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (command_queue:haxe.Int64,mem_objects:org.lwjgl.PointerBuffer,event_wait_list:org.lwjgl.PointerBuffer,event:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clGetGLTextureInfo GetGLTextureInfo}  */
/** JNI method for {@link #clGetGLTextureInfo GetGLTextureInfo}  */
	static public function nclGetGLTextureInfo(memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:haxe.Int64,param_value_size_ret:haxe.Int64):Int {})
/** IntBuffer version of: {@link #clGetGLTextureInfo GetGLTextureInfo}  */
/** Alternative version of: {@link #clGetGLTextureInfo GetGLTextureInfo}  */
/**
 * Returns additional information about the GL texture object associated with {@code memobj}.
 *
 * @param memobj               
 * @param param_name           specifies what additional information about the GL texture object associated with {@code memobj} to query. One of:<br>{@link #CL_GL_TEXTURE_TARGET GL_TEXTURE_TARGET}, {@link #CL_GL_MIPMAP_LEVEL GL_MIPMAP_LEVEL}, {@link KHRGLMSAASharing#CL_GL_NUM_SAMPLES GL_NUM_SAMPLES}
 * @param param_value_size     the size in bytes of memory pointed to by {@code param_value}. This size must be &#x2265; size of return type. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value          a pointer to memory where the appropriate result being queried is returned. If {@code param_value} is {@code NULL}, it is ignored.
 * @param param_value_size_ret the actual size in bytes of data being queried by {@code param_value}. If {@code NULL}, it is ignored.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the function is executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code memobj} is not a valid OpenCL memory object.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if there is no GL texture object associated with {@code memobj}.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if {@code param_name} is not valid, or if size in bytes specified by {@code param_value_size} is &lt; size of return
 *         type and {@code param_value} is not {@code NULL}, or if {@code param_value} and {@code param_value_size_ret} are {@code NULL}.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
	static public function clGetGLTextureInfo(memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:java.nio.ByteBuffer):Int;
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value:java.nio.IntBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (memobj:haxe.Int64,param_name:Int,param_value_size:haxe.Int64,param_value:java.nio.ByteBuffer,param_value_size_ret:org.lwjgl.PointerBuffer):Int {})
/** Unsafe version of {@link #clCreateFromGLBuffer CreateFromGLBuffer}  */
/** JNI method for {@link #clCreateFromGLBuffer CreateFromGLBuffer}  */
	static public function nclCreateFromGLBuffer(context:haxe.Int64,flags:haxe.Int64,bufobj:Int,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,bufobj:Int,errcode_ret:haxe.Int64):haxe.Int64 {})
/**
 * Creates an OpenCL 2D image object from an OpenGL renderbuffer object.
 * 
 * <p>If the state of a GL renderbuffer object is modified through the GL API (i.e. changes to the dimensions or format used to represent pixels of the GL
 * renderbuffer using appropriate GL API calls such as {@link GL30#glRenderbufferStorage}) while there exists a corresponding CL image object, subsequent
 * use of the CL image object will result in undefined behavior.</p>
 * 
 * <p>The {@link CL10#clRetainMemObject RetainMemObject} and {@link CL10#clReleaseMemObject ReleaseMemObject} functions can be used to retain and release the image objects.</p>
 *
 * @param context      a valid OpenCL context created from an OpenGL context
 * @param flags        a bit-field that is used to specify usage information. One of:<br>{@link CL10#CL_MEM_READ_ONLY MEM_READ_ONLY}, {@link CL10#CL_MEM_WRITE_ONLY MEM_WRITE_ONLY}, {@link CL10#CL_MEM_READ_WRITE MEM_READ_WRITE}
 * @param renderbuffer the name of a GL renderbuffer object. The renderbuffer storage must be specified before the image object can be created. The {@code renderbuffer}
 *                     format and dimensions defined by OpenGL will be used to create the 2D image object. Only GL renderbuffers with internal formats that maps to
 *                     appropriate OpenCL image channel order and data type can be used to create the 2D image object.
 * @param errcode_ret  will return an appropriate error code. If {@code errcode_ret} is {@code NULL}, no error code is returned.
 *
 * @return a valid non-zero OpenCL image object and {@code errcode_ret} is set to {@link CL10#CL_SUCCESS SUCCESS} if the image object is created successfully. Otherwise, it returns a {@code NULL}
 *         value with one of the following error values returned in {@code errcode_ret}:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_CONTEXT INVALID_CONTEXT} if {@code context} is not a valid context or was not created from a GL context.</li>
 *         <li>{@link CL10#CL_INVALID_VALUE INVALID_VALUE} if values specified in {@code flags} are not valid.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if {@code renderbuffer} is not a GL renderbuffer object or if the width or height of {@code renderbuffer} is zero.</li>
 *         <li>{@link CL10#CL_INVALID_IMAGE_FORMAT_DESCRIPTOR INVALID_IMAGE_FORMAT_DESCRIPTOR} if the OpenGL renderbuffer internal format does not map to a supported OpenCL image format.</li>
 *         <li>{@link CL10#CL_INVALID_OPERATION INVALID_OPERATION} if {@code renderbuffer} is a multi-sample GL renderbuffer object.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clCreateFromGLRenderbuffer CreateFromGLRenderbuffer}  */
	static public function clCreateFromGLRenderbuffer(context:haxe.Int64,flags:haxe.Int64,renderbuffer:Int,errcode_ret:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,renderbuffer:Int,errcode_ret:java.nio.ByteBuffer):haxe.Int64 {})
/** Unsafe version of {@link #clEnqueueReleaseGLObjects EnqueueReleaseGLObjects}  */
/** JNI method for {@link #clEnqueueReleaseGLObjects EnqueueReleaseGLObjects}  */
	static public function nclEnqueueReleaseGLObjects(command_queue:haxe.Int64,num_objects:Int,mem_objects:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (command_queue:haxe.Int64,num_objects:Int,mem_objects:haxe.Int64,num_events_in_wait_list:Int,event_wait_list:haxe.Int64,event:haxe.Int64):Int {})
/** Returns the {@link CL10GL} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.CL10GL;
/** Unsafe version of {@link #clCreateFromGLRenderbuffer CreateFromGLRenderbuffer}  */
/** JNI method for {@link #clCreateFromGLRenderbuffer CreateFromGLRenderbuffer}  */
	static public function nclCreateFromGLRenderbuffer(context:haxe.Int64,flags:haxe.Int64,renderbuffer:Int,errcode_ret:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (context:haxe.Int64,flags:haxe.Int64,renderbuffer:Int,errcode_ret:haxe.Int64):haxe.Int64 {})
/**
 * Queries the OpenGL object used to create the OpenCL memory object and information about the object type i.e. whether it is a texture, renderbuffer or
 * buffer object.
 *
 * @param memobj         the memory object being queried
 * @param gl_object_type returns the type of GL object attached to {@code memobj}. If {@code gl_object_type} is {@code NULL}, it is ignored. One of:<br>{@link #CL_GL_OBJECT_BUFFER GL_OBJECT_BUFFER}, {@link #CL_GL_OBJECT_TEXTURE2D GL_OBJECT_TEXTURE2D}, {@link #CL_GL_OBJECT_TEXTURE3D GL_OBJECT_TEXTURE3D}, {@link #CL_GL_OBJECT_RENDERBUFFER GL_OBJECT_RENDERBUFFER}, {@link CL12GL#CL_GL_OBJECT_TEXTURE_2D_ARRAY GL_OBJECT_TEXTURE_2D_ARRAY}, {@link CL12GL#CL_GL_OBJECT_TEXTURE1D GL_OBJECT_TEXTURE1D}, {@link CL12GL#CL_GL_OBJECT_TEXTURE1D_ARRAY GL_OBJECT_TEXTURE1D_ARRAY}, {@link CL12GL#CL_GL_OBJECT_TEXTURE_BUFFER GL_OBJECT_TEXTURE_BUFFER}
 * @param gl_object_name the GL object name used to create {@code memobj}. If {@code gl_object_name} is {@code NULL}, it is ignored.
 *
 * @return {@link CL10#CL_SUCCESS SUCCESS} if the call was executed successfully. Otherwise, it returns one of the following errors:
 *         <ul>
 *         <li>{@link CL10#CL_INVALID_MEM_OBJECT INVALID_MEM_OBJECT} if {@code memobj} is not a valid OpenCL memory object.</li>
 *         <li>{@link #CL_INVALID_GL_OBJECT INVALID_GL_OBJECT} if there is no GL object associated with {@code memobj}.</li>
 *         <li>{@link CL10#CL_OUT_OF_RESOURCES OUT_OF_RESOURCES} if there is a failure to allocate resources required by the OpenCL implementation on the device.</li>
 *         <li>{@link CL10#CL_OUT_OF_HOST_MEMORY OUT_OF_HOST_MEMORY} if there is a failure to allocate resources required by the OpenCL implementation on the host.</li>
 *         </ul>
 */
/** Alternative version of: {@link #clGetGLObjectInfo GetGLObjectInfo}  */
	static public function clGetGLObjectInfo(memobj:haxe.Int64,gl_object_type:java.nio.IntBuffer,gl_object_name:java.nio.IntBuffer):Int;
	@:overload(function (memobj:haxe.Int64,gl_object_type:java.nio.ByteBuffer,gl_object_name:java.nio.ByteBuffer):Int {})

}
