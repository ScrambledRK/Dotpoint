package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XErrorEvent")
@:final
/** Error event.  */
extern class XErrorEvent implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TYPE:Int;
/** The struct member offsets.  */
	static public var DISPLAY:Int;
/** The struct member offsets.  */
	static public var SERIAL:Int;
/** The struct member offsets.  */
	static public var ERROR_CODE:Int;
/** The struct member offsets.  */
	static public var REQUEST_CODE:Int;
/** The struct member offsets.  */
	static public var MINOR_CODE:Int;
/** The struct member offsets.  */
	static public var RESOURCEID:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,display:haxe.Int64,serial:haxe.Int64,error_code:Int,request_code:Int,minor_code:Int,resourceid:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function resourceid(xerrorevent:java.nio.ByteBuffer,resourceid:haxe.Int64):Void;
	@:overload(function (xerrorevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setDisplay(display:haxe.Int64):Void;
	public function getMinorCode():Int;
	static public function display(xerrorevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xerrorevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function minor_code(xerrorevent:java.nio.ByteBuffer,minor_code:Int):Void;
	@:overload(function (xerrorevent:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function setType(type:Int):Void;
	static public function type(xerrorevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xerrorevent:java.nio.ByteBuffer):Int {})
	public function setErrorCode(error_code:Int):Void;
	public function getSerial():haxe.Int64;
	public function getResourceid():haxe.Int64;
	public function getType():Int;
	public function getErrorCode():Int;
	static public function serial(xerrorevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xerrorevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setSerial(serial:haxe.Int64):Void;
	public function setRequestCode(request_code:Int):Void;
	static public function error_code(xerrorevent:java.nio.ByteBuffer,error_code:Int):Void;
	@:overload(function (xerrorevent:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function setResourceid(resourceid:haxe.Int64):Void;
	static public function request_code(xerrorevent:java.nio.ByteBuffer,request_code:Int):Void;
	@:overload(function (xerrorevent:java.nio.ByteBuffer):Int {})
	public function setMinorCode(minor_code:Int):Void;
	public function getRequestCode():Int;
	public function getDisplay():haxe.Int64;

}
