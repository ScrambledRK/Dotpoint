package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXStereoNotifyEventEXT")
@:final
extern class GLXStereoNotifyEventEXT implements org.lwjgl.Pointer
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
	static public var WINDOW:Int;
/** The struct member offsets.  */
	static public var STEREO_TREE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function extension(glxstereonotifyeventext:java.nio.ByteBuffer,extension:Int):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):Int {})
	public function setExtension(extension:Int):Void;
	public function getEvtype():Int;
	public function getWindow():haxe.Int64;
	static public function type(glxstereonotifyeventext:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):Int {})
	public function getStereoTree():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setSendEvent(send_event:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,extension:Int,evtype:Int,window:haxe.Int64,stereo_tree:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setDisplay(display:haxe.Int64):Void;
	public function getExtension():Int;
	static public function evtype(glxstereonotifyeventext:java.nio.ByteBuffer,evtype:Int):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):Int {})
	public function setStereoTree(stereo_tree:Int):Void;
	static public function display(glxstereonotifyeventext:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):haxe.Int64 {})
	public function setWindow(window:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function getSendEvent():Int;
	public function setType(type:Int):Void;
	public function getSerial():haxe.Int64;
	static public function send_event(glxstereonotifyeventext:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):Int {})
	public function getType():Int;
	static public function serial(glxstereonotifyeventext:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):haxe.Int64 {})
	public function setEvtype(evtype:Int):Void;
	public function setSerial(serial:haxe.Int64):Void;
	static public function window(glxstereonotifyeventext:java.nio.ByteBuffer,window:haxe.Int64):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):haxe.Int64 {})
	static public function stereo_tree(glxstereonotifyeventext:java.nio.ByteBuffer,stereo_tree:Int):Void;
	@:overload(function (glxstereonotifyeventext:java.nio.ByteBuffer):Int {})
	public function getDisplay():haxe.Int64;

}
