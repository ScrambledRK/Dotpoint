package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XRRModeInfo")
@:final
/** Xrandr mode info struct.  */
extern class XRRModeInfo implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var ID:Int;
/** The struct member offsets.  */
	static public var WIDTH:Int;
/** The struct member offsets.  */
	static public var HEIGHT:Int;
/** The struct member offsets.  */
	static public var DOTCLOCK:Int;
/** The struct member offsets.  */
	static public var HSYNCSTART:Int;
/** The struct member offsets.  */
	static public var HSYNCEND:Int;
/** The struct member offsets.  */
	static public var HTOTAL:Int;
/** The struct member offsets.  */
	static public var HSKEW:Int;
/** The struct member offsets.  */
	static public var VSYNCSTART:Int;
/** The struct member offsets.  */
	static public var VSYNCEND:Int;
/** The struct member offsets.  */
	static public var VTOTAL:Int;
/** The struct member offsets.  */
	static public var NAME:Int;
/** The struct member offsets.  */
	static public var NAMELENGTH:Int;
/** The struct member offsets.  */
	static public var MODEFLAGS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setName(name:java.nio.ByteBuffer):Void;
	@:overload(function (name:haxe.Int64):Void {})
	static public function vTotal(xrrmodeinfo:java.nio.ByteBuffer,vTotal:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	public function getDotClock():haxe.Int64;
	public function getName(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function getId():haxe.Int64;
	public function getWidth():Int;
	public function setVTotal(vTotal:Int):Void;
	static public function vSyncEnd(xrrmodeinfo:java.nio.ByteBuffer,vSyncEnd:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	public function getHTotal():Int;
	public function setHSyncEnd(hSyncEnd:Int):Void;
	public function getHeight():Int;
	public function setVSyncEnd(vSyncEnd:Int):Void;
	public function setId(id:haxe.Int64):Void;
	public function setNameLength(nameLength:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	static public function id(xrrmodeinfo:java.nio.ByteBuffer,id:haxe.Int64):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):haxe.Int64 {})
	static public function dotClock(xrrmodeinfo:java.nio.ByteBuffer,dotClock:haxe.Int64):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):haxe.Int64 {})
	public function setHSkew(hSkew:Int):Void;
	public function getHSyncEnd():Int;
	static public function height(xrrmodeinfo:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	public function getVSyncEnd():Int;
	public function getNameLength():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(id:haxe.Int64,width:Int,height:Int,dotClock:haxe.Int64,hSyncStart:Int,hSyncEnd:Int,hTotal:Int,hSkew:Int,vSyncStart:Int,vSyncEnd:Int,vTotal:Int,name:java.nio.ByteBuffer,nameLength:Int,modeFlags:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getHSkew():Int;
	public function getVTotal():Int;
	public function setHTotal(hTotal:Int):Void;
	public function getModeFlags():haxe.Int64;
	static public function hSyncStart(xrrmodeinfo:java.nio.ByteBuffer,hSyncStart:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function getHSyncStart():Int;
	static public function vSyncStart(xrrmodeinfo:java.nio.ByteBuffer,vSyncStart:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	public function setWidth(width:Int):Void;
	public function setHeight(height:Int):Void;
	static public function hSyncEnd(xrrmodeinfo:java.nio.ByteBuffer,hSyncEnd:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	public function setVSyncStart(vSyncStart:Int):Void;
	static public function hSkew(xrrmodeinfo:java.nio.ByteBuffer,hSkew:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	static public function nameLength(xrrmodeinfo:java.nio.ByteBuffer,nameLength:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	public function setDotClock(dotClock:haxe.Int64):Void;
	static public function hTotal(xrrmodeinfo:java.nio.ByteBuffer,hTotal:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	static public function width(xrrmodeinfo:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):Int {})
	static public function name(xrrmodeinfo:java.nio.ByteBuffer,name:haxe.Int64):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void {})
	public function getVSyncStart():Int;
	public function setModeFlags(modeFlags:haxe.Int64):Void;
	public function setHSyncStart(hSyncStart:Int):Void;
	static public function modeFlags(xrrmodeinfo:java.nio.ByteBuffer,modeFlags:haxe.Int64):Void;
	@:overload(function (xrrmodeinfo:java.nio.ByteBuffer):haxe.Int64 {})

}
