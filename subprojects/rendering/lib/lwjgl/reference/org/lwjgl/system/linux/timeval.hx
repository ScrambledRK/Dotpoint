package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.timeval")
@:final
/** Time structure  */
extern class Timeval implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SEC:Int;
/** The struct member offsets.  */
	static public var USEC:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function sec(timeval:java.nio.ByteBuffer,sec:haxe.Int64):Void;
	@:overload(function (timeval:java.nio.ByteBuffer):haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(sec:haxe.Int64,usec:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getSec():haxe.Int64;
	public function getUsec():haxe.Int64;
	static public function usec(timeval:java.nio.ByteBuffer,usec:haxe.Int64):Void;
	@:overload(function (timeval:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function setSec(sec:haxe.Int64):Void;
	public function setUsec(usec:haxe.Int64):Void;

}
