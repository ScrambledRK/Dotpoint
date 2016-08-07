package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XGenericEventCookie")
@:final
/** Additional information for an {@code XGenericEvent}.  */
extern class XGenericEventCookie implements org.lwjgl.Pointer
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
	static public var EXTENSION:Int;
/** The struct member offsets.  */
	static public var EVTYPE:Int;
/** The struct member offsets.  */
	static public var COOKIE:Int;
/** The struct member offsets.  */
	static public var DATA:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function extension(xgenericeventcookie:java.nio.ByteBuffer,extension:Int):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):Int {})
	public function setExtension(extension:Int):Void;
	public function getEvtype():Int;
	static public function data(xgenericeventcookie:java.nio.ByteBuffer,data:haxe.Int64):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer,data:java.nio.ByteBuffer):Void {})
	static public function type(xgenericeventcookie:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):Int {})
	public function getCookie():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
	public function getData(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,extension:Int,evtype:Int,cookie:Int,data:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setDisplay(display:haxe.Int64):Void;
	public function getExtension():Int;
	static public function cookie(xgenericeventcookie:java.nio.ByteBuffer,cookie:Int):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):Int {})
	public function setData(data:java.nio.ByteBuffer):Void;
	@:overload(function (data:haxe.Int64):Void {})
	static public function evtype(xgenericeventcookie:java.nio.ByteBuffer,evtype:Int):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):Int {})
	static public function display(xgenericeventcookie:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):haxe.Int64 {})
	public function setCookie(cookie:Int):Void;
	public function getPointer():haxe.Int64;
	public function getSendEvent():Int;
	public function setType(type:Int):Void;
	public function getSerial():haxe.Int64;
	static public function send_event(xgenericeventcookie:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	static public function serial(xgenericeventcookie:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xgenericeventcookie:java.nio.ByteBuffer):haxe.Int64 {})
	public function setEvtype(evtype:Int):Void;
	public function setSerial(serial:haxe.Int64):Void;
	public function getDisplay():haxe.Int64;

}
