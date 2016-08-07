package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBTTPackedchar")
@:final
/** Packed character data, returned by {@link STBTruetype#stbtt_PackFontRange}  */
extern class STBTTPackedchar implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var X0:Int;
/** The struct member offsets.  */
	static public var Y0:Int;
/** The struct member offsets.  */
	static public var X1:Int;
/** The struct member offsets.  */
	static public var Y1:Int;
/** The struct member offsets.  */
	static public var XOFF:Int;
/** The struct member offsets.  */
	static public var YOFF:Int;
/** The struct member offsets.  */
	static public var XADVANCE:Int;
/** The struct member offsets.  */
	static public var XOFF2:Int;
/** The struct member offsets.  */
	static public var YOFF2:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function yoff2(stbtt_packedchar:java.nio.ByteBuffer,yoff2:Float):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Float {})
	public function getYoff():Float;
	public function getXoff2():Float;
	public function setYoff(yoff:Float):Void;
	static public function xoff(stbtt_packedchar:java.nio.ByteBuffer,xoff:Float):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Float {})
	static public function xadvance(stbtt_packedchar:java.nio.ByteBuffer,xadvance:Float):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Float {})
	public function setYoff2(yoff2:Float):Void;
	static public function xoff2(stbtt_packedchar:java.nio.ByteBuffer,xoff2:Float):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Float {})
	public function getY1():Int;
	public function getY0():Int;
	static public function y0(stbtt_packedchar:java.nio.ByteBuffer,y0:Int):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Int {})
	static public function y1(stbtt_packedchar:java.nio.ByteBuffer,y1:Int):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function getYoff2():Float;
	public function setY0(y0:Int):Void;
	public function setY1(y1:Int):Void;
	public function setXadvance(xadvance:Float):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(x0:Int,y0:Int,x1:Int,y1:Int,xoff:Float,yoff:Float,xadvance:Float,xoff2:Float,yoff2:Float):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setXoff2(xoff2:Float):Void;
	public function getXoff():Float;
	public function getPointer():haxe.Int64;
	public function setXoff(xoff:Float):Void;
	static public function yoff(stbtt_packedchar:java.nio.ByteBuffer,yoff:Float):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Float {})
	public function getX1():Int;
	public function getXadvance():Float;
	public function getX0():Int;
	static public function x0(stbtt_packedchar:java.nio.ByteBuffer,x0:Int):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Int {})
	static public function x1(stbtt_packedchar:java.nio.ByteBuffer,x1:Int):Void;
	@:overload(function (stbtt_packedchar:java.nio.ByteBuffer):Int {})
	public function setX0(x0:Int):Void;
	public function setX1(x1:Int):Void;

}
