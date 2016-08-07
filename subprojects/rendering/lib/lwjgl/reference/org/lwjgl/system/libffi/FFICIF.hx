package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.FFICIF")
@:final
/** Contains information about a libffi call interface.  */
extern class FFICIF implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var ABI:Int;
/** The struct member offsets.  */
	static public var NARGS:Int;
/** The struct member offsets.  */
	static public var ARG_TYPES:Int;
/** The struct member offsets.  */
	static public var RTYPE:Int;
/** The struct member offsets.  */
	static public var BYTES:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setBytes(bytes:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(abi:Int,nargs:Int,arg_types:java.nio.ByteBuffer,rtype:haxe.Int64,bytes:Int,flags:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setRtype(rtype:haxe.Int64):Void;
	public function setArgTypes(arg_types:java.nio.ByteBuffer):Void;
	@:overload(function (arg_types:haxe.Int64):Void {})
	public function setAbi(abi:Int):Void;
	static public function flags(ffi_cif:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (ffi_cif:java.nio.ByteBuffer):Int {})
	static public function abi(ffi_cif:java.nio.ByteBuffer,abi:Int):Void;
	@:overload(function (ffi_cif:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function getNargs():Int;
	public function getRtype():haxe.Int64;
	public function setNargs(nargs:Int):Void;
	public function getBytes():Int;
	static public function nargs(ffi_cif:java.nio.ByteBuffer,nargs:Int):Void;
	@:overload(function (ffi_cif:java.nio.ByteBuffer):Int {})
	static public function rtype(ffi_cif:java.nio.ByteBuffer,rtype:haxe.Int64):Void;
	@:overload(function (ffi_cif:java.nio.ByteBuffer):haxe.Int64 {})
	static public function bytes(ffi_cif:java.nio.ByteBuffer,bytes:Int):Void;
	@:overload(function (ffi_cif:java.nio.ByteBuffer):Int {})
	public function getArgTypes(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function getAbi():Int;
	public function buffer():java.nio.ByteBuffer;
	public function getFlags():Int;
	static public function arg_types(ffi_cif:java.nio.ByteBuffer,arg_types:haxe.Int64):Void;
	@:overload(function (ffi_cif:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (ffi_cif:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (ffi_cif:java.nio.ByteBuffer,arg_types:java.nio.ByteBuffer):Void {})
	public function setFlags(flags:Int):Void;

}
