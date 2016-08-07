package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XClientMessageEvent")
@:final
/** Client message event.  */
extern class XClientMessageEvent implements org.lwjgl.Pointer
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
	static public var MESSAGE_TYPE:Int;
/** The struct member offsets.  */
	static public var FORMAT:Int;
/** The struct member offsets.  */
	static public var DATA:Int;
/** The struct member offsets.  */
	static public var DATA_B:Int;
/** The struct member offsets.  */
	static public var DATA_S:Int;
/** The struct member offsets.  */
	static public var DATA_L:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getWindow():haxe.Int64;
	static public function dataBGet(xclientmessageevent:java.nio.ByteBuffer,b:java.nio.ByteBuffer):Void;
	static public function dataS(xclientmessageevent:java.nio.ByteBuffer,index:Int,s:Int16):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer,index:Int):Int16 {})
	static public function dataLGet(xclientmessageevent:java.nio.ByteBuffer,l:java.nio.ByteBuffer):Void;
	public function setDataB(index:Int,b:Int8):Void;
	@:overload(function (b:java.nio.ByteBuffer):Void {})
	static public function type(xclientmessageevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer):Int {})
	static public function dataSGet(xclientmessageevent:java.nio.ByteBuffer,s:java.nio.ByteBuffer):Void;
	static public function dataL(xclientmessageevent:java.nio.ByteBuffer,index:Int,l:haxe.Int64):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer,index:Int):haxe.Int64 {})
	public function setFormat(format:Int):Void;
	public function getFormat():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
	static public function dataSSet(xclientmessageevent:java.nio.ByteBuffer,s:java.nio.ByteBuffer):Void;
	public function getMessageType():haxe.Int64;
	public function getDataL(l:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,window:haxe.Int64,message_type:haxe.Int64,format:Int,data_b:java.nio.ByteBuffer,data_s:java.nio.ByteBuffer,data_l:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setDisplay(display:haxe.Int64):Void;
	static public function display(xclientmessageevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function format(xclientmessageevent:java.nio.ByteBuffer,format:Int):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer):Int {})
	public function setWindow(window:haxe.Int64):Void;
	static public function message_type(xclientmessageevent:java.nio.ByteBuffer,message_type:haxe.Int64):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getPointer():haxe.Int64;
	public function getSendEvent():Int;
	public function setType(type:Int):Void;
	public function setMessageType(message_type:haxe.Int64):Void;
	public function getDataB(b:java.nio.ByteBuffer):Void;
	static public function dataBSet(xclientmessageevent:java.nio.ByteBuffer,b:java.nio.ByteBuffer):Void;
	public function getSerial():haxe.Int64;
	static public function send_event(xclientmessageevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	static public function serial(xclientmessageevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function dataB(xclientmessageevent:java.nio.ByteBuffer,index:Int,b:Int8):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer,index:Int):Int8 {})
	public function setSerial(serial:haxe.Int64):Void;
	public function setDataL(index:Int,l:haxe.Int64):Void;
	@:overload(function (l:java.nio.ByteBuffer):Void {})
	static public function window(xclientmessageevent:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (xclientmessageevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setDataS(index:Int,s:Int16):Void;
	@:overload(function (s:java.nio.ByteBuffer):Void {})
	public function getDisplay():haxe.Int64;
	static public function dataLSet(xclientmessageevent:java.nio.ByteBuffer,l:java.nio.ByteBuffer):Void;
	public function getDataS(s:java.nio.ByteBuffer):Void;

}
