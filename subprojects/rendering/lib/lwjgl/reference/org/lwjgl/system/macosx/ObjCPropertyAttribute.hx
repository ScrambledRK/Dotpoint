package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.ObjCPropertyAttribute")
@:final
/** Defines a property attribute.  */
extern class ObjCPropertyAttribute implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var NAME:Int;
/** The struct member offsets.  */
	static public var VALUE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setName(name:java.nio.ByteBuffer):Void;
	@:overload(function (name:haxe.Int64):Void {})
	public function getValueString():String;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(name:java.nio.ByteBuffer,value:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getName():haxe.Int64;
	public function getValueBuffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	static public function valueBuffer(objc_property_attribute_t:java.nio.ByteBuffer):java.nio.ByteBuffer;
	static public function nameString(objc_property_attribute_t:java.nio.ByteBuffer):String;
	public function getValue():haxe.Int64;
	public function getNameBuffer():java.nio.ByteBuffer;
	static public function valueString(objc_property_attribute_t:java.nio.ByteBuffer):String;
	public function setValue(value:java.nio.ByteBuffer):Void;
	@:overload(function (value:haxe.Int64):Void {})
	static public function name(objc_property_attribute_t:java.nio.ByteBuffer,name:haxe.Int64):Void;
	@:overload(function (objc_property_attribute_t:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (objc_property_attribute_t:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void {})
	static public function nameBuffer(objc_property_attribute_t:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function buffer():java.nio.ByteBuffer;
	static public function value(objc_property_attribute_t:java.nio.ByteBuffer,value:haxe.Int64):Void;
	@:overload(function (objc_property_attribute_t:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (objc_property_attribute_t:java.nio.ByteBuffer,value:java.nio.ByteBuffer):Void {})
	public function getNameString():String;

}
