package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLMotionEstimationDescINTEL")
@:final
/** Describes the configuration of the motion estimation algorithm.  */
extern class CLMotionEstimationDescINTEL implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var MB_BLOCK_TYPE:Int;
/** The struct member offsets.  */
	static public var SUBPIXEL_MODE:Int;
/** The struct member offsets.  */
	static public var SAD_ADJUST_MODE:Int;
/** The struct member offsets.  */
	static public var SEARCH_PATH_TYPE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(mb_block_type:Int,subpixel_mode:Int,sad_adjust_mode:Int,search_path_type:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setSearchPathType(search_path_type:Int):Void;
	static public function search_path_type(cl_motion_estimation_desc_intel:java.nio.ByteBuffer,search_path_type:Int):Void;
	@:overload(function (cl_motion_estimation_desc_intel:java.nio.ByteBuffer):Int {})
	public function getSearchPathType():Int;
	public function getPointer():haxe.Int64;
	public function getSadAdjustMode():Int;
	static public function mb_block_type(cl_motion_estimation_desc_intel:java.nio.ByteBuffer,mb_block_type:Int):Void;
	@:overload(function (cl_motion_estimation_desc_intel:java.nio.ByteBuffer):Int {})
	static public function sad_adjust_mode(cl_motion_estimation_desc_intel:java.nio.ByteBuffer,sad_adjust_mode:Int):Void;
	@:overload(function (cl_motion_estimation_desc_intel:java.nio.ByteBuffer):Int {})
	public function setSadAdjustMode(sad_adjust_mode:Int):Void;
	public function getSubpixelMode():Int;
	public function setSubpixelMode(subpixel_mode:Int):Void;
	public function getMbBlockType():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setMbBlockType(mb_block_type:Int):Void;
	static public function subpixel_mode(cl_motion_estimation_desc_intel:java.nio.ByteBuffer,subpixel_mode:Int):Void;
	@:overload(function (cl_motion_estimation_desc_intel:java.nio.ByteBuffer):Int {})

}
