package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XVisualInfo")
@:final
/** Information used by the visual utility routines to find desired visual type from the many visuals a display may support.  */
extern class XVisualInfo implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var VISUAL:Int;
/** The struct member offsets.  */
	static public var VISUALID:Int;
/** The struct member offsets.  */
	static public var SCREEN:Int;
/** The struct member offsets.  */
	static public var DEPTH:Int;
/** The struct member offsets.  */
	static public var CLAZZ:Int;
/** The struct member offsets.  */
	static public var RED_MASK:Int;
/** The struct member offsets.  */
	static public var GREEN_MASK:Int;
/** The struct member offsets.  */
	static public var BLUE_MASK:Int;
/** The struct member offsets.  */
	static public var COLORMAP_SIZE:Int;
/** The struct member offsets.  */
	static public var BITS_PER_RGB:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function blue_mask(xvisualinfo:java.nio.ByteBuffer,blue_mask:haxe.Int64):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):haxe.Int64 {})
	public function getDepth():Int;
	public function getGreenMask():haxe.Int64;
	public function getVisual():haxe.Int64;
	public function setClazz(clazz:Int):Void;
	static public function visualBuffer(xvisualinfo:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function setBitsPerRgb(bits_per_rgb:Int):Void;
	static public function screen(xvisualinfo:java.nio.ByteBuffer,screen:Int):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):Int {})
	public function getVisualBuffer():java.nio.ByteBuffer;
	static public function colormap_size(xvisualinfo:java.nio.ByteBuffer,colormap_size:Int):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):Int {})
	static public function visualid(xvisualinfo:java.nio.ByteBuffer,visualid:haxe.Int64):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):haxe.Int64 {})
	public function getBlueMask():haxe.Int64;
	public function setColormapSize(colormap_size:Int):Void;
	static public function bits_per_rgb(xvisualinfo:java.nio.ByteBuffer,bits_per_rgb:Int):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):Int {})
	static public function visual(xvisualinfo:java.nio.ByteBuffer,visual:haxe.Int64):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xvisualinfo:java.nio.ByteBuffer,visual:java.nio.ByteBuffer):Void {})
	public function buffer():java.nio.ByteBuffer;
	public function setScreen(screen:Int):Void;
	public function setDepth(depth:Int):Void;
	public function getScreen():Int;
	public function setRedMask(red_mask:haxe.Int64):Void;
	public function getBitsPerRgb():Int;
	public function getClazz():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(visual:java.nio.ByteBuffer,visualid:haxe.Int64,screen:Int,depth:Int,clazz:Int,red_mask:haxe.Int64,green_mask:haxe.Int64,blue_mask:haxe.Int64,colormap_size:Int,bits_per_rgb:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setVisual(visual:java.nio.ByteBuffer):Void;
	@:overload(function (visual:haxe.Int64):Void {})
	public function setBlueMask(blue_mask:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function getColormapSize():Int;
	static public function depth(xvisualinfo:java.nio.ByteBuffer,depth:Int):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):Int {})
	public function getRedMask():haxe.Int64;
	static public function red_mask(xvisualinfo:java.nio.ByteBuffer,red_mask:haxe.Int64):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):haxe.Int64 {})
	public function setVisualid(visualid:haxe.Int64):Void;
	public function setGreenMask(green_mask:haxe.Int64):Void;
	static public function green_mask(xvisualinfo:java.nio.ByteBuffer,green_mask:haxe.Int64):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):haxe.Int64 {})
	static public function clazz(xvisualinfo:java.nio.ByteBuffer,clazz:Int):Void;
	@:overload(function (xvisualinfo:java.nio.ByteBuffer):Int {})
	public function getVisualid():haxe.Int64;

}
