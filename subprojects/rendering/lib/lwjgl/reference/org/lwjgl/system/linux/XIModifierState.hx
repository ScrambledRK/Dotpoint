package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XIModifierState")
@:final
/** XInput2 modifier state.  */
extern class XIModifierState implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var BASE:Int;
/** The struct member offsets.  */
	static public var LATCHED:Int;
/** The struct member offsets.  */
	static public var LOCKED:Int;
/** The struct member offsets.  */
	static public var EFFECTIVE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(base:Int,latched:Int,locked:Int,effective:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getLatched():Int;
	public function getPointer():haxe.Int64;
	public function getLocked():Int;
	public function setLocked(locked:Int):Void;
	static public function effective(ximodifierstate:java.nio.ByteBuffer,effective:Int):Void;
	@:overload(function (ximodifierstate:java.nio.ByteBuffer):Int {})
	public function setEffective(effective:Int):Void;
	public function getEffective():Int;
	public function setLatched(latched:Int):Void;
	public function getBase():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setBase(base:Int):Void;
	static public function latched(ximodifierstate:java.nio.ByteBuffer,latched:Int):Void;
	@:overload(function (ximodifierstate:java.nio.ByteBuffer):Int {})
	static public function locked(ximodifierstate:java.nio.ByteBuffer,locked:Int):Void;
	@:overload(function (ximodifierstate:java.nio.ByteBuffer):Int {})
	static public function base(ximodifierstate:java.nio.ByteBuffer,base:Int):Void;
	@:overload(function (ximodifierstate:java.nio.ByteBuffer):Int {})

}
