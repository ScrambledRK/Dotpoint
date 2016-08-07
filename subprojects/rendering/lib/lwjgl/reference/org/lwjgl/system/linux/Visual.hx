package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Visual")
@:final
/** Visual structure; contains information about colormapping possible.  */
extern class Visual implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var VISUALID:Int;
/** The struct member offsets.  */
	static public var CLAZZ:Int;
/** The struct member offsets.  */
	static public var RED_MASK:Int;
/** The struct member offsets.  */
	static public var GREEN_MASK:Int;
/** The struct member offsets.  */
	static public var BLUE_MASK:Int;
/** The struct member offsets.  */
	static public var BITS_PER_RGB:Int;
/** The struct member offsets.  */
	static public var MAP_ENTRIES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setMapEntries(map_entries:Int):Void;
	public function getBitsPerRgb():Int;
	static public function blue_mask(visual:java.nio.ByteBuffer,blue_mask:haxe.Int64):Void;
	@:overload(function (visual:java.nio.ByteBuffer):haxe.Int64 {})
	public function getClazz():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(visualid:haxe.Int64,clazz:Int,red_mask:haxe.Int64,green_mask:haxe.Int64,blue_mask:haxe.Int64,bits_per_rgb:Int,map_entries:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getGreenMask():haxe.Int64;
	public function setClazz(clazz:Int):Void;
	public function setBitsPerRgb(bits_per_rgb:Int):Void;
	public function setBlueMask(blue_mask:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	static public function visualid(visual:java.nio.ByteBuffer,visualid:haxe.Int64):Void;
	@:overload(function (visual:java.nio.ByteBuffer):haxe.Int64 {})
	public function getRedMask():haxe.Int64;
	public function getBlueMask():haxe.Int64;
	static public function red_mask(visual:java.nio.ByteBuffer,red_mask:haxe.Int64):Void;
	@:overload(function (visual:java.nio.ByteBuffer):haxe.Int64 {})
	public function getMapEntries():Int;
	static public function bits_per_rgb(visual:java.nio.ByteBuffer,bits_per_rgb:Int):Void;
	@:overload(function (visual:java.nio.ByteBuffer):Int {})
	public function setVisualid(visualid:haxe.Int64):Void;
	public function buffer():java.nio.ByteBuffer;
	static public function map_entries(visual:java.nio.ByteBuffer,map_entries:Int):Void;
	@:overload(function (visual:java.nio.ByteBuffer):Int {})
	public function setGreenMask(green_mask:haxe.Int64):Void;
	static public function green_mask(visual:java.nio.ByteBuffer,green_mask:haxe.Int64):Void;
	@:overload(function (visual:java.nio.ByteBuffer):haxe.Int64 {})
	static public function clazz(visual:java.nio.ByteBuffer,clazz:Int):Void;
	@:overload(function (visual:java.nio.ByteBuffer):Int {})
	public function getVisualid():haxe.Int64;
	public function setRedMask(red_mask:haxe.Int64):Void;

}
