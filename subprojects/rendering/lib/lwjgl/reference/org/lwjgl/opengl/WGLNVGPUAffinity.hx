package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLNVGPUAffinity")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/gpu_affinity.txt">WGL_NV_gpu_affinity</a> extension.
 * 
 * <p>On systems with more than one GPU it is desirable to be able to select which GPU(s) in the system become the target for OpenGL rendering commands. This
 * extension introduces the concept of a GPU affinity mask. OpenGL rendering commands are directed to the GPU(s) specified by the affinity mask. GPU
 * affinity is immutable. Once set, it cannot be changed.</p>
 * 
 * <p>This extension also introduces the concept called affinity-DC. An affinity-DC is a device context with a GPU affinity mask embedded in it. This
 * restricts the device context to only allow OpenGL commands to be sent to the GPU(s) in the affinity mask.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string}.</p>
 */
extern class WGLNVGPUAffinity 
{
/** New error code set by wglShareLists, wglMakeCurrent and {@link WGLARBMakeCurrentRead#wglMakeContextCurrentARB MakeContextCurrentARB}.  */
	inline static public var ERROR_INCOMPATIBLE_AFFINITY_MASKS_NV:Int = 8400;
/** New error code set by {@link WGL#wglMakeCurrent MakeCurrent} and {@link WGLARBMakeCurrentRead#wglMakeContextCurrentARB MakeContextCurrentARB}.  */
	inline static public var WGL_ERROR_MISSING_AFFINITY_MASK_NV:Int = 8401;
/** Function address.  */
	public var EnumGpusNV:haxe.Int64;
/** Function address.  */
	public var EnumGpuDevicesNV:haxe.Int64;
/** Function address.  */
	public var CreateAffinityDCNV:haxe.Int64;
/** Function address.  */
	public var EnumGpusFromAffinityDCNV:haxe.Int64;
/** Function address.  */
	public var DeleteDCNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #wglDeleteDCNV DeleteDCNV}  */
	static public function nwglDeleteDCNV(hdc:haxe.Int64,__functionAddress:haxe.Int64):Int;
/**
 * Creates an affinity-DC. Affinity-DCs, a new type of DC, can be used to direct OpenGL commands to a specific GPU or set of GPUs. An affinity-DC is a
 * device context with a GPU affinity mask embedded in it. This restricts the device context to only allow OpenGL commands to be sent to the GPU(s) in the
 * affinity mask. An affinity-DC can be created directly, using the new function {@code wglCreateAffinityDCNV} and also indirectly by calling
 * {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} followed by {@link WGLARBPbuffer#wglGetPbufferDCARB GetPbufferDCARB}.
 * 
 * <p>If successful, the function returns an affinity-DC handle. If it fails, NULL will be returned.</p>
 *
 * @param gpuList a NULL-terminated array of GPU handles to which the affinity-DC will be restricted
 */
/** Alternative version of: {@link #wglCreateAffinityDCNV CreateAffinityDCNV}  */
	static public function wglCreateAffinityDCNV(gpuList:org.lwjgl.PointerBuffer):haxe.Int64;
	@:overload(function (gpuList:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Retrieve information about the display devices supported by a GPU.
 *
 * @param gpu         a handle to the GPU to query
 * @param deviceIndex an index value that specifies a display device, supported by {@code gpu}, to query. The first display device will be index 0.
 * @param gpuDevice   a {@link GPU_DEVICE} structure which will receive information about the display device at index {@code deviceIndex}.
 */
	static public function wglEnumGpuDevicesNV(gpu:haxe.Int64,deviceIndex:Int,gpuDevice:java.nio.ByteBuffer):Int;
/** Unsafe version of {@link #wglCreateAffinityDCNV CreateAffinityDCNV}  */
/** JNI method for {@link #wglCreateAffinityDCNV CreateAffinityDCNV}  */
	static public function nwglCreateAffinityDCNV(gpuList:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (gpuList:haxe.Int64):haxe.Int64 {})
/**
 * Returns the handles for all GPUs in a system.
 * 
 * <p>By looping over {@code wglEnumGpusNV} and incrementing {@code gpuIndex}, starting at index 0, all GPU handles can be queried. If the function succeeds,
 * the return value is TRUE. If the function fails, the return value is FALSE and {@code gpu} will be unmodified. The function fails if {@code gpuIndex} is
 * greater or equal than the number of GPUs supported by the system.</p>
 *
 * @param gpuIndex an index value that specifies a GPU
 * @param gpu      returns a handle for GPU number {@code gpuIndex}. The first GPU will be index 0.
 */
/** Alternative version of: {@link #wglEnumGpusNV EnumGpusNV}  */
	static public function wglEnumGpusNV(gpuIndex:Int,gpu:org.lwjgl.PointerBuffer):Int;
	@:overload(function (gpuIndex:Int,gpu:java.nio.ByteBuffer):Int {})
/** Unsafe version of {@link #wglEnumGpusFromAffinityDCNV EnumGpusFromAffinityDCNV}  */
/** JNI method for {@link #wglEnumGpusFromAffinityDCNV EnumGpusFromAffinityDCNV}  */
	static public function nwglEnumGpusFromAffinityDCNV(affinityDC:haxe.Int64,gpuIndex:Int,gpu:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (affinityDC:haxe.Int64,gpuIndex:Int,gpu:haxe.Int64):Int {})
/** Unsafe version of {@link #wglEnumGpuDevicesNV EnumGpuDevicesNV}  */
/** JNI method for {@link #wglEnumGpuDevicesNV EnumGpuDevicesNV}  */
	static public function nwglEnumGpuDevicesNV(gpu:haxe.Int64,deviceIndex:Int,gpuDevice:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (gpu:haxe.Int64,deviceIndex:Int,gpuDevice:haxe.Int64):Int {})
/** Unsafe version of {@link #wglEnumGpusNV EnumGpusNV}  */
/** JNI method for {@link #wglEnumGpusNV EnumGpusNV}  */
	static public function nwglEnumGpusNV(gpuIndex:Int,gpu:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (gpuIndex:Int,gpu:haxe.Int64):Int {})
/**
 * Retrieves a list of GPU handles that make up the affinity-mask of an affinity-DC.
 * 
 * <p>By looping over {@code wglEnumGpusFromAffinityDCNV} and incrementing {@code gpuIndex}, starting at index 0, all GPU handles associated with the DC can
 * be queried. If the function succeeds, the return value is TRUE. If the function fails, the return value is FALSE and {@code gpu} will be unmodified. The
 * function fails if {@code gpuIndex} is greater or equal than the number of GPUs associated with {@code affinityDC}.</p>
 *
 * @param affinityDC a handle of the affinity-DC to query
 * @param gpuIndex   an index value of the GPU handle in the affinity mask of {@code affinityDC} to query
 * @param gpu        returns a handle for  GPU number {@code gpuIndex}. The first GPU will be at index 0.
 */
/** Alternative version of: {@link #wglEnumGpusFromAffinityDCNV EnumGpusFromAffinityDCNV}  */
	static public function wglEnumGpusFromAffinityDCNV(affinityDC:haxe.Int64,gpuIndex:Int,gpu:org.lwjgl.PointerBuffer):Int;
	@:overload(function (affinityDC:haxe.Int64,gpuIndex:Int,gpu:java.nio.ByteBuffer):Int {})
/**
 * Deletes an affinity-DC.
 *
 * @param hdc a handle of an affinity-DC to delete
 */
	static public function wglDeleteDCNV(hdc:haxe.Int64):Int;
/** Returns the {@link WGLNVGPUAffinity} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLNVGPUAffinity;

}
