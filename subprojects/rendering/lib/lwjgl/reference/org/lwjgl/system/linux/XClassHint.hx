package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XClassHint")
@:final
/** Used by {@link Xlib#XSetClassHint}.  */
extern class XClassHint implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var RES_NAME:Int;
/** The struct member offsets.  */
	static public var RES_CLASS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(res_name:java.nio.ByteBuffer,res_class:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function res_class(xclasshint:java.nio.ByteBuffer,res_class:haxe.Int64):Void;
	@:overload(function (xclasshint:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xclasshint:java.nio.ByteBuffer,res_class:java.nio.ByteBuffer):Void {})
	public function getPointer():haxe.Int64;
	static public function res_name(xclasshint:java.nio.ByteBuffer,res_name:haxe.Int64):Void;
	@:overload(function (xclasshint:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xclasshint:java.nio.ByteBuffer,res_name:java.nio.ByteBuffer):Void {})
	static public function res_classString(xclasshint:java.nio.ByteBuffer):String;
	public function getResNameString():String;
	public function getResClassString():String;
	public function getResName():haxe.Int64;
	public function setResClass(res_class:java.nio.ByteBuffer):Void;
	@:overload(function (res_class:haxe.Int64):Void {})
	static public function res_classBuffer(xclasshint:java.nio.ByteBuffer):java.nio.ByteBuffer;
	static public function res_nameString(xclasshint:java.nio.ByteBuffer):String;
	static public function res_nameBuffer(xclasshint:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function getResNameBuffer():java.nio.ByteBuffer;
	public function buffer():java.nio.ByteBuffer;
	public function getResClass():haxe.Int64;
	public function getResClassBuffer():java.nio.ByteBuffer;
	public function setResName(res_name:java.nio.ByteBuffer):Void;
	@:overload(function (res_name:haxe.Int64):Void {})

}
