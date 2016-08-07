package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.APPLEQueryKernelNames")
@:final
/**
 * Native bindings to the <strong>APPLE_query_kernel_names</strong> extension.
 * 
 * <p>These selectors may be passed to {@link CL10#clGetProgramInfo GetProgramInfo} to obtain information about the kernel functions in a {@code cl_program}. The {@code cl_program}
 * must be successfully built with {@link CL10#clBuildProgram BuildProgram} for at least one device to succeed. Otherwise {@link CL10#CL_INVALID_PROGRAM_EXECUTABLE INVALID_PROGRAM_EXECUTABLE} is returned.</p>
 */
extern class APPLEQueryKernelNames 
{
/** Returns a cl_uint for number of kernels in program.  */
	inline static public var CL_PROGRAM_NUM_KERNELS_APPLE:Int = 268435460;
/** Returns a ';' delimited char[] containing the names of kernels in program.  */
	inline static public var CL_PROGRAM_KERNEL_NAMES_APPLE:Int = 268435461;

}
