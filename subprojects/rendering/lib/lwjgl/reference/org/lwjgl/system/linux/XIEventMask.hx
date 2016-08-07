package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XIEventMask")
@:final
/** XInput2 event mask.  */
extern class XIEventMask implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var DEVICEID:Int;
/** The struct member offsets.  */
	static public var MASK:Int;
/** The struct member offsets.  */
	static public var MASK_LEN:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getDeviceid():Int;
	public function getMask(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(deviceid:Int,mask:java.nio.ByteBuffer,mask_len:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setMask(mask:java.nio.ByteBuffer):Void;
	@:overload(function (mask:haxe.Int64):Void {})
	public function getMaskLen():Int;
	public function setMaskLen(mask_len:Int):Void;
	static public function mask_len(xieventmask:java.nio.ByteBuffer,mask_len:Int):Void;
	@:overload(function (xieventmask:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function setDeviceid(deviceid:Int):Void;
	static public function deviceid(xieventmask:java.nio.ByteBuffer,deviceid:Int):Void;
	@:overload(function (xieventmask:java.nio.ByteBuffer):Int {})
	static public function mask(xieventmask:java.nio.ByteBuffer,mask:haxe.Int64):Void;
	@:overload(function (xieventmask:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xieventmask:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xieventmask:java.nio.ByteBuffer,mask:java.nio.ByteBuffer):Void {})

}
