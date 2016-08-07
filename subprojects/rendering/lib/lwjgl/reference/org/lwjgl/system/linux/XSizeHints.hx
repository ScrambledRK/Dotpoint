package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XSizeHints")
@:final
/** Used by {@link Xlib#XSetSizeHints}.  */
extern class XSizeHints implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
/** The struct member offsets.  */
	static public var WIDTH:Int;
/** The struct member offsets.  */
	static public var HEIGHT:Int;
/** The struct member offsets.  */
	static public var MIN_WIDTH:Int;
/** The struct member offsets.  */
	static public var MIN_HEIGHT:Int;
/** The struct member offsets.  */
	static public var MAX_WIDTH:Int;
/** The struct member offsets.  */
	static public var MAX_HEIGHT:Int;
/** The struct member offsets.  */
	static public var WIDTH_INC:Int;
/** The struct member offsets.  */
	static public var HEIGHT_INC:Int;
/** The struct member offsets.  */
	static public var MIN_ASPECT:Int;
/** The struct member offsets.  */
	static public var MIN_ASPECT_X:Int;
/** The struct member offsets.  */
	static public var MIN_ASPECT_Y:Int;
/** The struct member offsets.  */
	static public var MAX_ASPECT:Int;
/** The struct member offsets.  */
	static public var MAX_ASPECT_X:Int;
/** The struct member offsets.  */
	static public var MAX_ASPECT_Y:Int;
/** The struct member offsets.  */
	static public var BASE_WIDTH:Int;
/** The struct member offsets.  */
	static public var BASE_HEIGHT:Int;
/** The struct member offsets.  */
	static public var WIN_GRAVITY:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setY(y:Int):Void;
	public function getWidthInc():Int;
	public function setX(x:Int):Void;
	public function setMinWidth(min_width:Int):Void;
	static public function max_height(xsizehints:java.nio.ByteBuffer,max_height:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getBaseWidth():Int;
	static public function max_aspectY(xsizehints:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	static public function max_aspectX(xsizehints:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getMaxWidth():Int;
	static public function max_width(xsizehints:java.nio.ByteBuffer,max_width:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getMinHeight():Int;
	static public function width_inc(xsizehints:java.nio.ByteBuffer,width_inc:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function setWinGravity(win_gravity:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	static public function height_inc(xsizehints:java.nio.ByteBuffer,height_inc:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function setMinHeight(min_height:Int):Void;
	public function getMaxHeight():Int;
	static public function height(xsizehints:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getMinAspectX():Int;
	public function getMinAspectY():Int;
	public function getBaseHeight():Int;
	public function setMaxWidth(max_width:Int):Void;
	public function setHeight(height:Int):Void;
	public function getHeightInc():Int;
	public function setBaseWidth(base_width:Int):Void;
	static public function base_width(xsizehints:java.nio.ByteBuffer,base_width:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getFlags():haxe.Int64;
	public function setFlags(flags:haxe.Int64):Void;
	static public function flags(xsizehints:java.nio.ByteBuffer,flags:haxe.Int64):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):haxe.Int64 {})
	static public function base_height(xsizehints:java.nio.ByteBuffer,base_height:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getWidth():Int;
	public function setMaxAspectY(y:Int):Void;
	public function setMaxAspectX(x:Int):Void;
	public function setBaseHeight(base_height:Int):Void;
	public function getHeight():Int;
	public function getMinWidth():Int;
	public function setMaxHeight(max_height:Int):Void;
	public function setMinAspectY(y:Int):Void;
	public function setMinAspectX(x:Int):Void;
	static public function min_aspectX(xsizehints:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function setWidthInc(width_inc:Int):Void;
	static public function min_aspectY(xsizehints:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	static public function min_width(xsizehints:java.nio.ByteBuffer,min_width:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getWinGravity():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(flags:haxe.Int64,x:Int,y:Int,width:Int,height:Int,min_width:Int,min_height:Int,max_width:Int,max_height:Int,width_inc:Int,height_inc:Int,min_aspect_x:Int,min_aspect_y:Int,max_aspect_x:Int,max_aspect_y:Int,base_width:Int,base_height:Int,win_gravity:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getPointer():haxe.Int64;
	public function setWidth(width:Int):Void;
	public function setHeightInc(height_inc:Int):Void;
	public function getX():Int;
	public function getY():Int;
	static public function min_height(xsizehints:java.nio.ByteBuffer,min_height:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	static public function win_gravity(xsizehints:java.nio.ByteBuffer,win_gravity:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	static public function x(xsizehints:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	static public function width(xsizehints:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	static public function y(xsizehints:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xsizehints:java.nio.ByteBuffer):Int {})
	public function getMaxAspectY():Int;
	public function getMaxAspectX():Int;

}
