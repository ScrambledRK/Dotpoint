package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBIIOCallbacks")
@:final
/** Image IO callbacks, used by {@link STBImage#stbi_load_from_callbacks}.  */
extern class STBIIOCallbacks implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var READ:Int;
/** The struct member offsets.  */
	static public var SKIP:Int;
/** The struct member offsets.  */
	static public var EOF:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getSkip():haxe.Int64;
	public function setSkip(skip:haxe.Int64):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(read:haxe.Int64,skip:haxe.Int64,eof:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function read(stbi_io_callbacks:java.nio.ByteBuffer,read:haxe.Int64):Void;
	@:overload(function (stbi_io_callbacks:java.nio.ByteBuffer):haxe.Int64 {})
	public function setRead(read:haxe.Int64):Void;
	public function setEof(eof:haxe.Int64):Void;
	public function getRead():haxe.Int64;
	static public function skip(stbi_io_callbacks:java.nio.ByteBuffer,skip:haxe.Int64):Void;
	@:overload(function (stbi_io_callbacks:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	static public function eof(stbi_io_callbacks:java.nio.ByteBuffer,eof:haxe.Int64):Void;
	@:overload(function (stbi_io_callbacks:java.nio.ByteBuffer):haxe.Int64 {})
	public function getEof():haxe.Int64;

}
