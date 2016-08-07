package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBRPRect")
@:final
/** A packed rectangle.  */
extern class STBRPRect implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var ID:Int;
/** The struct member offsets.  */
	static public var W:Int;
/** The struct member offsets.  */
	static public var H:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
/** The struct member offsets.  */
	static public var WAS_PACKED:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setW(w:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(id:Int,w:Int,h:Int,x:Int,y:Int,was_packed:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setY(y:Int):Void;
	public function getH():Int;
	public function setX(x:Int):Void;
	static public function was_packed(stbrp_rect:java.nio.ByteBuffer,was_packed:Int):Void;
	@:overload(function (stbrp_rect:java.nio.ByteBuffer):Int {})
	public function setWasPacked(was_packed:Int):Void;
	static public function h(stbrp_rect:java.nio.ByteBuffer,h:Int):Void;
	@:overload(function (stbrp_rect:java.nio.ByteBuffer):Int {})
	public function getId():Int;
	public function getPointer():haxe.Int64;
	public function getWasPacked():Int;
	public function getW():Int;
	public function getX():Int;
	public function setH(h:Int):Void;
	public function getY():Int;
	static public function w(stbrp_rect:java.nio.ByteBuffer,w:Int):Void;
	@:overload(function (stbrp_rect:java.nio.ByteBuffer):Int {})
	static public function x(stbrp_rect:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (stbrp_rect:java.nio.ByteBuffer):Int {})
	public function setId(id:Int):Void;
	static public function y(stbrp_rect:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (stbrp_rect:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	static public function id(stbrp_rect:java.nio.ByteBuffer,id:Int):Void;
	@:overload(function (stbrp_rect:java.nio.ByteBuffer):Int {})

}
