package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XIValuatorState")
@:final
/** XInput2 valuator state.  */
extern class XIValuatorState implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var MASK_LEN:Int;
/** The struct member offsets.  */
	static public var MASK:Int;
/** The struct member offsets.  */
	static public var VALUES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getMask(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(mask_len:Int,mask:java.nio.ByteBuffer,values:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setMask(mask:java.nio.ByteBuffer):Void;
	@:overload(function (mask:haxe.Int64):Void {})
	public function getMaskLen():Int;
	public function getValues(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function setMaskLen(mask_len:Int):Void;
	public function setValues(values:java.nio.ByteBuffer):Void;
	@:overload(function (values:haxe.Int64):Void {})
	static public function values(xivaluatorstate:java.nio.ByteBuffer,values:haxe.Int64):Void;
	@:overload(function (xivaluatorstate:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xivaluatorstate:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xivaluatorstate:java.nio.ByteBuffer,values:java.nio.ByteBuffer):Void {})
	static public function mask_len(xivaluatorstate:java.nio.ByteBuffer,mask_len:Int):Void;
	@:overload(function (xivaluatorstate:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	static public function mask(xivaluatorstate:java.nio.ByteBuffer,mask:haxe.Int64):Void;
	@:overload(function (xivaluatorstate:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xivaluatorstate:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xivaluatorstate:java.nio.ByteBuffer,mask:java.nio.ByteBuffer):Void {})

}
