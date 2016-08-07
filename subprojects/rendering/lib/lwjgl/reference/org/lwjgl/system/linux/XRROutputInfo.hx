package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XRROutputInfo")
@:final
/** Xrandr output info struct.  */
extern class XRROutputInfo implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TIMESTAMP:Int;
/** The struct member offsets.  */
	static public var CRTC:Int;
/** The struct member offsets.  */
	static public var NAME:Int;
/** The struct member offsets.  */
	static public var NAMELEN:Int;
/** The struct member offsets.  */
	static public var MM_WIDTH:Int;
/** The struct member offsets.  */
	static public var MM_HEIGHT:Int;
/** The struct member offsets.  */
	static public var CONNECTION:Int;
/** The struct member offsets.  */
	static public var SUBPIXEL_ORDER:Int;
/** The struct member offsets.  */
	static public var NCRTC:Int;
/** The struct member offsets.  */
	static public var CRTCS:Int;
/** The struct member offsets.  */
	static public var NCLONE:Int;
/** The struct member offsets.  */
	static public var CLONES:Int;
/** The struct member offsets.  */
	static public var NMODE:Int;
/** The struct member offsets.  */
	static public var NPREFERRED:Int;
/** The struct member offsets.  */
	static public var MODES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setName(name:java.nio.ByteBuffer):Void;
	@:overload(function (name:haxe.Int64):Void {})
	public function getClones(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function getMmHeight():haxe.Int64;
	public function getName(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function modes(xrroutputinfo:java.nio.ByteBuffer,modes:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,modes:java.nio.ByteBuffer):Void {})
	public function setMmWidth(mm_width:haxe.Int64):Void;
	public function getNmode():Int;
	public function setCrtcs(crtcs:java.nio.ByteBuffer):Void;
	@:overload(function (crtcs:haxe.Int64):Void {})
	public function setNpreferred(npreferred:Int):Void;
	public function setConnection(connection:Int):Void;
	public function getNcrtc():Int;
	static public function mm_height(xrroutputinfo:java.nio.ByteBuffer,mm_height:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
	static public function nmode(xrroutputinfo:java.nio.ByteBuffer,nmode:Int):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):Int {})
	public function getConnection():Int;
	public function setNclone(nclone:Int):Void;
	public function getTimestamp():haxe.Int64;
	public function getNclone():Int;
	public function setSubpixelOrder(subpixel_order:Int):Void;
	public function getCrtcs(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function setClones(clones:java.nio.ByteBuffer):Void;
	@:overload(function (clones:haxe.Int64):Void {})
	public function getSubpixelOrder():Int;
	static public function connection(xrroutputinfo:java.nio.ByteBuffer,connection:Int):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function setTimestamp(timestamp:haxe.Int64):Void;
	public function getMmWidth():haxe.Int64;
	static public function timestamp(xrroutputinfo:java.nio.ByteBuffer,timestamp:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(timestamp:haxe.Int64,crtc:haxe.Int64,name:java.nio.ByteBuffer,nameLen:Int,mm_width:haxe.Int64,mm_height:haxe.Int64,connection:Int,subpixel_order:Int,ncrtc:Int,crtcs:java.nio.ByteBuffer,nclone:Int,clones:java.nio.ByteBuffer,nmode:Int,npreferred:Int,modes:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setNcrtc(ncrtc:Int):Void;
	public function setNmode(nmode:Int):Void;
	static public function clones(xrroutputinfo:java.nio.ByteBuffer,clones:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,clones:java.nio.ByteBuffer):Void {})
	static public function mm_width(xrroutputinfo:java.nio.ByteBuffer,mm_width:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
	public function getNpreferred():Int;
	public function setCrtc(crtc:haxe.Int64):Void;
	static public function nameLen(xrroutputinfo:java.nio.ByteBuffer,nameLen:Int):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):Int {})
	public function setNameLen(nameLen:Int):Void;
	public function getCrtc():haxe.Int64;
	public function getPointer():haxe.Int64;
	public function getModes(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function crtc(xrroutputinfo:java.nio.ByteBuffer,crtc:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
	static public function ncrtc(xrroutputinfo:java.nio.ByteBuffer,ncrtc:Int):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):Int {})
	public function setModes(modes:java.nio.ByteBuffer):Void;
	@:overload(function (modes:haxe.Int64):Void {})
	static public function nclone(xrroutputinfo:java.nio.ByteBuffer,nclone:Int):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):Int {})
	static public function name(xrroutputinfo:java.nio.ByteBuffer,name:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void {})
	static public function subpixel_order(xrroutputinfo:java.nio.ByteBuffer,subpixel_order:Int):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):Int {})
	public function getNameLen():Int;
	static public function crtcs(xrroutputinfo:java.nio.ByteBuffer,crtcs:haxe.Int64):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer,crtcs:java.nio.ByteBuffer):Void {})
	public function setMmHeight(mm_height:haxe.Int64):Void;
	static public function npreferred(xrroutputinfo:java.nio.ByteBuffer,npreferred:Int):Void;
	@:overload(function (xrroutputinfo:java.nio.ByteBuffer):Int {})

}
