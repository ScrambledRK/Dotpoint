package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBTTAlignedQuad")
@:final
/** Quad used for drawing a baked character, returned by {@link STBTruetype#stbtt_GetBakedQuad}.  */
extern class STBTTAlignedQuad implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var X0:Int;
/** The struct member offsets.  */
	static public var Y0:Int;
/** The struct member offsets.  */
	static public var S0:Int;
/** The struct member offsets.  */
	static public var T0:Int;
/** The struct member offsets.  */
	static public var X1:Int;
/** The struct member offsets.  */
	static public var Y1:Int;
/** The struct member offsets.  */
	static public var S1:Int;
/** The struct member offsets.  */
	static public var T1:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getS0():Float;
	public function getS1():Float;
	public function getY1():Float;
	public function getY0():Float;
	static public function y0(stbtt_aligned_quad:java.nio.ByteBuffer,y0:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
	static public function y1(stbtt_aligned_quad:java.nio.ByteBuffer,y1:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
	public function buffer():java.nio.ByteBuffer;
	public function setS0(s0:Float):Void;
	public function setY0(y0:Float):Void;
	static public function s0(stbtt_aligned_quad:java.nio.ByteBuffer,s0:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
	public function setY1(y1:Float):Void;
	static public function s1(stbtt_aligned_quad:java.nio.ByteBuffer,s1:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(x0:Float,y0:Float,s0:Float,t0:Float,x1:Float,y1:Float,s1:Float,t1:Float):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setS1(s1:Float):Void;
	public function getT1():Float;
	public function getT0():Float;
	public function getPointer():haxe.Int64;
	public function getX1():Float;
	public function getX0():Float;
	static public function x0(stbtt_aligned_quad:java.nio.ByteBuffer,x0:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
	static public function x1(stbtt_aligned_quad:java.nio.ByteBuffer,x1:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
	public function setT0(t0:Float):Void;
	public function setT1(t1:Float):Void;
	static public function t0(stbtt_aligned_quad:java.nio.ByteBuffer,t0:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
	static public function t1(stbtt_aligned_quad:java.nio.ByteBuffer,t1:Float):Void;
	@:overload(function (stbtt_aligned_quad:java.nio.ByteBuffer):Float {})
	public function setX0(x0:Float):Void;
	public function setX1(x1:Float):Void;

}
