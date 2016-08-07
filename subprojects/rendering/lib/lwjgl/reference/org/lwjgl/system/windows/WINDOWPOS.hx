package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WINDOWPOS")
@:final
extern class WINDOWPOS implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var HWND:Int;
/** The struct member offsets.  */
	static public var HWNDINSERTAFTER:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
/** The struct member offsets.  */
	static public var CX:Int;
/** The struct member offsets.  */
	static public var CY:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setHwndInsertAfter(hwndInsertAfter:haxe.Int64):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(hwnd:haxe.Int64,hwndInsertAfter:haxe.Int64,x:Int,y:Int,cx:Int,cy:Int,flags:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setY(y:Int):Void;
	public function setX(x:Int):Void;
	static public function flags(windowpos:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (windowpos:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function setHwnd(hwnd:haxe.Int64):Void;
	public function getHwndInsertAfter():haxe.Int64;
	public function getCx():Int;
	public function getX():Int;
	public function setCx(cx:Int):Void;
	public function getY():Int;
	static public function hwnd(windowpos:java.nio.ByteBuffer,hwnd:haxe.Int64):Void;
	@:overload(function (windowpos:java.nio.ByteBuffer):haxe.Int64 {})
	static public function cx(windowpos:java.nio.ByteBuffer,cx:Int):Void;
	@:overload(function (windowpos:java.nio.ByteBuffer):Int {})
	static public function cy(windowpos:java.nio.ByteBuffer,cy:Int):Void;
	@:overload(function (windowpos:java.nio.ByteBuffer):Int {})
	public function getCy():Int;
	static public function x(windowpos:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (windowpos:java.nio.ByteBuffer):Int {})
	static public function y(windowpos:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (windowpos:java.nio.ByteBuffer):Int {})
	static public function hwndInsertAfter(windowpos:java.nio.ByteBuffer,hwndInsertAfter:haxe.Int64):Void;
	@:overload(function (windowpos:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function getHwnd():haxe.Int64;
	public function setCy(cy:Int):Void;
	public function getFlags():Int;
	public function setFlags(flags:Int):Void;

}
