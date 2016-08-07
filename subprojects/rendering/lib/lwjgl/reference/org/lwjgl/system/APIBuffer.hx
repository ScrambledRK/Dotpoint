package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.APIBuffer")
/**
 * Helper class for alternative API functions. Instead of the user
 * passing their own buffer, thread-local instances of this class
 * are used internally instead.
 */
extern class APIBuffer 
{
	public function new():Void;
/** Returns the UTF16 string value at the specified byte range.  */
	public function stringValueUTF16(offset:Int,limit:Int):String;
/**
 * Returns the memory address of the specified {@code offset} or {@link MemoryUtil#NULL NULL} if the specified {@code value} is null. This address may
 * change after a call to one of the {@code <type>Param()} methods.
 */
	public function addressSafe(value:Dynamic,offset:Int):haxe.Int64;
/** Returns the current parameter offset.  */
	public function getOffset():Int;
/** Ensures space for an additional byte value and returns the address offset.  */
/** Ensures space for an additional byte value, sets the specified value at the allocated offset and returns that offset.  */
	public function byteParam(value:Int8):Int;
	@:overload(function ():Int {})
/** Ensures space for an additional short value and returns the address offset.  */
/** Ensures space for an additional short value, sets the specified value at the allocated offset and returns that offset.  */
	public function shortParam(value:Int16):Int;
	@:overload(function ():Int {})
/** Ensures space for an additional double value and returns the address offset.  */
/** Ensures space for an additional double value, sets the specified value at the allocated offset and returns that offset.  */
	public function doubleParam(value:Float):Int;
	@:overload(function ():Int {})
/** Returns the pointer value at the specified offset.  */
	public function pointerValue(offset:Int):haxe.Int64;
/** Ensures space for the specified string encoded in UTF-8, encodes the string at the allocated offset and returns that offset.  */
	public function stringParamUTF8(value:java.lang.CharSequence,nullTerminated:Bool):Int;
/** Ensures space for an additional int value and returns the address offset.  */
/** Ensures space for an additional int value, sets the specified value at the allocated offset and returns that offset.  */
/** Sets an int value at the specified index of the int buffer that starts at the specified offset.  */
	public function intParam(offset:Int,index:Int,value:Int):Void;
	@:overload(function ():Int {})
	@:overload(function (value:Int):Int {})
/** Returns the long value at the specified offset.  */
	public function longValue(offset:Int):haxe.Int64;
/** Restores the last pushed parameter offset.  */
	public function pop():org.lwjgl.system.APIBuffer;
/** Returns the UTF8 string value at the specified byte range.  */
	public function stringValueUTF8(offset:Int,limit:Int):String;
/** Sets the current parameter offset.  */
	public function setOffset(offset:Int):Void;
/** Ensures space for an additional float value and returns the address offset.  */
/** Ensures space for an additional float value, sets the specified value at the allocated offset and returns that offset.  */
	public function floatParam(value:Float):Int;
	@:overload(function ():Int {})
/** Ensures space for the specified string encoded in ASCII, encodes the string at the allocated offset and returns that offset.  */
	public function stringParamASCII(value:java.lang.CharSequence,nullTerminated:Bool):Int;
/** Returns the short value at the specified offset.  */
	public function shortValue(offset:Int):Int16;
/** Returns the {@link ByteBuffer} that backs this {@link APIBuffer}.  */
	public function buffer():java.nio.ByteBuffer;
/** Ensures space for an additional buffer with the specified size (in bytes) and returns the address offset.  */
	public function bufferParam(size:Int):Int;
/** Returns the ASCII string value at the specified byte range.  */
	public function stringValueASCII(offset:Int,limit:Int):String;
/** Returns the memory address of the internal {@link ByteBuffer}. This address may change after a call to one of the {@code <type>Param()} methods.  */
/** Returns the memory address of the specified {@code offset}. This address may change after a call to one of the {@code <type>Param()} methods.  */
	public function address(offset:Int):haxe.Int64;
	@:overload(function ():haxe.Int64 {})
/** Returns the int value at the specified offset.  */
	public function intValue(offset:Int):Int;
/** Returns the float value at the specified offset.  */
	public function floatValue(offset:Int):Float;
/** Returns the double value at the specified offset.  */
	public function doubleValue(offset:Int):Float;
/** Pushes the current parameter offset to a stack.  */
	public function push():org.lwjgl.system.APIBuffer;
/** Ensures space for an additional pointer value and returns the address offset.  */
/** Ensures space for an additional pointer value, sets the specified value at the allocated offset and returns that offset.  */
/** Ensures space for an additional pointer value, sets the specified value at the allocated offset and returns that offset.  */
/** Sets a pointer value at the specified index of the pointer buffer that starts at the specified offset.  */
	public function pointerParam(offset:Int,index:Int,value:haxe.Int64):Void;
	@:overload(function ():Int {})
	@:overload(function (value:haxe.Int64):Int {})
	@:overload(function (value:org.lwjgl.system.PointerWrapper):Int {})
/** Ensures space for an additional long value and returns the address offset.  */
/** Ensures space for an additional long value, sets the specified value at the allocated offset and returns that offset.  */
	public function longParam(value:haxe.Int64):Int;
	@:overload(function ():Int {})
/** Ensures space for the specified string encoded in UTF-16, encodes the string at the allocated offset and returns that offset.  */
	public function stringParamUTF16(value:java.lang.CharSequence,nullTerminated:Bool):Int;
/** Resets the parameter offset to 0.  */
	public function reset():org.lwjgl.system.APIBuffer;
/** Ensures space for an additional boolean value and returns the address offset.  */
/** Ensures space for an additional boolean value, sets the specified value at the allocated offset and returns that offset.  */
	public function booleanParam(value:Bool):Int;
	@:overload(function ():Int {})
/** Returns the boolean value at the specified offset.  */
	public function booleanValue(offset:Int):Bool;
/** Returns the boolean value at the specified offset.  */
	public function byteValue(offset:Int):Int8;

}
