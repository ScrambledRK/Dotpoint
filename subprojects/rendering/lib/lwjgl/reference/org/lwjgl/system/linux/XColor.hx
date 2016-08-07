package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XColor")
@:final
/** Data structure used by color operations.  */
extern class XColor implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var PIXEL:Int;
/** The struct member offsets.  */
	static public var RED:Int;
/** The struct member offsets.  */
	static public var GREEN:Int;
/** The struct member offsets.  */
	static public var BLUE:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var PAD:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(pixel:haxe.Int64,red:Int,green:Int,blue:Int,flags:Int,pad:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setPixel(pixel:haxe.Int64):Void;
	static public function green(xcolor:java.nio.ByteBuffer,green:Int):Void;
	@:overload(function (xcolor:java.nio.ByteBuffer):Int {})
	static public function flags(xcolor:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (xcolor:java.nio.ByteBuffer):Int {})
	public function getPixel():haxe.Int64;
	public function getPointer():haxe.Int64;
	public function setRed(red:Int):Void;
	public function setGreen(green:Int):Void;
	public function getBlue():Int;
	static public function red(xcolor:java.nio.ByteBuffer,red:Int):Void;
	@:overload(function (xcolor:java.nio.ByteBuffer):Int {})
	static public function pad(xcolor:java.nio.ByteBuffer,pad:Int):Void;
	@:overload(function (xcolor:java.nio.ByteBuffer):Int {})
	public function setPad(pad:Int):Void;
	public function getRed():Int;
	public function getGreen():Int;
	public function setBlue(blue:Int):Void;
	static public function blue(xcolor:java.nio.ByteBuffer,blue:Int):Void;
	@:overload(function (xcolor:java.nio.ByteBuffer):Int {})
	public function getPad():Int;
	public function buffer():java.nio.ByteBuffer;
	public function getFlags():Int;
	static public function pixel(xcolor:java.nio.ByteBuffer,pixel:haxe.Int64):Void;
	@:overload(function (xcolor:java.nio.ByteBuffer):haxe.Int64 {})
	public function setFlags(flags:Int):Void;

}
