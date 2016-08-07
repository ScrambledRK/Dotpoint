package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XSetWindowAttributes")
@:final
/** Data structure for setting window attributes.  */
extern class XSetWindowAttributes implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var BACKGROUND_PIXMAP:Int;
/** The struct member offsets.  */
	static public var BACKGROUND_PIXEL:Int;
/** The struct member offsets.  */
	static public var BORDER_PIXMAP:Int;
/** The struct member offsets.  */
	static public var BORDER_PIXEL:Int;
/** The struct member offsets.  */
	static public var BIT_GRAVITY:Int;
/** The struct member offsets.  */
	static public var WIN_GRAVITY:Int;
/** The struct member offsets.  */
	static public var BACKING_STORE:Int;
/** The struct member offsets.  */
	static public var BACKING_PLANES:Int;
/** The struct member offsets.  */
	static public var BACKING_PIXEL:Int;
/** The struct member offsets.  */
	static public var SAVE_UNDER:Int;
/** The struct member offsets.  */
	static public var EVENT_MASK:Int;
/** The struct member offsets.  */
	static public var DO_NOT_PROPAGATE_MASK:Int;
/** The struct member offsets.  */
	static public var OVERRIDE_REDIRECT:Int;
/** The struct member offsets.  */
	static public var COLORMAP:Int;
/** The struct member offsets.  */
	static public var CURSOR:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function cursor(xsetwindowattributes:java.nio.ByteBuffer,cursor:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function setOverrideRedirect(override_redirect:Int):Void;
	static public function backing_store(xsetwindowattributes:java.nio.ByteBuffer,backing_store:Int):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):Int {})
	public function setColormap(colormap:haxe.Int64):Void;
	public function getBackgroundPixel():haxe.Int64;
	public function getBackingStore():Int;
	public function setBitGravity(bit_gravity:Int):Void;
	public function setDoNotPropagateMask(do_not_propagate_mask:haxe.Int64):Void;
	public function getBackingPlanes():haxe.Int64;
	public function getColormap():haxe.Int64;
	public function setBackgroundPixel(background_pixel:haxe.Int64):Void;
	public function getDoNotPropagateMask():haxe.Int64;
	public function setBackgroundPixmap(background_pixmap:haxe.Int64):Void;
	public function setWinGravity(win_gravity:Int):Void;
	static public function event_mask(xsetwindowattributes:java.nio.ByteBuffer,event_mask:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	static public function save_under(xsetwindowattributes:java.nio.ByteBuffer,save_under:Int):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	static public function border_pixmap(xsetwindowattributes:java.nio.ByteBuffer,border_pixmap:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	static public function background_pixmap(xsetwindowattributes:java.nio.ByteBuffer,background_pixmap:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	static public function border_pixel(xsetwindowattributes:java.nio.ByteBuffer,border_pixel:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	static public function colormap(xsetwindowattributes:java.nio.ByteBuffer,colormap:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function setBorderPixmap(border_pixmap:haxe.Int64):Void;
	public function getBackgroundPixmap():haxe.Int64;
	public function getBitGravity():Int;
	static public function backing_planes(xsetwindowattributes:java.nio.ByteBuffer,backing_planes:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function getWinGravity():Int;
	public function getBackingPixel():haxe.Int64;
	public function getCursor():haxe.Int64;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(background_pixmap:haxe.Int64,background_pixel:haxe.Int64,border_pixmap:haxe.Int64,border_pixel:haxe.Int64,bit_gravity:Int,win_gravity:Int,backing_store:Int,backing_planes:haxe.Int64,backing_pixel:haxe.Int64,save_under:Int,event_mask:haxe.Int64,do_not_propagate_mask:haxe.Int64,override_redirect:Int,colormap:haxe.Int64,cursor:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function do_not_propagate_mask(xsetwindowattributes:java.nio.ByteBuffer,do_not_propagate_mask:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function getBorderPixel():haxe.Int64;
	public function setBackingPixel(backing_pixel:haxe.Int64):Void;
	static public function bit_gravity(xsetwindowattributes:java.nio.ByteBuffer,bit_gravity:Int):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):Int {})
	static public function backing_pixel(xsetwindowattributes:java.nio.ByteBuffer,backing_pixel:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function getPointer():haxe.Int64;
	static public function background_pixel(xsetwindowattributes:java.nio.ByteBuffer,background_pixel:haxe.Int64):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	static public function override_redirect(xsetwindowattributes:java.nio.ByteBuffer,override_redirect:Int):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):Int {})
	public function setBackingStore(backing_store:Int):Void;
	public function setSaveUnder(save_under:Int):Void;
	public function getBorderPixmap():haxe.Int64;
	public function getSaveUnder():Int;
	static public function win_gravity(xsetwindowattributes:java.nio.ByteBuffer,win_gravity:Int):Void;
	@:overload(function (xsetwindowattributes:java.nio.ByteBuffer):Int {})
	public function setBackingPlanes(backing_planes:haxe.Int64):Void;
	public function setEventMask(event_mask:haxe.Int64):Void;
	public function getEventMask():haxe.Int64;
	public function setCursor(cursor:haxe.Int64):Void;
	public function getOverrideRedirect():Int;
	public function setBorderPixel(border_pixel:haxe.Int64):Void;

}
