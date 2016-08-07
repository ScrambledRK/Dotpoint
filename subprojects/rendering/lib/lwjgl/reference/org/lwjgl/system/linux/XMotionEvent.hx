package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XMotionEvent")
@:final
/** Motion event.  */
extern class XMotionEvent implements org.lwjgl.Pointer
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
	static public var ROOT:Int;
/** The struct member offsets.  */
	static public var SUBWINDOW:Int;
/** The struct member offsets.  */
	static public var TIME:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
/** The struct member offsets.  */
	static public var X_ROOT:Int;
/** The struct member offsets.  */
	static public var Y_ROOT:Int;
/** The struct member offsets.  */
	static public var STATE:Int;
/** The struct member offsets.  */
	static public var IS_HINT:Int;
/** The struct member offsets.  */
	static public var SAME_SCREEN:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setY(y:Int):Void;
	public function setYRoot(y_root:Int):Void;
	static public function y_root(xmotionevent:java.nio.ByteBuffer,y_root:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	public function setX(x:Int):Void;
	public function getWindow():haxe.Int64;
	public function getSameScreen():Int;
	public function getTime():haxe.Int64;
	static public function type(xmotionevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	public function setXRoot(x_root:Int):Void;
	static public function root(xmotionevent:java.nio.ByteBuffer,root:haxe.Int64):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
	public function getXRoot():Int;
	static public function state(xmotionevent:java.nio.ByteBuffer,state:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	public function getRoot():haxe.Int64;
	public function setTime(time:haxe.Int64):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,window:haxe.Int64,root:haxe.Int64,subwindow:haxe.Int64,time:haxe.Int64,x:Int,y:Int,x_root:Int,y_root:Int,state:Int,is_hint:Int,same_screen:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setDisplay(display:haxe.Int64):Void;
	public function setIsHint(is_hint:Int):Void;
	public function setSameScreen(same_screen:Int):Void;
	static public function subwindow(xmotionevent:java.nio.ByteBuffer,subwindow:haxe.Int64):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function display(xmotionevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getYRoot():Int;
	public function setWindow(window:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function setRoot(root:haxe.Int64):Void;
	public function getSendEvent():Int;
	static public function is_hint(xmotionevent:java.nio.ByteBuffer,is_hint:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	public function setType(type:Int):Void;
	public function getX():Int;
	public function getSerial():haxe.Int64;
	public function getY():Int;
	public function getState():Int;
	static public function send_event(xmotionevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	static public function serial(xmotionevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setSerial(serial:haxe.Int64):Void;
	static public function x(xmotionevent:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	public function setSubwindow(subwindow:haxe.Int64):Void;
	public function setState(state:Int):Void;
	public function getSubwindow():haxe.Int64;
	static public function y(xmotionevent:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	static public function same_screen(xmotionevent:java.nio.ByteBuffer,same_screen:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	static public function window(xmotionevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function time(xmotionevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function x_root(xmotionevent:java.nio.ByteBuffer,x_root:Int):Void;
	@:overload(function (xmotionevent:java.nio.ByteBuffer):Int {})
	public function getIsHint():Int;
	public function getDisplay():haxe.Int64;

}
