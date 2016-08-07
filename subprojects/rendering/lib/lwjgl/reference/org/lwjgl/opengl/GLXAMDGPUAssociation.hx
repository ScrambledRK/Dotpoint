package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXAMDGPUAssociation")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/AMD/glx_gpu_association.txt">GLX_AMD_gpu_association</a> extension.
 * 
 * <p>There currently is no way for applications to efficiently use GPU resources in systems that contain more than one GPU. Vendors have provided methods
 * that attempt to split the workload for an application among the available GPU resources. This has proven to be very inefficient because most
 * applications were never written with these sorts of optimizations in mind.</p>
 * 
 * <p>This extension provides a mechanism for applications to explicitly use the GPU resources on a given system individually. By providing this
 * functionality, a driver allows applications to make appropriate decisions regarding where and when to distribute rendering tasks.</p>
 * 
 * <p>Requires {@link GL15 OpenGL 1.5}, {@link GLX13 GLX 1.3}, <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_object.txt">EXT_framebuffer_object</a> and {@link GLXARBGetProcAddress GLX_ARB_get_proc_address}.</p>
 */
extern class GLXAMDGPUAssociation 
{
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_VENDOR_AMD:Int = 7936;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_RENDERER_STRING_AMD:Int = 7937;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_OPENGL_VERSION_STRING_AMD:Int = 7938;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_FASTEST_TARGET_GPUS_AMD:Int = 8610;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_RAM_AMD:Int = 8611;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_CLOCK_AMD:Int = 8612;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_NUM_PIPES_AMD:Int = 8613;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_NUM_SIMD_AMD:Int = 8614;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_NUM_RB_AMD:Int = 8615;
/** Accepted by the {@code property} parameter of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}.  */
	inline static public var GLX_GPU_NUM_SPI_AMD:Int = 8616;
/** Function address.  */
	public var BlitContextFramebufferAMD:haxe.Int64;
/** Function address.  */
	public var CreateAssociatedContextAMD:haxe.Int64;
/** Function address.  */
	public var CreateAssociatedContextAttribsAMD:haxe.Int64;
/** Function address.  */
	public var DeleteAssociatedContextAMD:haxe.Int64;
/** Function address.  */
	public var GetContextGPUIDAMD:haxe.Int64;
/** Function address.  */
	public var GetCurrentAssociatedContextAMD:haxe.Int64;
/** Function address.  */
	public var GetGPUIDsAMD:haxe.Int64;
/** Function address.  */
	public var GetGPUInfoAMD:haxe.Int64;
/** Function address.  */
	public var MakeAssociatedContextCurrentAMD:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glXCreateAssociatedContextAMD CreateAssociatedContextAMD}  */
	static public function nglXCreateAssociatedContextAMD(id:Int,share_list:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Creates an associated context.
 *
 * @param id         
 * @param share_list 
 */
	static public function glXCreateAssociatedContextAMD(id:Int,share_list:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glXGetContextGPUIDAMD GetContextGPUIDAMD}  */
	static public function nglXGetContextGPUIDAMD(ctx:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Makes an associated context current in the current thread.
 *
 * @param ctx the GLXContext
 */
	static public function glXMakeAssociatedContextCurrentAMD(ctx:haxe.Int64):Int;
/**
 * Determines which GPU a context is attached to.
 *
 * @param ctx the GLXContext
 */
	static public function glXGetContextGPUIDAMD(ctx:haxe.Int64):Int;
/**
 * 
 *
 * @param dstCtx 
 * @param srcX0  
 * @param srcY0  
 * @param srcX1  
 * @param srcY1  
 * @param dstX0  
 * @param dstY0  
 * @param dstX1  
 * @param dstY1  
 * @param mask   
 * @param filter 
 */
	static public function glXBlitContextFramebufferAMD(dstCtx:haxe.Int64,srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int):Void;
/** JNI method for {@link #glXBlitContextFramebufferAMD BlitContextFramebufferAMD}  */
	static public function nglXBlitContextFramebufferAMD(dstCtx:haxe.Int64,srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glXCreateAssociatedContextAttribsAMD CreateAssociatedContextAttribsAMD}  */
/** JNI method for {@link #glXCreateAssociatedContextAttribsAMD CreateAssociatedContextAttribsAMD}  */
	static public function nglXCreateAssociatedContextAttribsAMD(id:Int,share_context:haxe.Int64,attribList:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (id:Int,share_context:haxe.Int64,attribList:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #glXGetCurrentAssociatedContextAMD GetCurrentAssociatedContextAMD}  */
	static public function nglXGetCurrentAssociatedContextAMD(__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Queries the IDs for available GPUs.
 *
 * @param maxCount 
 * @param ids      
 */
	static public function glXGetGPUIDsAMD(maxCount:Int,ids:Int):Int;
/**
 * Creates an associated context and requests a specific GL version.
 *
 * @param id            
 * @param share_context 
 * @param attribList    
 */
/** Alternative version of: {@link #glXCreateAssociatedContextAttribsAMD CreateAssociatedContextAttribsAMD}  */
	static public function glXCreateAssociatedContextAttribsAMD(id:Int,share_context:haxe.Int64,attribList:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (id:Int,share_context:haxe.Int64,attribList:java.nio.ByteBuffer):haxe.Int64 {})
/** Queries the crrent associated context.  */
	static public function glXGetCurrentAssociatedContextAMD():haxe.Int64;
/** Unsafe version of {@link #glXGetGPUInfoAMD GetGPUInfoAMD}  */
/** JNI method for {@link #glXGetGPUInfoAMD GetGPUInfoAMD}  */
	static public function nglXGetGPUInfoAMD(id:Int,property:Int,dataType:Int,size:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (id:Int,property:Int,dataType:Int,size:Int,data:haxe.Int64):Int {})
/** JNI method for {@link #glXDeleteAssociatedContextAMD DeleteAssociatedContextAMD}  */
	static public function nglXDeleteAssociatedContextAMD(ctx:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Deletes an associated context.
 *
 * @param ctx the GLXContext
 */
	static public function glXDeleteAssociatedContextAMD(ctx:haxe.Int64):Int;
/** Returns the {@link GLXAMDGPUAssociation} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXAMDGPUAssociation;
/** JNI method for {@link #glXMakeAssociatedContextCurrentAMD MakeAssociatedContextCurrentAMD}  */
	static public function nglXMakeAssociatedContextCurrentAMD(ctx:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #glXGetGPUIDsAMD GetGPUIDsAMD}  */
	static public function nglXGetGPUIDsAMD(maxCount:Int,ids:Int,__functionAddress:haxe.Int64):Int;
/**
 * Queries GPU properties.
 *
 * @param id       
 * @param property one of:<br>{@link #GLX_GPU_VENDOR_AMD GPU_VENDOR_AMD}, {@link #GLX_GPU_RENDERER_STRING_AMD GPU_RENDERER_STRING_AMD}, {@link #GLX_GPU_OPENGL_VERSION_STRING_AMD GPU_OPENGL_VERSION_STRING_AMD}, {@link #GLX_GPU_FASTEST_TARGET_GPUS_AMD GPU_FASTEST_TARGET_GPUS_AMD}, {@link #GLX_GPU_RAM_AMD GPU_RAM_AMD}, {@link #GLX_GPU_CLOCK_AMD GPU_CLOCK_AMD}, {@link #GLX_GPU_NUM_PIPES_AMD GPU_NUM_PIPES_AMD}, {@link #GLX_GPU_NUM_SIMD_AMD GPU_NUM_SIMD_AMD}, {@link #GLX_GPU_NUM_RB_AMD GPU_NUM_RB_AMD}, {@link #GLX_GPU_NUM_SPI_AMD GPU_NUM_SPI_AMD}
 * @param dataType 
 * @param size     
 * @param data     
 */
	static public function glXGetGPUInfoAMD(id:Int,property:Int,dataType:Int,size:Int,data:java.nio.ByteBuffer):Int;

}
