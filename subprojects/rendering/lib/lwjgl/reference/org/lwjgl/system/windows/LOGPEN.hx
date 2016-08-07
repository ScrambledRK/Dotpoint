package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.LOGPEN")
@:final
extern class LOGPEN implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var LOPNSTYLE:Int;
/** The struct member offsets.  */
	static public var LOPNWIDTH:Int;
/** The struct member offsets.  */
	static public var LOPNCOLOR:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(lopnStyle:Int,lopnWidth:java.nio.ByteBuffer,lopnColor:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function lopnWidthGet(logpen:java.nio.ByteBuffer,lopnWidth:java.nio.ByteBuffer):Void;
	static public function lopnStyle(logpen:java.nio.ByteBuffer,lopnStyle:Int):Void;
	@:overload(function (logpen:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function getLopnWidthY():Int;
	public function getLopnColor():Int;
	static public function lopnWidthSet(logpen:java.nio.ByteBuffer,lopnWidth:java.nio.ByteBuffer):Void;
	public function setLopnWidth(lopnWidth:java.nio.ByteBuffer):Void;
	public function getLopnWidthX():Int;
	static public function lopnWidthY(logpen:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (logpen:java.nio.ByteBuffer):Int {})
	public function setLopnColor(lopnColor:Int):Void;
	static public function lopnWidthX(logpen:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (logpen:java.nio.ByteBuffer):Int {})
	static public function lopnColor(logpen:java.nio.ByteBuffer,lopnColor:Int):Void;
	@:overload(function (logpen:java.nio.ByteBuffer):Int {})
	public function setLopnStyle(lopnStyle:Int):Void;
	public function getLopnWidth(lopnWidth:java.nio.ByteBuffer):Void;
	public function buffer():java.nio.ByteBuffer;
	public function setLopnWidthY(y:Int):Void;
	public function setLopnWidthX(x:Int):Void;
	public function getLopnStyle():Int;

}
