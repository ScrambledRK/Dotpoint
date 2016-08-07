package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBTTBakedChar")
@:final
/** Baked character data, returned by {@link STBTruetype#stbtt_BakeFontBitmap}.  */
extern class STBTTBakedChar implements org.lwjgl.Pointer
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
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setXadvance(xadvance:Float):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(x0:Int,y0:Int,x1:Int,y1:Int,xoff:Float,yoff:Float,xadvance:Float):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getYoff():Float;
	public function setYoff(yoff:Float):Void;
	public function getXoff():Float;
	public function getPointer():haxe.Int64;
	public function setXoff(xoff:Float):Void;
	static public function yoff(stbtt_bakedchar:java.nio.ByteBuffer,yoff:Float):Void;
	@:overload(function (stbtt_bakedchar:java.nio.ByteBuffer):Float {})
	static public function xoff(stbtt_bakedchar:java.nio.ByteBuffer,xoff:Float):Void;
	@:overload(function (stbtt_bakedchar:java.nio.ByteBuffer):Float {})
	static public function xadvance(stbtt_bakedchar:java.nio.ByteBuffer,xadvance:Float):Void;
	@:overload(function (stbtt_bakedchar:java.nio.ByteBuffer):Float {})
	public function getX1():Int;
	public function getXadvance():Float;
	public function getX0():Int;
	public function getY1():Int;
	public function getY0():Int;
	static public function y0(stbtt_bakedchar:java.nio.ByteBuffer,y0:Int):Void;
	@:overload(function (stbtt_bakedchar:java.nio.ByteBuffer):Int {})
	static public function x0(stbtt_bakedchar:java.nio.ByteBuffer,x0:Int):Void;
	@:overload(function (stbtt_bakedchar:java.nio.ByteBuffer):Int {})
	static public function y1(stbtt_bakedchar:java.nio.ByteBuffer,y1:Int):Void;
	@:overload(function (stbtt_bakedchar:java.nio.ByteBuffer):Int {})
	static public function x1(stbtt_bakedchar:java.nio.ByteBuffer,x1:Int):Void;
	@:overload(function (stbtt_bakedchar:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function setY0(y0:Int):Void;
	public function setX0(x0:Int):Void;
	public function setY1(y1:Int):Void;
	public function setX1(x1:Int):Void;

}
