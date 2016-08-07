package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.POINTL")
@:final
/** Contains the coordinates of a point.  */
extern class POINTL implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(x:Int,y:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setY(y:Int):Void;
	public function getX():Int;
	public function setX(x:Int):Void;
	public function getY():Int;
	static public function x(pointl:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (pointl:java.nio.ByteBuffer):Int {})
	static public function y(pointl:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (pointl:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;

}
