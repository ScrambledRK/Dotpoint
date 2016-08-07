package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBVorbisInfo")
@:final
/** Information about a Vorbis stream.  */
extern class STBVorbisInfo implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SAMPLE_RATE:Int;
/** The struct member offsets.  */
	static public var CHANNELS:Int;
/** The struct member offsets.  */
	static public var SETUP_MEMORY_REQUIRED:Int;
/** The struct member offsets.  */
	static public var SETUP_TEMP_MEMORY_REQUIRED:Int;
/** The struct member offsets.  */
	static public var TEMP_MEMORY_REQUIRED:Int;
/** The struct member offsets.  */
	static public var MAX_FRAME_SIZE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setSampleRate(sample_rate:Int):Void;
	public function setSetupMemoryRequired(setup_memory_required:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(sample_rate:Int,channels:Int,setup_memory_required:Int,setup_temp_memory_required:Int,temp_memory_required:Int,max_frame_size:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setChannels(channels:Int):Void;
	static public function setup_temp_memory_required(stb_vorbis_info:java.nio.ByteBuffer,setup_temp_memory_required:Int):Void;
	@:overload(function (stb_vorbis_info:java.nio.ByteBuffer):Int {})
	public function getSampleRate():Int;
	public function getPointer():haxe.Int64;
	public function getTempMemoryRequired():Int;
	static public function temp_memory_required(stb_vorbis_info:java.nio.ByteBuffer,temp_memory_required:Int):Void;
	@:overload(function (stb_vorbis_info:java.nio.ByteBuffer):Int {})
	public function setMaxFrameSize(max_frame_size:Int):Void;
	public function getSetupMemoryRequired():Int;
	static public function sample_rate(stb_vorbis_info:java.nio.ByteBuffer,sample_rate:Int):Void;
	@:overload(function (stb_vorbis_info:java.nio.ByteBuffer):Int {})
	static public function channels(stb_vorbis_info:java.nio.ByteBuffer,channels:Int):Void;
	@:overload(function (stb_vorbis_info:java.nio.ByteBuffer):Int {})
	public function getChannels():Int;
	static public function max_frame_size(stb_vorbis_info:java.nio.ByteBuffer,max_frame_size:Int):Void;
	@:overload(function (stb_vorbis_info:java.nio.ByteBuffer):Int {})
	public function setSetupTempMemoryRequired(setup_temp_memory_required:Int):Void;
	public function getMaxFrameSize():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setTempMemoryRequired(temp_memory_required:Int):Void;
	public function getSetupTempMemoryRequired():Int;
	static public function setup_memory_required(stb_vorbis_info:java.nio.ByteBuffer,setup_memory_required:Int):Void;
	@:overload(function (stb_vorbis_info:java.nio.ByteBuffer):Int {})

}
