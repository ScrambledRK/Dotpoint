package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XkbKeyAliasRec")
@:final
/** Xkb key alias record.  */
extern class XkbKeyAliasRec implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var REAL:Int;
/** The struct member offsets.  */
	static public var ALIAS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Alternative virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(real:java.nio.ByteBuffer,alias:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	@:overload(function (real:java.lang.CharSequence,alias:java.lang.CharSequence):java.nio.ByteBuffer {})
	public function getRealString():String;
	static public function aliasGet(xkbkeyaliasrec:java.nio.ByteBuffer,alias:java.nio.ByteBuffer):Void;
	public function getPointer():haxe.Int64;
	static public function real(xkbkeyaliasrec:java.nio.ByteBuffer,real:java.lang.CharSequence):Void;
	static public function aliasString(xkbkeyaliasrec:java.nio.ByteBuffer):String;
	static public function realSet(xkbkeyaliasrec:java.nio.ByteBuffer,real:java.nio.ByteBuffer):Void;
	static public function realString(xkbkeyaliasrec:java.nio.ByteBuffer):String;
	public function setReal(real:java.nio.ByteBuffer):Void;
	@:overload(function (real:java.lang.CharSequence):Void {})
	public function getAliasString():String;
	public function getReal(real:java.nio.ByteBuffer):Void;
	static public function realGet(xkbkeyaliasrec:java.nio.ByteBuffer,real:java.nio.ByteBuffer):Void;
	static public function alias(xkbkeyaliasrec:java.nio.ByteBuffer,alias:java.lang.CharSequence):Void;
	public function buffer():java.nio.ByteBuffer;
	public function setAlias(alias:java.nio.ByteBuffer):Void;
	@:overload(function (alias:java.lang.CharSequence):Void {})
	public function getAlias(alias:java.nio.ByteBuffer):Void;
	static public function aliasSet(xkbkeyaliasrec:java.nio.ByteBuffer,alias:java.nio.ByteBuffer):Void;

}
