package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XPropertyEvent")
@:final
/** Property event.  */
extern class XPropertyEvent implements org.lwjgl.Pointer
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
/** The struct member offsets.  */
	static public var ATOM:Int;
/** The struct member offsets.  */
	static public var TIME:Int;
/** The struct member offsets.  */
	static public var STATE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getWindow():haxe.Int64;
	public function getTime():haxe.Int64;
	static public function type(xpropertyevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
	public function setAtom(atom:haxe.Int64):Void;
	static public function state(xpropertyevent:java.nio.ByteBuffer,state:Int):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):Int {})
	public function setTime(time:haxe.Int64):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,window:haxe.Int64,atom:haxe.Int64,time:haxe.Int64,state:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setDisplay(display:haxe.Int64):Void;
	static public function display(xpropertyevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setWindow(window:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function getSendEvent():Int;
	public function setType(type:Int):Void;
	public function getSerial():haxe.Int64;
	public function getState():Int;
	static public function send_event(xpropertyevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	static public function serial(xpropertyevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setSerial(serial:haxe.Int64):Void;
	public function setState(state:Int):Void;
	public function getAtom():haxe.Int64;
	static public function window(xpropertyevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function time(xpropertyevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function atom(xpropertyevent:java.nio.ByteBuffer,atom:haxe.Int64):Void;
	@:overload(function (xpropertyevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getDisplay():haxe.Int64;

}
