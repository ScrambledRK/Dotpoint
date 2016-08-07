package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBTTVertex")
@:final
/** Vertex data.  */
extern class STBTTVertex implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
/** The struct member offsets.  */
	static public var CX:Int;
/** The struct member offsets.  */
	static public var CY:Int;
/** The struct member offsets.  */
	static public var TYPE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(x:Int,y:Int,cx:Int,cy:Int,type:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setY(y:Int):Void;
	public function setX(x:Int):Void;
	public function getPointer():haxe.Int64;
	public function setType(type:Int):Void;
	static public function type(stbtt_vertex:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (stbtt_vertex:java.nio.ByteBuffer):Int {})
	public function getCx():Int;
	public function getX():Int;
	public function setCx(cx:Int):Void;
	public function getY():Int;
	public function getType():Int;
	static public function cx(stbtt_vertex:java.nio.ByteBuffer,cx:Int):Void;
	@:overload(function (stbtt_vertex:java.nio.ByteBuffer):Int {})
	static public function cy(stbtt_vertex:java.nio.ByteBuffer,cy:Int):Void;
	@:overload(function (stbtt_vertex:java.nio.ByteBuffer):Int {})
	public function getCy():Int;
	static public function x(stbtt_vertex:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (stbtt_vertex:java.nio.ByteBuffer):Int {})
	static public function y(stbtt_vertex:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (stbtt_vertex:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function setCy(cy:Int):Void;

}
