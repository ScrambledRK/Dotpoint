package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.FFIType")
@:final
/** Contains information about a libffi type.  */
extern class FFIType implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
/** The struct member offsets.  */
	static public var ALIGNMENT:Int;
/** The struct member offsets.  */
	static public var TYPE:Int;
/** The struct member offsets.  */
	static public var ELEMENTS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getAlignment():Int;
	public function setAlignment(alignment:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(size:haxe.Int64,alignment:Int,type:Int,elements:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setElements(elements:java.nio.ByteBuffer):Void;
	@:overload(function (elements:haxe.Int64):Void {})
	public function getPointer():haxe.Int64;
	public function setType(type:Int):Void;
	static public function type(ffi_type:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (ffi_type:java.nio.ByteBuffer):Int {})
	public function getSize():haxe.Int64;
	public function setSize(size:haxe.Int64):Void;
	static public function size(ffi_type:java.nio.ByteBuffer,size:haxe.Int64):Void;
	@:overload(function (ffi_type:java.nio.ByteBuffer):haxe.Int64 {})
	public function getType():Int;
	public function getElements(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function elements(ffi_type:java.nio.ByteBuffer,elements:haxe.Int64):Void;
	@:overload(function (ffi_type:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (ffi_type:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (ffi_type:java.nio.ByteBuffer,elements:java.nio.ByteBuffer):Void {})
	public function buffer():java.nio.ByteBuffer;
	static public function alignment(ffi_type:java.nio.ByteBuffer,alignment:Int):Void;
	@:overload(function (ffi_type:java.nio.ByteBuffer):Int {})

}
