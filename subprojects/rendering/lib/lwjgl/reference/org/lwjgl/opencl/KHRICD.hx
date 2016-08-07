package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.KHRICD")
@:final
/** Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/khr/cl_khr_icd.txt">khr_icd</a> extension.  */
extern class KHRICD 
{
/** Accepted as {@code param_name} to the function {@link CL10#clGetPlatformInfo GetPlatformInfo}.  */
	inline static public var CL_PLATFORM_ICD_SUFFIX_KHR:Int = 2336;
/** Returned by {@link CL10#clGetPlatformIDs GetPlatformIDs} when no platforms are found.  */
	inline static public var CL_PLATFORM_NOT_FOUND_KHR:Int = -1001;

}
