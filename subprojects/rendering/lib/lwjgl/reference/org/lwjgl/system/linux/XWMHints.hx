package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XWMHints")
@:final
/** Used by {@link Xlib#XSetWMHints}.  */
extern class XWMHints implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var INPUT:Int;
/** The struct member offsets.  */
	static public var INITIAL_STATE:Int;
/** The struct member offsets.  */
	static public var ICON_PIXMAP:Int;
/** The struct member offsets.  */
	static public var ICON_WINDOW:Int;
/** The struct member offsets.  */
	static public var ICON_X:Int;
/** The struct member offsets.  */
	static public var ICON_Y:Int;
/** The struct member offsets.  */
	static public var ICON_MASK:Int;
/** The struct member offsets.  */
	static public var WINDOW_GROUP:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getInitialState():Int;
	static public function initial_state(xwmhints:java.nio.ByteBuffer,initial_state:Int):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):Int {})
	public function setInitialState(initial_state:Int):Void;
	public function getIconPixmap():haxe.Int64;
	static public function flags(xwmhints:java.nio.ByteBuffer,flags:haxe.Int64):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):haxe.Int64 {})
	public function getInput():Int;
	static public function icon_pixmap(xwmhints:java.nio.ByteBuffer,icon_pixmap:haxe.Int64):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):haxe.Int64 {})
	public function setIconMask(icon_mask:haxe.Int64):Void;
	public function getIconY():Int;
	public function getIconX():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setIconY(icon_y:Int):Void;
	public function getWindowGroup():haxe.Int64;
	public function setIconX(icon_x:Int):Void;
	public function getIconMask():haxe.Int64;
	static public function window_group(xwmhints:java.nio.ByteBuffer,window_group:haxe.Int64):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(flags:haxe.Int64,input:Int,initial_state:Int,icon_pixmap:haxe.Int64,icon_window:haxe.Int64,icon_x:Int,icon_y:Int,icon_mask:haxe.Int64,window_group:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setWindowGroup(window_group:haxe.Int64):Void;
	static public function icon_x(xwmhints:java.nio.ByteBuffer,icon_x:Int):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):Int {})
	static public function icon_y(xwmhints:java.nio.ByteBuffer,icon_y:Int):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):Int {})
	public function getIconWindow():haxe.Int64;
	public function getPointer():haxe.Int64;
	static public function icon_window(xwmhints:java.nio.ByteBuffer,icon_window:haxe.Int64):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):haxe.Int64 {})
	static public function icon_mask(xwmhints:java.nio.ByteBuffer,icon_mask:haxe.Int64):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):haxe.Int64 {})
	public function setInput(input:Int):Void;
	static public function input(xwmhints:java.nio.ByteBuffer,input:Int):Void;
	@:overload(function (xwmhints:java.nio.ByteBuffer):Int {})
	public function setIconPixmap(icon_pixmap:haxe.Int64):Void;
	public function setIconWindow(icon_window:haxe.Int64):Void;
	public function getFlags():haxe.Int64;
	public function setFlags(flags:haxe.Int64):Void;

}
