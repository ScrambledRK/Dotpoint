package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLImageFormat")
@:final
/** Image format struct.  */
extern class CLImageFormat implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var IMAGE_CHANNEL_ORDER:Int;
/** The struct member offsets.  */
	static public var IMAGE_CHANNEL_DATA_TYPE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getImageChannelOrder():Int;
	static public function image_channel_data_type(cl_image_format:java.nio.ByteBuffer,image_channel_data_type:Int):Void;
	@:overload(function (cl_image_format:java.nio.ByteBuffer):Int {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(image_channel_order:Int,image_channel_data_type:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setImageChannelOrder(image_channel_order:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	static public function image_channel_order(cl_image_format:java.nio.ByteBuffer,image_channel_order:Int):Void;
	@:overload(function (cl_image_format:java.nio.ByteBuffer):Int {})
	public function setImageChannelDataType(image_channel_data_type:Int):Void;
	public function getImageChannelDataType():Int;

}
