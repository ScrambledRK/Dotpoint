package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.LARGE_INTEGER")
@:final
extern class LARGE_INTEGER implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var QUADPART:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setQuadPart(QuadPart:haxe.Int64):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(QuadPart:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getQuadPart():haxe.Int64;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	static public function QuadPart(large_integer:java.nio.ByteBuffer,QuadPart:haxe.Int64):Void;
	@:overload(function (large_integer:java.nio.ByteBuffer):haxe.Int64 {})

}
