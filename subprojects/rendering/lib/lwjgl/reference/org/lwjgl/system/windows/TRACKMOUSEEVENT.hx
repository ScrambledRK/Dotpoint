package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.TRACKMOUSEEVENT")
@:final
/**
 * Used by the {@link WinUser#TrackMouseEvent} function to track when the mouse pointer leaves a window or hovers over a window for a specified amount
 * of time.
 */
extern class TRACKMOUSEEVENT implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var HWNDTRACK:Int;
/** The struct member offsets.  */
	static public var HOVERTIME:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(size:Int,flags:Int,hwndTrack:haxe.Int64,hoverTime:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setHwndTrack(hwndTrack:haxe.Int64):Void;
	static public function hwndTrack(trackmouseevent:java.nio.ByteBuffer,hwndTrack:haxe.Int64):Void;
	@:overload(function (trackmouseevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function flags(trackmouseevent:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (trackmouseevent:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function setHoverTime(hoverTime:Int):Void;
	public function getSize():Int;
	public function setSize(size:Int):Void;
	static public function size(trackmouseevent:java.nio.ByteBuffer,size:Int):Void;
	@:overload(function (trackmouseevent:java.nio.ByteBuffer):Int {})
	public function getHoverTime():Int;
	public function buffer():java.nio.ByteBuffer;
	public function getFlags():Int;
	public function getHwndTrack():haxe.Int64;
	public function setFlags(flags:Int):Void;
	static public function hoverTime(trackmouseevent:java.nio.ByteBuffer,hoverTime:Int):Void;
	@:overload(function (trackmouseevent:java.nio.ByteBuffer):Int {})

}
