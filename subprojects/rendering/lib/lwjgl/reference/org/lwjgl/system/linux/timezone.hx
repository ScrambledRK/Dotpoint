package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.timezone")
@:final
/** Timezone structure  */
extern class Timezone implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TZ_MINUTESWEST:Int;
/** The struct member offsets.  */
	static public var TZ_DSTTIME:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function tz_dsttime(timezone:java.nio.ByteBuffer,tz_dsttime:Int):Void;
	@:overload(function (timezone:java.nio.ByteBuffer):Int {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(tz_minuteswest:Int,tz_dsttime:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function tz_minuteswest(timezone:java.nio.ByteBuffer,tz_minuteswest:Int):Void;
	@:overload(function (timezone:java.nio.ByteBuffer):Int {})
	public function setTzMinuteswest(tz_minuteswest:Int):Void;
	public function getTzMinuteswest():Int;
	public function setTzDsttime(tz_dsttime:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function getTzDsttime():Int;

}
