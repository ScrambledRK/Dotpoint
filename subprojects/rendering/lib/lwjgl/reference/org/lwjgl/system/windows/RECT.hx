package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.RECT")
@:final
/** Defines the coordinates of the upper-left and lower-right corners of a rectangle.  */
extern class RECT implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var LEFT:Int;
/** The struct member offsets.  */
	static public var TOP:Int;
/** The struct member offsets.  */
	static public var RIGHT:Int;
/** The struct member offsets.  */
	static public var BOTTOM:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(left:Int,top:Int,right:Int,bottom:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setLeft(left:Int):Void;
	public function getBottom():Int;
	static public function bottom(rect:java.nio.ByteBuffer,bottom:Int):Void;
	@:overload(function (rect:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	static public function right(rect:java.nio.ByteBuffer,right:Int):Void;
	@:overload(function (rect:java.nio.ByteBuffer):Int {})
	public function setTop(top:Int):Void;
	public function getRight():Int;
	public function setBottom(bottom:Int):Void;
	static public function top(rect:java.nio.ByteBuffer,top:Int):Void;
	@:overload(function (rect:java.nio.ByteBuffer):Int {})
	static public function left(rect:java.nio.ByteBuffer,left:Int):Void;
	@:overload(function (rect:java.nio.ByteBuffer):Int {})
	public function getTop():Int;
	public function setRight(right:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	public function getLeft():Int;

}
