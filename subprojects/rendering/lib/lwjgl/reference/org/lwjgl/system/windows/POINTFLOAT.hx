package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.POINTFLOAT")
@:final
extern class POINTFLOAT implements org.lwjgl.Pointer
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
	static public function malloc(x:Float,y:Float):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setY(y:Float):Void;
	public function getX():Float;
	public function setX(x:Float):Void;
	public function getY():Float;
	static public function x(pointfloat:java.nio.ByteBuffer,x:Float):Void;
	@:overload(function (pointfloat:java.nio.ByteBuffer):Float {})
	static public function y(pointfloat:java.nio.ByteBuffer,y:Float):Void;
	@:overload(function (pointfloat:java.nio.ByteBuffer):Float {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;

}
