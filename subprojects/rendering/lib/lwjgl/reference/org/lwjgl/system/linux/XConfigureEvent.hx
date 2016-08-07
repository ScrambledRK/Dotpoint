package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XConfigureEvent")
@:final
/** Motion event.  */
extern class XConfigureEvent implements org.lwjgl.Pointer
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
	static public var EVENT:Int;
/** The struct member offsets.  */
	static public var WINDOW:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
/** The struct member offsets.  */
	static public var WIDTH:Int;
/** The struct member offsets.  */
	static public var HEIGHT:Int;
/** The struct member offsets.  */
	static public var BORDER_WIDTH:Int;
/** The struct member offsets.  */
	static public var ABOVE:Int;
/** The struct member offsets.  */
	static public var OVERRIDE_REDIRECT:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getEvent():haxe.Int64;
	public function setY(y:Int):Void;
	public function setX(x:Int):Void;
	public function getWindow():haxe.Int64;
	public function getAbove():haxe.Int64;
	public function getBorderWidth():Int;
	public function setOverrideRedirect(override_redirect:Int):Void;
	public function getWidth():Int;
	static public function type(xconfigureevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
	public function setBorderWidth(border_width:Int):Void;
	public function getHeight():Int;
	static public function above(xconfigureevent:java.nio.ByteBuffer,above:haxe.Int64):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
	static public function event(xconfigureevent:java.nio.ByteBuffer,event:haxe.Int64):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function height(xconfigureevent:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,event:haxe.Int64,window:haxe.Int64,x:Int,y:Int,width:Int,height:Int,border_width:Int,above:haxe.Int64,override_redirect:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function border_width(xconfigureevent:java.nio.ByteBuffer,border_width:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
	public function setDisplay(display:haxe.Int64):Void;
	static public function display(xconfigureevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setEvent(event:haxe.Int64):Void;
	public function setWindow(window:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function setAbove(above:haxe.Int64):Void;
	public function getSendEvent():Int;
	public function setType(type:Int):Void;
	public function setWidth(width:Int):Void;
	public function setHeight(height:Int):Void;
	static public function override_redirect(xconfigureevent:java.nio.ByteBuffer,override_redirect:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
	public function getX():Int;
	public function getSerial():haxe.Int64;
	public function getY():Int;
	static public function send_event(xconfigureevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	static public function serial(xconfigureevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setSerial(serial:haxe.Int64):Void;
	static public function x(xconfigureevent:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
	static public function width(xconfigureevent:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
	static public function y(xconfigureevent:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):Int {})
	public function getOverrideRedirect():Int;
	static public function window(xconfigureevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xconfigureevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getDisplay():haxe.Int64;

}
