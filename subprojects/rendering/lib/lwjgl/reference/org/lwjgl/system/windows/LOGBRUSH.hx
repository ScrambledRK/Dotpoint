package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.LOGBRUSH")
@:final
extern class LOGBRUSH implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var LBSTYLE:Int;
/** The struct member offsets.  */
	static public var LBCOLOR:Int;
/** The struct member offsets.  */
	static public var LBHATCH:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(lbStyle:Int,lbColor:Int,lbHatch:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getLbStyle():Int;
	public function setLbColor(lbColor:Int):Void;
	public function setLbHatch(lbHatch:haxe.Int64):Void;
	public function getLbHatch():haxe.Int64;
	public function getLbColor():Int;
	static public function lbHatch(logbrush:java.nio.ByteBuffer,lbHatch:haxe.Int64):Void;
	@:overload(function (logbrush:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function setLbStyle(lbStyle:Int):Void;
	static public function lbColor(logbrush:java.nio.ByteBuffer,lbColor:Int):Void;
	@:overload(function (logbrush:java.nio.ByteBuffer):Int {})
	static public function lbStyle(logbrush:java.nio.ByteBuffer,lbStyle:Int):Void;
	@:overload(function (logbrush:java.nio.ByteBuffer):Int {})

}
