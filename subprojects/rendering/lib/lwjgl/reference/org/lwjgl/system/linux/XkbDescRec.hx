package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XkbDescRec")
@:final
/** Describes an Xkb keyboard.  */
extern class XkbDescRec implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var DPY:Int;
/** The struct member offsets.  */
	static public var DEVICE_SPEC:Int;
/** The struct member offsets.  */
	static public var MIN_KEY_CODE:Int;
/** The struct member offsets.  */
	static public var MAX_KEY_CODE:Int;
/** The struct member offsets.  */
	static public var NAMES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setNames(names:java.nio.ByteBuffer):Void;
	@:overload(function (names:haxe.Int64):Void {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(dpy:haxe.Int64,device_spec:Int,min_key_code:Int,max_key_code:Int,names:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function min_key_code(xkbdescrec:java.nio.ByteBuffer,min_key_code:Int):Void;
	@:overload(function (xkbdescrec:java.nio.ByteBuffer):Int {})
	public function getNamesBuffer():java.nio.ByteBuffer;
	public function setDeviceSpec(device_spec:Int):Void;
	public function setDpy(dpy:haxe.Int64):Void;
	public function getMaxKeyCode():Int;
	public function getPointer():haxe.Int64;
	public function getNames():haxe.Int64;
	static public function dpy(xkbdescrec:java.nio.ByteBuffer,dpy:haxe.Int64):Void;
	@:overload(function (xkbdescrec:java.nio.ByteBuffer):haxe.Int64 {})
	static public function device_spec(xkbdescrec:java.nio.ByteBuffer,device_spec:Int):Void;
	@:overload(function (xkbdescrec:java.nio.ByteBuffer):Int {})
	public function setMinKeyCode(min_key_code:Int):Void;
	public function setMaxKeyCode(max_key_code:Int):Void;
	static public function names(xkbdescrec:java.nio.ByteBuffer,names:haxe.Int64):Void;
	@:overload(function (xkbdescrec:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xkbdescrec:java.nio.ByteBuffer,names:java.nio.ByteBuffer):Void {})
	public function getDeviceSpec():Int;
	static public function namesBuffer(xkbdescrec:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function buffer():java.nio.ByteBuffer;
	static public function max_key_code(xkbdescrec:java.nio.ByteBuffer,max_key_code:Int):Void;
	@:overload(function (xkbdescrec:java.nio.ByteBuffer):Int {})
	public function getMinKeyCode():Int;
	public function getDpy():haxe.Int64;

}
