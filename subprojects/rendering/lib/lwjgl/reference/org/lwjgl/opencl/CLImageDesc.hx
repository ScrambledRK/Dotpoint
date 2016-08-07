package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLImageDesc")
@:final
/** Image description struct.  */
extern class CLImageDesc implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var IMAGE_TYPE:Int;
/** The struct member offsets.  */
	static public var IMAGE_WIDTH:Int;
/** The struct member offsets.  */
	static public var IMAGE_HEIGHT:Int;
/** The struct member offsets.  */
	static public var IMAGE_DEPTH:Int;
/** The struct member offsets.  */
	static public var IMAGE_ARRAY_SIZE:Int;
/** The struct member offsets.  */
	static public var IMAGE_ROW_PITCH:Int;
/** The struct member offsets.  */
	static public var IMAGE_SLICE_PITCH:Int;
/** The struct member offsets.  */
	static public var NUM_MIP_LEVELS:Int;
/** The struct member offsets.  */
	static public var NUM_SAMPLES:Int;
/** The struct member offsets.  */
	static public var BUFFER:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getNumMipLevels():Int;
	public function setImageSlicePitch(image_slice_pitch:haxe.Int64):Void;
	public function setNumMipLevels(num_mip_levels:Int):Void;
	public function getBuffer():haxe.Int64;
	public function setImageDepth(image_depth:haxe.Int64):Void;
	public function getImageHeight():haxe.Int64;
	public function getNumSamples():Int;
	static public function image_height(cl_image_desc:java.nio.ByteBuffer,image_height:haxe.Int64):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):haxe.Int64 {})
	static public function image_row_pitch(cl_image_desc:java.nio.ByteBuffer,image_row_pitch:haxe.Int64):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):haxe.Int64 {})
	public function setImageRowPitch(image_row_pitch:haxe.Int64):Void;
	public function getImageRowPitch():haxe.Int64;
	public function setImageType(image_type:Int):Void;
	static public function buffer(cl_image_desc:java.nio.ByteBuffer,buffer:haxe.Int64):Void;
	@:overload(function ():java.nio.ByteBuffer {})
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):haxe.Int64 {})
	public function setImageWidth(image_width:haxe.Int64):Void;
	public function setNumSamples(num_samples:Int):Void;
	static public function image_type(cl_image_desc:java.nio.ByteBuffer,image_type:Int):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):Int {})
	static public function image_slice_pitch(cl_image_desc:java.nio.ByteBuffer,image_slice_pitch:haxe.Int64):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):haxe.Int64 {})
	static public function num_mip_levels(cl_image_desc:java.nio.ByteBuffer,num_mip_levels:Int):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):Int {})
	public function getImageDepth():haxe.Int64;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(image_type:Int,image_width:haxe.Int64,image_height:haxe.Int64,image_depth:haxe.Int64,image_array_size:haxe.Int64,image_row_pitch:haxe.Int64,image_slice_pitch:haxe.Int64,num_mip_levels:Int,num_samples:Int,buffer:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function image_depth(cl_image_desc:java.nio.ByteBuffer,image_depth:haxe.Int64):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):haxe.Int64 {})
	public function setBuffer(buffer:haxe.Int64):Void;
	public function setImageHeight(image_height:haxe.Int64):Void;
	public function getImageType():Int;
	public function getImageWidth():haxe.Int64;
	public function getPointer():haxe.Int64;
	static public function image_width(cl_image_desc:java.nio.ByteBuffer,image_width:haxe.Int64):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):haxe.Int64 {})
	static public function image_array_size(cl_image_desc:java.nio.ByteBuffer,image_array_size:haxe.Int64):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):haxe.Int64 {})
	public function getImageArraySize():haxe.Int64;
	public function setImageArraySize(image_array_size:haxe.Int64):Void;
	public function getImageSlicePitch():haxe.Int64;
	static public function num_samples(cl_image_desc:java.nio.ByteBuffer,num_samples:Int):Void;
	@:overload(function (cl_image_desc:java.nio.ByteBuffer):Int {})

}
