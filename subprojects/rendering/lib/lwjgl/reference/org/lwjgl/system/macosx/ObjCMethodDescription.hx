package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.ObjCMethodDescription")
@:final
/** Defines a method.  */
extern class ObjCMethodDescription implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var NAME:Int;
/** The struct member offsets.  */
	static public var TYPES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setName(name:haxe.Int64):Void;
	public function getTypesBuffer():java.nio.ByteBuffer;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(name:haxe.Int64,types:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function types(objc_method_description:java.nio.ByteBuffer,types:haxe.Int64):Void;
	@:overload(function (objc_method_description:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (objc_method_description:java.nio.ByteBuffer,types:java.nio.ByteBuffer):Void {})
	public function getName():haxe.Int64;
	public function getPointer():haxe.Int64;
	public function getTypesString():String;
	static public function typesString(objc_method_description:java.nio.ByteBuffer):String;
	public function setTypes(types:java.nio.ByteBuffer):Void;
	@:overload(function (types:haxe.Int64):Void {})
	static public function typesBuffer(objc_method_description:java.nio.ByteBuffer):java.nio.ByteBuffer;
	static public function name(objc_method_description:java.nio.ByteBuffer,name:haxe.Int64):Void;
	@:overload(function (objc_method_description:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function getTypes():haxe.Int64;

}
