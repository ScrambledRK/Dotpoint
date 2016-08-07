package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XComposeStatus")
@:final
/** Compose sequence status structure, used in calling {@link Xutil#XLookupString}.  */
extern class XComposeStatus implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var COMPOSE_PTR:Int;
/** The struct member offsets.  */
	static public var CHARS_MATCHED:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setComposePtr(compose_ptr:java.nio.ByteBuffer):Void;
	@:overload(function (compose_ptr:haxe.Int64):Void {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(compose_ptr:java.nio.ByteBuffer,chars_matched:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getCharsMatched():Int;
	public function getComposePtr(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function setCharsMatched(chars_matched:Int):Void;
	static public function compose_ptr(xcomposestatus:java.nio.ByteBuffer,compose_ptr:haxe.Int64):Void;
	@:overload(function (xcomposestatus:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xcomposestatus:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xcomposestatus:java.nio.ByteBuffer,compose_ptr:java.nio.ByteBuffer):Void {})
	static public function chars_matched(xcomposestatus:java.nio.ByteBuffer,chars_matched:Int):Void;
	@:overload(function (xcomposestatus:java.nio.ByteBuffer):Int {})

}
