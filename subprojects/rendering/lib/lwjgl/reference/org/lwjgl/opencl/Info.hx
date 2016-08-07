package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.Info")
@:final
/**
 * This class provides methods that can be used to query information about OpenCL objects. These methods are similar to the corresponding
 * {@code clGet&lt;Type&gt;Info} function for each object type, except that only a single value is returned. Which one of these methods should be used
 * depends on the type of the information being queried.
 */
extern class Info 
{
/** PointBuffer version of: {@link CL10#clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
	static public function clGetKernelWorkGroupInfoPointers(kernel:haxe.Int64,device:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** Single int value version of: {@link CL10GL#clGetGLTextureInfo GetGLTextureInfo}  */
	static public function clGetGLTextureInfoInt(memobj:haxe.Int64,param_name:Int):Int;
/** PointBuffer version of: {@link CL10#clGetSamplerInfo GetSamplerInfo}  */
	static public function clGetSamplerInfoPointers(sampler:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** PointBuffer version of: {@link CL10#clGetEventInfo GetEventInfo}  */
	static public function clGetEventInfoPointers(event:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** Single pointer value version of: {@link CL10#clGetProgramBuildInfo GetProgramBuildInfo}  */
	static public function clGetProgramBuildInfoPointer(program:haxe.Int64,device:haxe.Int64,param_name:Int):haxe.Int64;
/** Single boolean value version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
	static public function clGetDeviceInfoBoolean(device:haxe.Int64,param_name:Int):Bool;
/** Single boolean value version of: {@link CL10#clGetSamplerInfo GetSamplerInfo}  */
	static public function clGetSamplerInfoBoolean(sampler:haxe.Int64,param_name:Int):Bool;
/** UTF-8 string version of: {@link CL12#clGetKernelArgInfo GetKernelArgInfo}  */
/** UTF-8 string with explicit length version of: {@link CL12#clGetKernelArgInfo GetKernelArgInfo}  */
	static public function clGetKernelArgInfoStringUTF8(kernel:haxe.Int64,arg_indx:Int,param_name:Int,param_value_size:Int):String;
	@:overload(function (kernel:haxe.Int64,arg_indx:Int,param_name:Int):String {})
/** Single int value version of: {@link CL10#clGetImageInfo GetImageInfo}  */
	static public function clGetImageInfoInt(image:haxe.Int64,param_name:Int):Int;
/** Single pointer value version of: {@link CL10#clGetMemObjectInfo GetMemObjectInfo}  */
	static public function clGetMemObjectInfoPointer(memobj:haxe.Int64,param_name:Int):haxe.Int64;
/** Single int value version of: {@link CL10#clGetKernelInfo GetKernelInfo}  */
	static public function clGetKernelInfoInt(kernel:haxe.Int64,param_name:Int):Int;
/** Single long value version of: {@link CL10#clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
	static public function clGetKernelWorkGroupInfoLong(kernel:haxe.Int64,device:haxe.Int64,param_name:Int):haxe.Int64;
/** PointBuffer version of: {@link CL10#clGetContextInfo GetContextInfo}  */
	static public function clGetContextInfoPointers(context:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** Single int value version of: {@link CL10#clGetProgramBuildInfo GetProgramBuildInfo}  */
	static public function clGetProgramBuildInfoInt(program:haxe.Int64,device:haxe.Int64,param_name:Int):Int;
/** String version of: {@link CL10#clGetKernelInfo GetKernelInfo}  */
/** String with explicit length version of: {@link CL10#clGetKernelInfo GetKernelInfo} */
	static public function clGetKernelInfoStringASCII(kernel:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (kernel:haxe.Int64,param_name:Int):String {})
/** PointBuffer version of: {@link CL10#clGetMemObjectInfo GetMemObjectInfo}  */
	static public function clGetMemObjectInfoPointers(memobj:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** Single int value version of: {@link CL12#clGetKernelArgInfo GetKernelArgInfo}  */
	static public function clGetKernelArgInfoInt(kernel:haxe.Int64,arg_indx:Int,param_name:Int):Int;
/** String version of: {@link CL10#clGetPlatformInfo GetPlatformInfo}  */
/** String with explicit length version of: {@link CL10#clGetPlatformInfo GetPlatformInfo} */
	static public function clGetPlatformInfoStringASCII(platform:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (platform:haxe.Int64,param_name:Int):String {})
/** UTF-8 string version of: {@link CL10#clGetProgramBuildInfo GetProgramBuildInfo}  */
/** UTF-8 string with explicit length version of: {@link CL10#clGetProgramBuildInfo GetProgramBuildInfo}  */
	static public function clGetProgramBuildInfoStringUTF8(program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (program:haxe.Int64,device:haxe.Int64,param_name:Int):String {})
/** Single int value version of: {@link CL10#clGetContextInfo GetContextInfo}  */
	static public function clGetContextInfoInt(context:haxe.Int64,param_name:Int):Int;
/** Single int value version of: {@link CL10#clGetProgramInfo GetProgramInfo}  */
	static public function clGetProgramInfoInt(program:haxe.Int64,param_name:Int):Int;
/** Single pointer value version of: {@link CL10#clGetSamplerInfo GetSamplerInfo}  */
	static public function clGetSamplerInfoPointer(sampler:haxe.Int64,param_name:Int):haxe.Int64;
/** String version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
/** String with explicit length version of: {@link CL10#clGetDeviceInfo GetDeviceInfo} */
	static public function clGetDeviceInfoStringASCII(device:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (device:haxe.Int64,param_name:Int):String {})
/** PointBuffer version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
	static public function clGetDeviceInfoPointers(device:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** PointBuffer version of: {@link CL10#clGetCommandQueueInfo GetCommandQueueInfo}  */
	static public function clGetCommandQueueInfoPointers(command_queue:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** UTF-8 string version of: {@link CL10#clGetProgramInfo GetProgramInfo}  */
/** UTF-8 string with explicit length version of: {@link CL10#clGetProgramInfo GetProgramInfo}  */
	static public function clGetProgramInfoStringUTF8(program:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (program:haxe.Int64,param_name:Int):String {})
/** UTF-8 string version of: {@link CL10#clGetKernelInfo GetKernelInfo}  */
/** UTF-8 string with explicit length version of: {@link CL10#clGetKernelInfo GetKernelInfo}  */
	static public function clGetKernelInfoStringUTF8(kernel:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (kernel:haxe.Int64,param_name:Int):String {})
/** Single pointer value version of: {@link CL10#clGetImageInfo GetImageInfo}  */
	static public function clGetImageInfoPointer(image:haxe.Int64,param_name:Int):haxe.Int64;
/** String version of: {@link CL12#clGetKernelArgInfo GetKernelArgInfo}  */
/** String with explicit length version of: {@link CL12#clGetKernelArgInfo GetKernelArgInfo} */
	static public function clGetKernelArgInfoStringASCII(kernel:haxe.Int64,arg_indx:Int,param_name:Int,param_value_size:Int):String;
	@:overload(function (kernel:haxe.Int64,arg_indx:Int,param_name:Int):String {})
/** PointBuffer version of: {@link CL10#clGetProgramInfo GetProgramInfo}  */
	static public function clGetProgramInfoPointers(program:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** Single long value version of: {@link CL12#clGetKernelArgInfo GetKernelArgInfo}  */
	static public function clGetKernelArgInfoLong(kernel:haxe.Int64,arg_indx:Int,param_name:Int):haxe.Int64;
/** Single int value version of: {@link CL10#clGetCommandQueueInfo GetCommandQueueInfo}  */
	static public function clGetCommandQueueInfoInt(command_queue:haxe.Int64,param_name:Int):Int;
/** UTF-8 string version of: {@link CL10#clGetPlatformInfo GetPlatformInfo}  */
/** UTF-8 string with explicit length version of: {@link CL10#clGetPlatformInfo GetPlatformInfo}  */
	static public function clGetPlatformInfoStringUTF8(platform:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (platform:haxe.Int64,param_name:Int):String {})
/** String version of: {@link CL10#clGetProgramInfo GetProgramInfo}  */
/** String with explicit length version of: {@link CL10#clGetProgramInfo GetProgramInfo} */
	static public function clGetProgramInfoStringASCII(program:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (program:haxe.Int64,param_name:Int):String {})
/** Single pointer value version of: {@link CL10#clGetKernelWorkGroupInfo GetKernelWorkGroupInfo}  */
	static public function clGetKernelWorkGroupInfoPointer(kernel:haxe.Int64,device:haxe.Int64,param_name:Int):haxe.Int64;
/** Single int value version of: {@link CL10#clGetMemObjectInfo GetMemObjectInfo}  */
	static public function clGetMemObjectInfoInt(memobj:haxe.Int64,param_name:Int):Int;
/** Single pointer value version of: {@link CL10#clGetCommandQueueInfo GetCommandQueueInfo}  */
	static public function clGetCommandQueueInfoPointer(command_queue:haxe.Int64,param_name:Int):haxe.Int64;
/** Single pointer value version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
	static public function clGetDeviceInfoPointer(device:haxe.Int64,param_name:Int):haxe.Int64;
/** PointBuffer version of: {@link CL10#clGetKernelInfo GetKernelInfo}  */
	static public function clGetKernelInfoPointers(kernel:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** Single int value version of: {@link CL20#clGetPipeInfo GetPipeInfo}  */
	static public function clGetPipeInfoInt(pipe:haxe.Int64,param_name:Int):Int;
/** PointBuffer version of: {@link CL10#clGetProgramBuildInfo GetProgramBuildInfo}  */
	static public function clGetProgramBuildInfoPointers(program:haxe.Int64,device:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** PointBuffer version of: {@link CL10#clGetImageInfo GetImageInfo}  */
	static public function clGetImageInfoPointers(image:haxe.Int64,param_name:Int,target:org.lwjgl.PointerBuffer):Int;
/** Single int value version of: {@link CL10#clGetEventInfo GetEventInfo}  */
	static public function clGetEventInfoInt(event:haxe.Int64,param_name:Int):Int;
/** Single boolean value version of: {@link CL10#clGetMemObjectInfo GetMemObjectInfo}  */
	static public function clGetMemObjectInfoBoolean(memobj:haxe.Int64,param_name:Int):Bool;
/** Single long value version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
	static public function clGetDeviceInfoLong(device:haxe.Int64,param_name:Int):haxe.Int64;
/** Single pointer value version of: {@link CL10#clGetKernelInfo GetKernelInfo}  */
	static public function clGetKernelInfoPointer(kernel:haxe.Int64,param_name:Int):haxe.Int64;
/** Single long value version of: {@link CL10#clGetEventProfilingInfo GetEventProfilingInfo}  */
	static public function clGetEventProfilingInfoLong(event:haxe.Int64,param_name:Int):haxe.Int64;
/** Single long value version of: {@link CL10#clGetMemObjectInfo GetMemObjectInfo}  */
	static public function clGetMemObjectInfoLong(memobj:haxe.Int64,param_name:Int):haxe.Int64;
/** Single int value version of: {@link CL10#clGetSamplerInfo GetSamplerInfo}  */
	static public function clGetSamplerInfoInt(sampler:haxe.Int64,param_name:Int):Int;
/** Single pointer value version of: {@link CL10#clGetEventInfo GetEventInfo}  */
	static public function clGetEventInfoPointer(event:haxe.Int64,param_name:Int):haxe.Int64;
/** UTF-8 string version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
/** UTF-8 string with explicit length version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
	static public function clGetDeviceInfoStringUTF8(device:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (device:haxe.Int64,param_name:Int):String {})
/** Single pointer value version of: {@link CL10#clGetContextInfo GetContextInfo}  */
	static public function clGetContextInfoPointer(context:haxe.Int64,param_name:Int):haxe.Int64;
/** String version of: {@link CL10#clGetProgramBuildInfo GetProgramBuildInfo}  */
/** String with explicit length version of: {@link CL10#clGetProgramBuildInfo GetProgramBuildInfo} */
	static public function clGetProgramBuildInfoStringASCII(program:haxe.Int64,device:haxe.Int64,param_name:Int,param_value_size:Int):String;
	@:overload(function (program:haxe.Int64,device:haxe.Int64,param_name:Int):String {})
/** Single pointer value version of: {@link CL10#clGetProgramInfo GetProgramInfo}  */
	static public function clGetProgramInfoPointer(program:haxe.Int64,param_name:Int):haxe.Int64;
/** Single int value version of: {@link CL10#clGetDeviceInfo GetDeviceInfo}  */
	static public function clGetDeviceInfoInt(device:haxe.Int64,param_name:Int):Int;

}
