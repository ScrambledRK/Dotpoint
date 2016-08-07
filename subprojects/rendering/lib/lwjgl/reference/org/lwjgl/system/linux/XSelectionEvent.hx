package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XSelectionEvent")
@:final
/** Selection event structure.  */
extern class XSelectionEvent implements org.lwjgl.Pointer
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
	static public var REQUESTOR:Int;
/** The struct member offsets.  */
	static public var SELECTION:Int;
/** The struct member offsets.  */
	static public var TARGET:Int;
/** The struct member offsets.  */
	static public var PROPERTY:Int;
/** The struct member offsets.  */
	static public var TIME:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getTime():haxe.Int64;
	static public function type(xselectionevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):Int {})
	public function getTarget():haxe.Int64;
	static public function property(xselectionevent:java.nio.ByteBuffer,property:haxe.Int64):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setTarget(target:haxe.Int64):Void;
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
	public function setTime(time:haxe.Int64):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,requestor:haxe.Int64,selection:haxe.Int64,target:haxe.Int64,property:haxe.Int64,time:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setDisplay(display:haxe.Int64):Void;
	public function getProperty():haxe.Int64;
	static public function display(xselectionevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getPointer():haxe.Int64;
	public function getSendEvent():Int;
	public function setType(type:Int):Void;
	public function setRequestor(requestor:haxe.Int64):Void;
	static public function requestor(xselectionevent:java.nio.ByteBuffer,requestor:haxe.Int64):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function target(xselectionevent:java.nio.ByteBuffer,target:haxe.Int64):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setSelection(selection:haxe.Int64):Void;
	public function getSerial():haxe.Int64;
	public function getSelection():haxe.Int64;
	static public function send_event(xselectionevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):Int {})
	static public function selection(xselectionevent:java.nio.ByteBuffer,selection:haxe.Int64):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getType():Int;
	static public function serial(xselectionevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getRequestor():haxe.Int64;
	public function setProperty(property:haxe.Int64):Void;
	public function setSerial(serial:haxe.Int64):Void;
	static public function time(xselectionevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xselectionevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getDisplay():haxe.Int64;

}
