package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.MSG")
@:final
/** Contains message information from a thread's message queue.  */
extern class MSG implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var WINDOW:Int;
/** The struct member offsets.  */
	static public var MESSAGE:Int;
/** The struct member offsets.  */
	static public var WPARAM:Int;
/** The struct member offsets.  */
	static public var LPARAM:Int;
/** The struct member offsets.  */
	static public var TIME:Int;
/** The struct member offsets.  */
	static public var POINT:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getLParam():haxe.Int64;
	public function setPoint(point:java.nio.ByteBuffer):Void;
	public function getWindow():haxe.Int64;
	public function getTime():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setTime(time:Int):Void;
	public function getPoint(point:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(window:haxe.Int64,message:Int,wParam:haxe.Int64,lParam:haxe.Int64,time:Int,point:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function lParam(msg:java.nio.ByteBuffer,lParam:haxe.Int64):Void;
	@:overload(function (msg:java.nio.ByteBuffer):haxe.Int64 {})
	static public function pointX(msg:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (msg:java.nio.ByteBuffer):Int {})
	static public function pointY(msg:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (msg:java.nio.ByteBuffer):Int {})
	public function getMessage():Int;
	public function setWindow(window:haxe.Int64):Void;
	public function setWParam(wParam:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function setMessage(message:Int):Void;
	static public function message(msg:java.nio.ByteBuffer,message:Int):Void;
	@:overload(function (msg:java.nio.ByteBuffer):Int {})
	static public function pointGet(msg:java.nio.ByteBuffer,point:java.nio.ByteBuffer):Void;
	public function setLParam(lParam:haxe.Int64):Void;
	public function getWParam():haxe.Int64;
	public function setPointX(x:Int):Void;
	public function setPointY(y:Int):Void;
	static public function wParam(msg:java.nio.ByteBuffer,wParam:haxe.Int64):Void;
	@:overload(function (msg:java.nio.ByteBuffer):haxe.Int64 {})
	static public function pointSet(msg:java.nio.ByteBuffer,point:java.nio.ByteBuffer):Void;
	static public function window(msg:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (msg:java.nio.ByteBuffer):haxe.Int64 {})
	static public function time(msg:java.nio.ByteBuffer,time:Int):Void;
	@:overload(function (msg:java.nio.ByteBuffer):Int {})
	public function getPointY():Int;
	public function getPointX():Int;

}
