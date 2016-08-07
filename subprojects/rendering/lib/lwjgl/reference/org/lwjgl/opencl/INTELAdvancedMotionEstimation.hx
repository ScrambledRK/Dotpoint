package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.INTELAdvancedMotionEstimation")
@:final
/**
 * Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/intel/cl_intel_advanced_motion_estimation.txt">intel_advanced_motion_estimation</a> extension.
 * 
 * <p>This extension builds upon the cl_intel_motion_estimation extension by providing block-based estimation and greater control over the estimation
 * algorithm.</p>
 * 
 * <p>This extension reuses the set of host-callable functions and "motion estimation accelerator objects" defined in the cl_intel_motion_estimation
 * extension. This extension depends on the OpenCL 1.2 built-in kernel infrastructure and on the cl_intel_accelerator extension, which provides an
 * abstraction for domain-specific acceleration in the OpenCL runtime.</p>
 * 
 * <p>Requires {@link INTELMotionEstimation intel_motion_estimation}.</p>
 */
extern class INTELAdvancedMotionEstimation 
{
/** Accepted as arguments to clGetDeviceInfo.  */
	inline static public var CL_DEVICE_ME_VERSION_INTEL:Int = 16510;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_CHROMA_INTRA_PREDICT_ENABLED_INTEL:Int = 1;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_LUMA_INTRA_PREDICT_ENABLED_INTEL:Int = 2;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PENALTY_NONE_INTEL:Int = 0;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PENALTY_LOW_INTEL:Int = 1;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PENALTY_NORMAL_INTEL:Int = 2;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PENALTY_HIGH_INTEL:Int = 3;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PRECISION_QPEL_INTEL:Int = 0;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PRECISION_HEL_INTEL:Int = 1;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PRECISION_PEL_INTEL:Int = 2;
/** Accepted as flags passed to the kernel.  */
	inline static public var CL_ME_COST_PRECISION_DPEL_INTEL:Int = 3;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_VERTICAL_INTEL:Int = 0;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_INTEL:Int = 1;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_DC_INTEL:Int = 2;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_DIAGONAL_DOWN_LEFT_INTEL:Int = 3;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_DIAGONAL_DOWN_RIGHT_INTEL:Int = 4;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_PLANE_INTEL:Int = 4;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_VERTICAL_RIGHT_INTEL:Int = 5;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_DOWN_INTEL:Int = 6;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_VERTICAL_LEFT_INTEL:Int = 7;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_LUMA_PREDICTOR_MODE_HORIZONTAL_UP_INTEL:Int = 8;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_CHROMA_PREDICTOR_MODE_DC_INTEL:Int = 0;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_CHROMA_PREDICTOR_MODE_HORIZONTAL_INTEL:Int = 1;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_CHROMA_PREDICTOR_MODE_VERTICAL_INTEL:Int = 2;
/** Valid intra-search predictor mode constants.  */
	inline static public var CL_ME_CHROMA_PREDICTOR_MODE_PLANE_INTEL:Int = 3;
/** Valid constant values returned by clGetDeviceInfo.  */
	inline static public var CL_ME_VERSION_ADVANCED_VER_1_INTEL:Int = 1;
/** Valid macroblock type constants.  */
	inline static public var CL_ME_MB_TYPE_16x16_INTEL:Int = 0;
/** Valid macroblock type constants.  */
	inline static public var CL_ME_MB_TYPE_8x8_INTEL:Int = 1;
/** Valid macroblock type constants.  */
	inline static public var CL_ME_MB_TYPE_4x4_INTEL:Int = 2;

}
