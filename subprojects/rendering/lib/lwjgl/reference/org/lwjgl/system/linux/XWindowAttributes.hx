package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XWindowAttributes")
@:final
/** Data structure for window attributes.  */
extern class XWindowAttributes implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
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
	static public var DEPTH:Int;
/** The struct member offsets.  */
	static public var VISUAL:Int;
/** The struct member offsets.  */
	static public var ROOT:Int;
/** The struct member offsets.  */
	static public var CLAZZ:Int;
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
	static public var COLORMAP:Int;
/** The struct member offsets.  */
	static public var MAP_INSTALLED:Int;
/** The struct member offsets.  */
	static public var MAP_STATE:Int;
/** The struct member offsets.  */
	static public var ALL_EVENT_MASKS:Int;
/** The struct member offsets.  */
	static public var YOUR_EVENT_MASK:Int;
/** The struct member offsets.  */
	static public var DO_NOT_PROPAGATE_MASK:Int;
/** The struct member offsets.  */
	static public var OVERRIDE_REDIRECT:Int;
/** The struct member offsets.  */
	static public var SCREEN:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setY(y:Int):Void;
	public function setMapState(map_state:Int):Void;
	public function setX(x:Int):Void;
	static public function visualBuffer(xwindowattributes:java.nio.ByteBuffer):java.nio.ByteBuffer;
	static public function screen(xwindowattributes:java.nio.ByteBuffer,screen:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function setOverrideRedirect(override_redirect:Int):Void;
	static public function backing_store(xwindowattributes:java.nio.ByteBuffer,backing_store:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	public function setColormap(colormap:haxe.Int64):Void;
	public function setAllEventMasks(all_event_masks:haxe.Int64):Void;
	public function getVisualBuffer():java.nio.ByteBuffer;
	public function getBackingStore():Int;
	public function setBitGravity(bit_gravity:Int):Void;
	public function getDoNotPropagateMask():haxe.Int64;
	public function setWinGravity(win_gravity:Int):Void;
	static public function visual(xwindowattributes:java.nio.ByteBuffer,visual:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xwindowattributes:java.nio.ByteBuffer,visual:java.nio.ByteBuffer):Void {})
	static public function your_event_mask(xwindowattributes:java.nio.ByteBuffer,your_event_mask:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	static public function colormap(xwindowattributes:java.nio.ByteBuffer,colormap:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function getScreen():haxe.Int64;
	public function getBitGravity():Int;
	static public function height(xwindowattributes:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	static public function backing_planes(xwindowattributes:java.nio.ByteBuffer,backing_planes:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function getYourEventMask():haxe.Int64;
	static public function border_width(xwindowattributes:java.nio.ByteBuffer,border_width:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	static public function do_not_propagate_mask(xwindowattributes:java.nio.ByteBuffer,do_not_propagate_mask:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function setBackingPixel(backing_pixel:haxe.Int64):Void;
	public function setRoot(root:haxe.Int64):Void;
	public function setHeight(height:Int):Void;
	static public function override_redirect(xwindowattributes:java.nio.ByteBuffer,override_redirect:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	public function setBackingStore(backing_store:Int):Void;
	public function setSaveUnder(save_under:Int):Void;
	public function getAllEventMasks():haxe.Int64;
	static public function map_state(xwindowattributes:java.nio.ByteBuffer,map_state:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	public function setBackingPlanes(backing_planes:haxe.Int64):Void;
	public function setYourEventMask(your_event_mask:haxe.Int64):Void;
	public function getDepth():Int;
	public function getBorderWidth():Int;
	public function getVisual():haxe.Int64;
	public function setClazz(clazz:Int):Void;
	public function getWidth():Int;
	public function setDoNotPropagateMask(do_not_propagate_mask:haxe.Int64):Void;
	public function getBackingPlanes():haxe.Int64;
	public function setBorderWidth(border_width:Int):Void;
	public function getColormap():haxe.Int64;
	public function getHeight():Int;
	public function setMapInstalled(map_installed:Int):Void;
	public function getMapState():Int;
	static public function root(xwindowattributes:java.nio.ByteBuffer,root:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	static public function save_under(xwindowattributes:java.nio.ByteBuffer,save_under:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	public function setScreen(screen:haxe.Int64):Void;
	public function getRoot():haxe.Int64;
	public function setDepth(depth:Int):Void;
	static public function all_event_masks(xwindowattributes:java.nio.ByteBuffer,all_event_masks:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function getWinGravity():Int;
	public function getBackingPixel():haxe.Int64;
	public function getClazz():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(x:Int,y:Int,width:Int,height:Int,border_width:Int,depth:Int,visual:java.nio.ByteBuffer,root:haxe.Int64,clazz:Int,bit_gravity:Int,win_gravity:Int,backing_store:Int,backing_planes:haxe.Int64,backing_pixel:haxe.Int64,save_under:Int,colormap:haxe.Int64,map_installed:Int,map_state:Int,all_event_masks:haxe.Int64,your_event_mask:haxe.Int64,do_not_propagate_mask:haxe.Int64,override_redirect:Int,screen:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setVisual(visual:java.nio.ByteBuffer):Void;
	@:overload(function (visual:haxe.Int64):Void {})
	static public function bit_gravity(xwindowattributes:java.nio.ByteBuffer,bit_gravity:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	static public function backing_pixel(xwindowattributes:java.nio.ByteBuffer,backing_pixel:haxe.Int64):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):haxe.Int64 {})
	public function getPointer():haxe.Int64;
	public function setWidth(width:Int):Void;
	public function getX():Int;
	public function getSaveUnder():Int;
	public function getY():Int;
	static public function depth(xwindowattributes:java.nio.ByteBuffer,depth:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	static public function map_installed(xwindowattributes:java.nio.ByteBuffer,map_installed:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	static public function win_gravity(xwindowattributes:java.nio.ByteBuffer,win_gravity:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	public function getMapInstalled():Int;
	static public function x(xwindowattributes:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	static public function width(xwindowattributes:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	static public function y(xwindowattributes:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})
	public function getOverrideRedirect():Int;
	static public function clazz(xwindowattributes:java.nio.ByteBuffer,clazz:Int):Void;
	@:overload(function (xwindowattributes:java.nio.ByteBuffer):Int {})

}
