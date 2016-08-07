package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.FFIClosure")
@:final
/** The libffi closure structure.  */
extern class FFIClosure implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var CIF:Int;
/** The struct member offsets.  */
	static public var FUN:Int;
/** The struct member offsets.  */
	static public var USER_DATA:Int;
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getFun():haxe.Int64;
	static public function cif(ffi_closure:java.nio.ByteBuffer,cif:haxe.Int64):Void;
	@:overload(function (ffi_closure:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (ffi_closure:java.nio.ByteBuffer,cif:java.nio.ByteBuffer):Void {})
	public function getCif():haxe.Int64;
	public function getPointer():haxe.Int64;
	static public function user_data(ffi_closure:java.nio.ByteBuffer,user_data:haxe.Int64):Void;
	@:overload(function (ffi_closure:java.nio.ByteBuffer):haxe.Int64 {})
	static public function cifBuffer(ffi_closure:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function getCifBuffer():java.nio.ByteBuffer;
	public function buffer():java.nio.ByteBuffer;
	public function getUserData():haxe.Int64;
	public function setCif(cif:java.nio.ByteBuffer):Void;
	@:overload(function (cif:haxe.Int64):Void {})
	public function setUserData(user_data:haxe.Int64):Void;
	static public function fun(ffi_closure:java.nio.ByteBuffer,fun:haxe.Int64):Void;
	@:overload(function (ffi_closure:java.nio.ByteBuffer):haxe.Int64 {})
	public function setFun(fun:haxe.Int64):Void;

}
