package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XRRCrtcGamma")
@:final
/** Xrandr CrtcGamma struct.  */
extern class XRRCrtcGamma implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
/** The struct member offsets.  */
	static public var RED:Int;
/** The struct member offsets.  */
	static public var GREEN:Int;
/** The struct member offsets.  */
	static public var BLUE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(size:Int,red:java.nio.ByteBuffer,green:java.nio.ByteBuffer,blue:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function green(xrrcrtcgamma:java.nio.ByteBuffer,green:haxe.Int64):Void;
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer,green:java.nio.ByteBuffer):Void {})
	public function getPointer():haxe.Int64;
	public function setRed(red:java.nio.ByteBuffer):Void;
	@:overload(function (red:haxe.Int64):Void {})
	public function setGreen(green:java.nio.ByteBuffer):Void;
	@:overload(function (green:haxe.Int64):Void {})
	public function getBlue(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function red(xrrcrtcgamma:java.nio.ByteBuffer,red:haxe.Int64):Void;
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer,red:java.nio.ByteBuffer):Void {})
	public function getSize():Int;
	public function setSize(size:Int):Void;
	public function getRed(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function getGreen(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function setBlue(blue:java.nio.ByteBuffer):Void;
	@:overload(function (blue:haxe.Int64):Void {})
	static public function size(xrrcrtcgamma:java.nio.ByteBuffer,size:Int):Void;
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer):Int {})
	static public function blue(xrrcrtcgamma:java.nio.ByteBuffer,blue:haxe.Int64):Void;
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrcrtcgamma:java.nio.ByteBuffer,blue:java.nio.ByteBuffer):Void {})
	public function buffer():java.nio.ByteBuffer;

}
