package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.DEVMODE")
@:final
/** Contains information about the initialization and environment of a printer or a display device.  */
extern class DEVMODE implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var DEVICENAME:Int;
/** The struct member offsets.  */
	static public var SPECVERSION:Int;
/** The struct member offsets.  */
	static public var DRIVERVERSION:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
/** The struct member offsets.  */
	static public var DRIVEREXTRA:Int;
/** The struct member offsets.  */
	static public var FIELDS:Int;
/** The struct member offsets.  */
	static public var POSITION:Int;
/** The struct member offsets.  */
	static public var LOGPIXELS:Int;
/** The struct member offsets.  */
	static public var BITSPERPEL:Int;
/** The struct member offsets.  */
	static public var PELSWIDTH:Int;
/** The struct member offsets.  */
	static public var PELSHEIGHT:Int;
/** The struct member offsets.  */
	static public var DISPLAYFLAGS:Int;
/** The struct member offsets.  */
	static public var DISPLAYFREQUENCY:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setSpecVersion(specVersion:Int):Void;
	static public function driverExtra(devmode:java.nio.ByteBuffer,driverExtra:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function setDriverExtra(driverExtra:Int):Void;
	static public function specVersion(devmode:java.nio.ByteBuffer,specVersion:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	static public function displayFlags(devmode:java.nio.ByteBuffer,displayFlags:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function setPelsHeight(pelsHeight:Int):Void;
	static public function bitsPerPel(devmode:java.nio.ByteBuffer,bitsPerPel:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function setPositionX(x:Int):Void;
	public function getDriverExtra():Int;
	static public function deviceName(devmode:java.nio.ByteBuffer,deviceName:java.lang.CharSequence):Void;
	public function setPosition(position:java.nio.ByteBuffer):Void;
	public function getDisplayFlags():Int;
	public function setPositionY(y:Int):Void;
	static public function positionX(devmode:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	static public function positionY(devmode:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function getSpecVersion():Int;
	public function getPelsHeight():Int;
	public function buffer():java.nio.ByteBuffer;
	public function getDriverVersion():Int;
	static public function positionGet(devmode:java.nio.ByteBuffer,position:java.nio.ByteBuffer):Void;
	public function setLogPixels(logPixels:Int):Void;
	static public function pelsHeight(devmode:java.nio.ByteBuffer,pelsHeight:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function setBitsPerPel(bitsPerPel:Int):Void;
	public function getFields():Int;
	public function getPositionX():Int;
	static public function size(devmode:java.nio.ByteBuffer,size:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function getPositionY():Int;
	static public function positionSet(devmode:java.nio.ByteBuffer,position:java.nio.ByteBuffer):Void;
	static public function logPixels(devmode:java.nio.ByteBuffer,logPixels:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	static public function displayFrequency(devmode:java.nio.ByteBuffer,displayFrequency:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function getDeviceName(deviceName:java.nio.ByteBuffer):Void;
	public function getPelsWidth():Int;
	static public function fields(devmode:java.nio.ByteBuffer,fields:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function getLogPixels():Int;
	public function setPelsWidth(pelsWidth:Int):Void;
	static public function pelsWidth(devmode:java.nio.ByteBuffer,pelsWidth:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function setSize(size:Int):Void;
	public function setDriverVersion(driverVersion:Int):Void;
	static public function deviceNameSet(devmode:java.nio.ByteBuffer,deviceName:java.nio.ByteBuffer):Void;
	static public function deviceNameString(devmode:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (devmode:java.nio.ByteBuffer):String {})
	public function getDeviceNameString(byteLen:Int):String;
	@:overload(function ():String {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Alternative virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(deviceName:java.nio.ByteBuffer,specVersion:Int,driverVersion:Int,size:Int,driverExtra:Int,fields:Int,position:java.nio.ByteBuffer,logPixels:Int,bitsPerPel:Int,pelsWidth:Int,pelsHeight:Int,displayFlags:Int,displayFrequency:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	@:overload(function (deviceName:java.lang.CharSequence,specVersion:Int,driverVersion:Int,size:Int,driverExtra:Int,fields:Int,position:java.nio.ByteBuffer,logPixels:Int,bitsPerPel:Int,pelsWidth:Int,pelsHeight:Int,displayFlags:Int,displayFrequency:Int):java.nio.ByteBuffer {})
	static public function deviceNameGet(devmode:java.nio.ByteBuffer,deviceName:java.nio.ByteBuffer):Void;
	public function setDisplayFrequency(displayFrequency:Int):Void;
	public function setFields(fields:Int):Void;
	public function getPointer():haxe.Int64;
	public function getDisplayFrequency():Int;
	public function setDeviceName(deviceName:java.nio.ByteBuffer):Void;
	@:overload(function (deviceName:java.lang.CharSequence):Void {})
	public function getSize():Int;
	public function getPosition(position:java.nio.ByteBuffer):Void;
	static public function driverVersion(devmode:java.nio.ByteBuffer,driverVersion:Int):Void;
	@:overload(function (devmode:java.nio.ByteBuffer):Int {})
	public function setDisplayFlags(displayFlags:Int):Void;
	public function getBitsPerPel():Int;

}
