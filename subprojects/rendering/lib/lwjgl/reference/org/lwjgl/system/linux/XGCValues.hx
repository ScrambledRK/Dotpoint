package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XGCValues")
@:final
/** Data structure for setting graphics context.  */
extern class XGCValues implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var FUNCTION:Int;
/** The struct member offsets.  */
	static public var PLANE_MASK:Int;
/** The struct member offsets.  */
	static public var FOREGROUND:Int;
/** The struct member offsets.  */
	static public var BACKGROUND:Int;
/** The struct member offsets.  */
	static public var LINE_WIDTH:Int;
/** The struct member offsets.  */
	static public var LINE_STYLE:Int;
/** The struct member offsets.  */
	static public var CAP_STYLE:Int;
/** The struct member offsets.  */
	static public var JOIN_STYLE:Int;
/** The struct member offsets.  */
	static public var FILL_STYLE:Int;
/** The struct member offsets.  */
	static public var FILL_RULE:Int;
/** The struct member offsets.  */
	static public var ARC_MODE:Int;
/** The struct member offsets.  */
	static public var TILE:Int;
/** The struct member offsets.  */
	static public var STIPPLE:Int;
/** The struct member offsets.  */
	static public var TS_X_ORIGIN:Int;
/** The struct member offsets.  */
	static public var TS_Y_ORIGIN:Int;
/** The struct member offsets.  */
	static public var FONT:Int;
/** The struct member offsets.  */
	static public var SUBWINDOW_MODE:Int;
/** The struct member offsets.  */
	static public var GRAPHICS_EXPOSURES:Int;
/** The struct member offsets.  */
	static public var CLIP_X_ORIGIN:Int;
/** The struct member offsets.  */
	static public var CLIP_Y_ORIGIN:Int;
/** The struct member offsets.  */
	static public var CLIP_MASK:Int;
/** The struct member offsets.  */
	static public var DASH_OFFSET:Int;
/** The struct member offsets.  */
	static public var DASHES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setTsYOrigin(ts_y_origin:Int):Void;
	public function getTsXOrigin():Int;
	public function setDashOffset(dash_offset:Int):Void;
	static public function clip_y_origin(xgcvalues:java.nio.ByteBuffer,clip_y_origin:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	static public function foreground(xgcvalues:java.nio.ByteBuffer,foreground:haxe.Int64):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):haxe.Int64 {})
	static public function clip_mask(xgcvalues:java.nio.ByteBuffer,clip_mask:haxe.Int64):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):haxe.Int64 {})
	public function getDashOffset():Int;
	static public function clip_x_origin(xgcvalues:java.nio.ByteBuffer,clip_x_origin:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function getLineWidth():Int;
	static public function function_(xgcvalues:java.nio.ByteBuffer,function_:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	static public function tile(xgcvalues:java.nio.ByteBuffer,tile:haxe.Int64):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function setFont(font:haxe.Int64):Void;
	public function setClipMask(clip_mask:haxe.Int64):Void;
	public function getJoinStyle():Int;
	public function getTile():haxe.Int64;
	public function getTsYOrigin():Int;
	public function setClipXOrigin(clip_x_origin:Int):Void;
	public function setTsXOrigin(ts_x_origin:Int):Void;
	public function getGraphicsExposures():Int;
	static public function cap_style(xgcvalues:java.nio.ByteBuffer,cap_style:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	static public function ts_y_origin(xgcvalues:java.nio.ByteBuffer,ts_y_origin:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function getPlaneMask():haxe.Int64;
	public function getForeground():haxe.Int64;
	static public function background(xgcvalues:java.nio.ByteBuffer,background:haxe.Int64):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):haxe.Int64 {})
	public function setFunction(function_:Int):Void;
	public function setFillStyle(fill_style:Int):Void;
	public function getFont():haxe.Int64;
	public function setFillRule(fill_rule:Int):Void;
	public function setDashes(dashes:Int):Void;
	public function setJoinStyle(join_style:Int):Void;
	public function setClipYOrigin(clip_y_origin:Int):Void;
	public function getStipple():haxe.Int64;
	public function getSubwindowMode():Int;
	static public function fill_rule(xgcvalues:java.nio.ByteBuffer,fill_rule:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	static public function line_width(xgcvalues:java.nio.ByteBuffer,line_width:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function setStipple(stipple:haxe.Int64):Void;
	static public function arc_mode(xgcvalues:java.nio.ByteBuffer,arc_mode:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	static public function graphics_exposures(xgcvalues:java.nio.ByteBuffer,graphics_exposures:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function setArcMode(arc_mode:Int):Void;
	public function setGraphicsExposures(graphics_exposures:Int):Void;
	public function setCapStyle(cap_style:Int):Void;
	public function setBackground(background:haxe.Int64):Void;
	public function setLineWidth(line_width:Int):Void;
	public function setLineStyle(line_style:Int):Void;
	public function getLineStyle():Int;
	public function getClipMask():haxe.Int64;
	static public function join_style(xgcvalues:java.nio.ByteBuffer,join_style:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function getClipXOrigin():Int;
	public function setTile(tile:haxe.Int64):Void;
	public function setSubwindowMode(subwindow_mode:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(function_:Int,plane_mask:haxe.Int64,foreground:haxe.Int64,background:haxe.Int64,line_width:Int,line_style:Int,cap_style:Int,join_style:Int,fill_style:Int,fill_rule:Int,arc_mode:Int,tile:haxe.Int64,stipple:haxe.Int64,ts_x_origin:Int,ts_y_origin:Int,font:haxe.Int64,subwindow_mode:Int,graphics_exposures:Int,clip_x_origin:Int,clip_y_origin:Int,clip_mask:haxe.Int64,dash_offset:Int,dashes:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getCapStyle():Int;
	public function getFunction():Int;
	public function setForeground(foreground:haxe.Int64):Void;
	static public function plane_mask(xgcvalues:java.nio.ByteBuffer,plane_mask:haxe.Int64):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):haxe.Int64 {})
	static public function fill_style(xgcvalues:java.nio.ByteBuffer,fill_style:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	static public function dash_offset(xgcvalues:java.nio.ByteBuffer,dash_offset:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	static public function line_style(xgcvalues:java.nio.ByteBuffer,line_style:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	static public function ts_x_origin(xgcvalues:java.nio.ByteBuffer,ts_x_origin:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function getClipYOrigin():Int;
	static public function subwindow_mode(xgcvalues:java.nio.ByteBuffer,subwindow_mode:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function getFillRule():Int;
	static public function dashes(xgcvalues:java.nio.ByteBuffer,dashes:Int):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):Int {})
	public function setPlaneMask(plane_mask:haxe.Int64):Void;
	public function getArcMode():Int;
	public function getFillStyle():Int;
	static public function stipple(xgcvalues:java.nio.ByteBuffer,stipple:haxe.Int64):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):haxe.Int64 {})
	public function getBackground():haxe.Int64;
	public function getDashes():Int;
	static public function font(xgcvalues:java.nio.ByteBuffer,font:haxe.Int64):Void;
	@:overload(function (xgcvalues:java.nio.ByteBuffer):haxe.Int64 {})

}
