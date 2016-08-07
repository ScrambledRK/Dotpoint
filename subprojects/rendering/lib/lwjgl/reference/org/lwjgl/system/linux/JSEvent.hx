package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.JSEvent")
@:final
/** Joystick event.  */
extern class JSEvent implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TIME:Int;
/** The struct member offsets.  */
	static public var VALUE:Int;
/** The struct member offsets.  */
	static public var TYPE:Int;
/** The struct member offsets.  */
	static public var NUMBER:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(time:Int,value:Int,type:Int,number:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getTime():Int;
	public function getPointer():haxe.Int64;
	public function setType(type:Int):Void;
	static public function type(js_event:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (js_event:java.nio.ByteBuffer):Int {})
	public function setNumber(number:Int):Void;
	public function getNumber():Int;
	public function getValue():Int;
	static public function number(js_event:java.nio.ByteBuffer,number:Int):Void;
	@:overload(function (js_event:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	public function setValue(value:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	static public function time(js_event:java.nio.ByteBuffer,time:Int):Void;
	@:overload(function (js_event:java.nio.ByteBuffer):Int {})
	static public function value(js_event:java.nio.ByteBuffer,value:Int):Void;
	@:overload(function (js_event:java.nio.ByteBuffer):Int {})
	public function setTime(time:Int):Void;

}
