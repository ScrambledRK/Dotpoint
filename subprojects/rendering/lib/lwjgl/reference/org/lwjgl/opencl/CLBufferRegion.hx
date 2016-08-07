package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLBufferRegion")
@:final
/** Buffer region struct.  */
extern class CLBufferRegion implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var ORIGIN:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(origin:haxe.Int64,size:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getSize():haxe.Int64;
	public function setSize(size:haxe.Int64):Void;
	public function getOrigin():haxe.Int64;
	static public function size(cl_buffer_region:java.nio.ByteBuffer,size:haxe.Int64):Void;
	@:overload(function (cl_buffer_region:java.nio.ByteBuffer):haxe.Int64 {})
	public function setOrigin(origin:haxe.Int64):Void;
	static public function origin(cl_buffer_region:java.nio.ByteBuffer,origin:haxe.Int64):Void;
	@:overload(function (cl_buffer_region:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;

}
