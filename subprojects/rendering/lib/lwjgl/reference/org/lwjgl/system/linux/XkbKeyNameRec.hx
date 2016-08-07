package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XkbKeyNameRec")
@:final
/** Xkb key name record.  */
extern class XkbKeyNameRec implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var NAME:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setName(name:java.nio.ByteBuffer):Void;
	@:overload(function (name:java.lang.CharSequence):Void {})
	static public function nameString(xkbkeynamerec:java.nio.ByteBuffer):String;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Alternative virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(name:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	@:overload(function (name:java.lang.CharSequence):java.nio.ByteBuffer {})
	public function getName(name:java.nio.ByteBuffer):Void;
	static public function nameSet(xkbkeynamerec:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	static public function name(xkbkeynamerec:java.nio.ByteBuffer,name:java.lang.CharSequence):Void;
	static public function nameGet(xkbkeynamerec:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function getNameString():String;

}
