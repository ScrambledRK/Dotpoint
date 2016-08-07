package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XAnyEvent")
@:final
/** Any event.  */
extern class XAnyEvent implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TYPE:Int;
/** The struct member offsets.  */
	static public var SERIAL:Int;
/** The struct member offsets.  */
	static public var SEND_EVENT:Int;
/** The struct member offsets.  */
	static public var DISPLAY:Int;
/** The struct member offsets.  */
	static public var WINDOW:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,window:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setDisplay(display:haxe.Int64):Void;
	public function getWindow():haxe.Int64;
	static public function display(xanyevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xanyevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setWindow(window:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function getSendEvent():Int;
	public function setType(type:Int):Void;
	static public function type(xanyevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xanyevent:java.nio.ByteBuffer):Int {})
	public function getSerial():haxe.Int64;
	static public function send_event(xanyevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xanyevent:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	static public function serial(xanyevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xanyevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setSerial(serial:haxe.Int64):Void;
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
	static public function window(xanyevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xanyevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getDisplay():haxe.Int64;

}
