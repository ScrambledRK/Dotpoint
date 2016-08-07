package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.INTELMotionEstimation")
@:final
/**
 * Native bindings to the <a href="http://www.khronos.org/registry/cl/extensions/intel/cl_intel_motion_estimation.txt">intel_motion_estimation</a> extension.
 * 
 * <p>This document presents the motion estimation extension for OpenCL. This extension includes a set of host-callable functions for frame-based motion
 * estimation and introduces motion estimators, or also "motion estimation accelerator objects". These accelerator objects provide an abstraction of
 * software- and/or hardware-accelerated functions for motion estimation, which can be provided by select OpenCL vendors.</p>
 * 
 * <p>This extension depends on the OpenCL 1.2 built-in kernel infrastructure and on the accelerator extension, which provides an abstraction for
 * domain-specific acceleration in the OpenCL runtime.</p>
 * 
 * <p>Requires {@link INTELAccelerator intel_accelerator}.</p>
 */
extern class INTELMotionEstimation 
{
/**
 * Accepted as a type in the {@code accelerator_type} parameter of {@link INTELAccelerator#clCreateAcceleratorINTEL CreateAcceleratorINTEL}. Creates a full-frame motion estimation
 * accelerator.
 */
	inline static public var CL_ACCELERATOR_TYPE_MOTION_ESTIMATION_INTEL:Int = 0;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_MB_TYPE_16x16_INTEL:Int = 0;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_MB_TYPE_8x8_INTEL:Int = 1;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_MB_TYPE_4x4_INTEL:Int = 2;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SUBPIXEL_MODE_INTEGER_INTEL:Int = 0;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SUBPIXEL_MODE_HPEL_INTEL:Int = 1;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SUBPIXEL_MODE_QPEL_INTEL:Int = 2;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SAD_ADJUST_MODE_NONE_INTEL:Int = 0;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SAD_ADJUST_MODE_HAAR_INTEL:Int = 1;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SEARCH_PATH_RADIUS_2_2_INTEL:Int = 0;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SEARCH_PATH_RADIUS_4_4_INTEL:Int = 1;
/** Accepted as types to the fields of {@code cl_motion_estimator_desc_intel}.  */
	inline static public var CL_ME_SEARCH_PATH_RADIUS_16_12_INTEL:Int = 5;

}
