package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLAMDGPUAssociation")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/AMD/wgl_gpu_association.txt">WGL_AMD_gpu_association</a> extension.
 * 
 * <p>There currently is no way for applications to efficiently use GPU resources in systems that contain more than one GPU. Vendors have provided methods
 * that attempt to split the workload for an application among the available GPU resources. This has proven to be very inefficient because most
 * applications were never written with these sorts of optimizations in mind.</p>
 * 
 * <p>This extension provides a mechanism for applications to explicitly use the GPU resources on a given system individually. By providing this
 * functionality, a driver allows applications to make appropriate decisions regarding where and when to distribute rendering tasks.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string} and <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_object.txt">EXT_framebuffer_object</a>.</p>
 */
extern class WGLAMDGPUAssociation 
{
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_VENDOR_AMD:Int = 7936;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_RENDERER_STRING_AMD:Int = 7937;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_OPENGL_VERSION_STRING_AMD:Int = 7938;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_FASTEST_TARGET_GPUS_AMD:Int = 8610;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_RAM_AMD:Int = 8611;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_CLOCK_AMD:Int = 8612;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_NUM_PIPES_AMD:Int = 8613;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_NUM_SIMD_AMD:Int = 8614;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_NUM_RB_AMD:Int = 8615;
/** Accepted by the {@code property} parameter of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var WGL_GPU_NUM_SPI_AMD:Int = 8616;
/** Function address.  */
	public var GetGPUIDsAMD:haxe.Int64;
/** Function address.  */
	public var GetGPUInfoAMD:haxe.Int64;
/** Function address.  */
	public var GetContextGPUIDAMD:haxe.Int64;
/** Function address.  */
	public var CreateAssociatedContextAMD:haxe.Int64;
/** Function address.  */
	public var CreateAssociatedContextAttribsAMD:haxe.Int64;
/** Function address.  */
	public var DeleteAssociatedContextAMD:haxe.Int64;
/** Function address.  */
	public var MakeAssociatedContextCurrentAMD:haxe.Int64;
/** Function address.  */
	public var GetCurrentAssociatedContextAMD:haxe.Int64;
/** Function address.  */
	public var BlitContextFramebufferAMD:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #wglGetGPUIDsAMD GetGPUIDsAMD}  */
/** JNI method for {@link #wglGetGPUIDsAMD GetGPUIDsAMD}  */
	static public function nwglGetGPUIDsAMD(maxCount:Int,ids:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (maxCount:Int,ids:haxe.Int64):Int {})
/** Unsafe version of {@link #wglGetGPUInfoAMD GetGPUInfoAMD}  */
/** JNI method for {@link #wglGetGPUInfoAMD GetGPUInfoAMD}  */
	static public function nwglGetGPUInfoAMD(id:Int,property:Int,dataType:Int,size:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (id:Int,property:Int,dataType:Int,size:Int,data:haxe.Int64):Int {})
/**
 * Blits data from one context to another. This facilitates high performance data communication between multiple contexts.
 *
 * @param dstCtx the context handle for the write context
 * @param srcX0  the source x<sub>0</sub> coordinate
 * @param srcY0  the source Y<sub>0</sub> coordinate
 * @param srcX1  the source X<sub>1</sub> coordinate
 * @param srcY1  the source Y<sub>1</sub> coordinate
 * @param dstX0  the destination X<sub>0</sub> coordinate
 * @param dstY0  the destination Y<sub>0</sub> coordinate
 * @param dstX1  the destination X<sub>1</sub> coordinate
 * @param dstY1  the destination Y<sub>1</sub> coordinate
 * @param mask   the bitwise OR of a number of values indicating which buffers are to be copied. One or more of:<br>{@link GL11#GL_COLOR_BUFFER_BIT}, {@link GL11#GL_DEPTH_BUFFER_BIT}, {@link GL11#GL_STENCIL_BUFFER_BIT}
 * @param filter the interpolation method to apply if the image is stretched. One of:<br>{@link GL11#GL_LINEAR}, {@link GL11#GL_NEAREST}
 */
	static public function wglBlitContextFramebufferAMD(dstCtx:haxe.Int64,srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int):Void;
/** Alternative version of: {@link #wglGetGPUIDsAMD GetGPUIDsAMD}  */
/**
 * Returns the IDs for available GPUs.
 * 
 * <p>If the function succeeds, the return value is the number of total GPUs available. The value 0 is returned if no GPUs are available or if the call has
 * failed. The ID 0 is reserved and will not be retuned as a valid GPU ID. If the array {@code ids} is NULL, the function will only return the total number
 * of GPUs. {@code ids} will be tightly packed with no 0 values between valid ids.</p>
 *
 * @param maxCount the max number of IDs that can be returned
 * @param ids      the array of returned IDs
 */
	static public function wglGetGPUIDsAMD(maxCount:Int,ids:java.nio.ByteBuffer):Int;
	@:overload(function (ids:java.nio.IntBuffer):Int {})
/** Unsafe version of {@link #wglCreateAssociatedContextAttribsAMD CreateAssociatedContextAttribsAMD}  */
/** JNI method for {@link #wglCreateAssociatedContextAttribsAMD CreateAssociatedContextAttribsAMD}  */
	static public function nwglCreateAssociatedContextAttribsAMD(id:Int,shareContext:haxe.Int64,attribList:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (id:Int,shareContext:haxe.Int64,attribList:haxe.Int64):haxe.Int64 {})
/**
 * Deletes an associated context. An associated context cannot be deleted by calling {@link WGL#wglDeleteContext DeleteContext}.
 *
 * @param hglrc a valid associated context created by calling {@link #wglCreateAssociatedContextAMD CreateAssociatedContextAMD}
 */
	static public function wglDeleteAssociatedContextAMD(hglrc:haxe.Int64):Int;
/** Returns the current associated context in the current thread.  */
	static public function wglGetCurrentAssociatedContextAMD():haxe.Int64;
/**
 * Determine which GPU a context is attached to.
 * 
 * <p>Unassociated contexts are created by calling {@link WGL#wglCreateContext CreateContext}. Although these contexts are unassociated, their use will still be tied to a single
 * GPU in most cases. For this reason it is advantageous to be able to query the GPU an existing unassociated context resides on. If multiple GPUs are
 * available, it would be undesirable to use one for rendering to visible surfaces and then chose the same one for off-screen rendering.</p>
 *
 * @param hglrc the context for which the GPU id will be returned
 */
	static public function wglGetContextGPUIDAMD(hglrc:haxe.Int64):Int;
/** JNI method for {@link #wglBlitContextFramebufferAMD BlitContextFramebufferAMD}  */
	static public function nwglBlitContextFramebufferAMD(dstCtx:haxe.Int64,srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #wglDeleteAssociatedContextAMD DeleteAssociatedContextAMD}  */
	static public function nwglDeleteAssociatedContextAMD(hglrc:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Create an associated context with a specific GL version.
 * 
 * <p>All capabilities and limitations of {@link WGLARBCreateContext#wglCreateContextAttribsARB CreateContextAttribsARB} apply to {@code CreateAssociatedContextAttribsAMD}.</p>
 *
 * @param id           a valid GPU id
 * @param shareContext must either be NULL or that of an associated context created with the the same GPU ID as {@code id}
 * @param attribList   a 0-terminated list of attributes for the context
 */
/** Alternative version of: {@link #wglCreateAssociatedContextAttribsAMD CreateAssociatedContextAttribsAMD}  */
	static public function wglCreateAssociatedContextAttribsAMD(id:Int,shareContext:haxe.Int64,attribList:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (id:Int,shareContext:haxe.Int64,attribList:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Makes an associated context current in the current thread.
 *
 * @param hglrc a context handle created by calling {@link #wglCreateAssociatedContextAMD CreateAssociatedContextAMD}
 */
	static public function wglMakeAssociatedContextCurrentAMD(hglrc:haxe.Int64):Int;
/** JNI method for {@link #wglGetCurrentAssociatedContextAMD GetCurrentAssociatedContextAMD}  */
	static public function nwglGetCurrentAssociatedContextAMD(__functionAddress:haxe.Int64):haxe.Int64;
/** JNI method for {@link #wglCreateAssociatedContextAMD CreateAssociatedContextAMD}  */
	static public function nwglCreateAssociatedContextAMD(id:Int,__functionAddress:haxe.Int64):haxe.Int64;
/** JNI method for {@link #wglMakeAssociatedContextCurrentAMD MakeAssociatedContextCurrentAMD}  */
	static public function nwglMakeAssociatedContextCurrentAMD(hglrc:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Creates an associated context. Upon successful creation, no pixel format is tied to an associated context.
 *
 * @param id a valid GPU id
 */
	static public function wglCreateAssociatedContextAMD(id:Int):haxe.Int64;
/** Returns the {@link WGLAMDGPUAssociation} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLAMDGPUAssociation;
/** JNI method for {@link #wglGetContextGPUIDAMD GetContextGPUIDAMD}  */
	static public function nwglGetContextGPUIDAMD(hglrc:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** GL_UNSIGNED_BYTE version of: {@link #wglGetGPUInfoAMD GetGPUInfoAMD}  */
/** GL_UNSIGNED_INT version of: {@link #wglGetGPUInfoAMD GetGPUInfoAMD}  */
/** Alternative version of: {@link #wglGetGPUInfoAMD GetGPUInfoAMD}  */
/**
 * Each GPU in a system may have different properties, performance characteristics and different supported OpenGL versions. Use this function to determine
 * which GPU is best suited for a specific task.
 * 
 * <p>For a string, {@code size} will be the number of characters allocated and will include NULL termination. For arrays of type GL_UNSIGNED_INT, GL_INT, and
 * GL_FLOAT {@code size} will be the array depth. If the function succeeds, the number of values written will be returned. If the number of values written
 * is equal to {@code size}, the query should be repeated with a larger {@code data} buffer. Strings should be queried using the GL_UNSIGNED_BYTE type,
 * are UTF-8 encoded and will be NULL terminated. If the function fails, -1 will be returned.</p>
 *
 * @param id       a GPU id obtained from calling {@link #wglGetGPUIDsAMD GetGPUIDsAMD}
 * @param property the information being queried. One of:<br>{@link #WGL_GPU_VENDOR_AMD GPU_VENDOR_AMD}, {@link #WGL_GPU_RENDERER_STRING_AMD GPU_RENDERER_STRING_AMD}, {@link #WGL_GPU_OPENGL_VERSION_STRING_AMD GPU_OPENGL_VERSION_STRING_AMD}, {@link #WGL_GPU_FASTEST_TARGET_GPUS_AMD GPU_FASTEST_TARGET_GPUS_AMD}, {@link #WGL_GPU_RAM_AMD GPU_RAM_AMD}, {@link #WGL_GPU_CLOCK_AMD GPU_CLOCK_AMD}, {@link #WGL_GPU_NUM_PIPES_AMD GPU_NUM_PIPES_AMD}, {@link #WGL_GPU_NUM_SIMD_AMD GPU_NUM_SIMD_AMD}, {@link #WGL_GPU_NUM_RB_AMD GPU_NUM_RB_AMD}, {@link #WGL_GPU_NUM_SPI_AMD GPU_NUM_SPI_AMD}
 * @param dataType the data type to be returned. One of:<br>{@link GL11#GL_UNSIGNED_INT}, {@link GL11#GL_INT}, {@link GL11#GL_FLOAT}, {@link GL11#GL_UNSIGNED_BYTE}
 * @param size     the size of the {@code data} buffer
 * @param data     the buffer which will be filled with the requested information
 */
	static public function wglGetGPUInfoAMD(id:Int,property:Int,dataType:Int,size:Int,data:java.nio.ByteBuffer):Int;
	@:overload(function (id:Int,property:Int,data:java.nio.ByteBuffer):Int {})
	@:overload(function (id:Int,property:Int,data:java.nio.IntBuffer):Int {})
	@:overload(function (id:Int,property:Int,dataType:Int,data:java.nio.ByteBuffer):Int {})

}
