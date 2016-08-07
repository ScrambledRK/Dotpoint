package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBVorbisAlloc")
@:final
/** A buffer to use for allocations by {@link STBVorbis}  */
extern class STBVorbisAlloc implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var ALLOC_BUFFER:Int;
/** The struct member offsets.  */
	static public var ALLOC_BUFFER_LENGTH_IN_BYTES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setAllocBufferLengthInBytes(alloc_buffer_length_in_bytes:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(alloc_buffer:java.nio.ByteBuffer,alloc_buffer_length_in_bytes:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function alloc_buffer(stb_vorbis_alloc:java.nio.ByteBuffer,alloc_buffer:haxe.Int64):Void;
	@:overload(function (stb_vorbis_alloc:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (stb_vorbis_alloc:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (stb_vorbis_alloc:java.nio.ByteBuffer,alloc_buffer:java.nio.ByteBuffer):Void {})
	static public function alloc_buffer_length_in_bytes(stb_vorbis_alloc:java.nio.ByteBuffer,alloc_buffer_length_in_bytes:Int):Void;
	@:overload(function (stb_vorbis_alloc:java.nio.ByteBuffer):Int {})
	public function setAllocBuffer(alloc_buffer:java.nio.ByteBuffer):Void;
	@:overload(function (alloc_buffer:haxe.Int64):Void {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function getAllocBuffer(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function getAllocBufferLengthInBytes():Int;

}
