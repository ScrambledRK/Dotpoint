package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.timespec")
@:final
/** Time structure  */
extern class Timespec implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SEC:Int;
/** The struct member offsets.  */
	static public var NSEC:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function sec(timespec:java.nio.ByteBuffer,sec:haxe.Int64):Void;
	@:overload(function (timespec:java.nio.ByteBuffer):haxe.Int64 {})
	static public function nsec(timespec:java.nio.ByteBuffer,nsec:haxe.Int64):Void;
	@:overload(function (timespec:java.nio.ByteBuffer):haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(sec:haxe.Int64,nsec:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getSec():haxe.Int64;
	public function setNsec(nsec:haxe.Int64):Void;
	public function getNsec():haxe.Int64;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function setSec(sec:haxe.Int64):Void;

}
