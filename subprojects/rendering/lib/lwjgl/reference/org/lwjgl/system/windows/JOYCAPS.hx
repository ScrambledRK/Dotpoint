package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.JOYCAPS")
@:final
/** Contains information about the joystick capabilities.  */
extern class JOYCAPS implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var MID:Int;
/** The struct member offsets.  */
	static public var PID:Int;
/** The struct member offsets.  */
	static public var PNAME:Int;
/** The struct member offsets.  */
	static public var XMIN:Int;
/** The struct member offsets.  */
	static public var XMAX:Int;
/** The struct member offsets.  */
	static public var YMIN:Int;
/** The struct member offsets.  */
	static public var YMAX:Int;
/** The struct member offsets.  */
	static public var ZMIN:Int;
/** The struct member offsets.  */
	static public var ZMAX:Int;
/** The struct member offsets.  */
	static public var NUMBUTTONS:Int;
/** The struct member offsets.  */
	static public var PERIODMIN:Int;
/** The struct member offsets.  */
	static public var PERIODMAX:Int;
/** The struct member offsets.  */
	static public var RMIN:Int;
/** The struct member offsets.  */
	static public var RMAX:Int;
/** The struct member offsets.  */
	static public var UMIN:Int;
/** The struct member offsets.  */
	static public var UMAX:Int;
/** The struct member offsets.  */
	static public var VMIN:Int;
/** The struct member offsets.  */
	static public var VMAX:Int;
/** The struct member offsets.  */
	static public var CAPS:Int;
/** The struct member offsets.  */
	static public var MAXAXES:Int;
/** The struct member offsets.  */
	static public var NUMAXES:Int;
/** The struct member offsets.  */
	static public var MAXBUTTONS:Int;
/** The struct member offsets.  */
	static public var REGKEY:Int;
/** The struct member offsets.  */
	static public var OEMVXD:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setUmax(umax:Int):Void;
	public function getNumButtons():Int;
	static public function ymin(joycaps:java.nio.ByteBuffer,ymin:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function regKeySet(joycaps:java.nio.ByteBuffer,regKey:java.nio.ByteBuffer):Void;
	public function setMid(mid:Int):Void;
	static public function OEMVxDString(joycaps:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (joycaps:java.nio.ByteBuffer):String {})
	public function getZmin():Int;
	static public function rmax(joycaps:java.nio.ByteBuffer,rmax:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function setPeriodMin(periodMin:Int):Void;
	static public function pid(joycaps:java.nio.ByteBuffer,pid:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function umin(joycaps:java.nio.ByteBuffer,umin:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function setXmin(xmin:Int):Void;
	public function getOEMVxD(OEMVxD:java.nio.ByteBuffer):Void;
	public function getRmin():Int;
	static public function zmax(joycaps:java.nio.ByteBuffer,zmax:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function getVmin():Int;
	public function getNumAxes():Int;
	static public function periodMin(joycaps:java.nio.ByteBuffer,periodMin:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function rmin(joycaps:java.nio.ByteBuffer,rmin:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function pnameString(joycaps:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (joycaps:java.nio.ByteBuffer):String {})
	static public function vmax(joycaps:java.nio.ByteBuffer,vmax:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function getMid():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setYmax(ymax:Int):Void;
	public function getPeriodMax():Int;
	static public function regKeyGet(joycaps:java.nio.ByteBuffer,regKey:java.nio.ByteBuffer):Void;
	static public function zmin(joycaps:java.nio.ByteBuffer,zmin:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function getVmax():Int;
	static public function pname(joycaps:java.nio.ByteBuffer,pname:java.lang.CharSequence):Void;
	static public function periodMax(joycaps:java.nio.ByteBuffer,periodMax:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function maxButtons(joycaps:java.nio.ByteBuffer,maxButtons:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function setPeriodMax(periodMax:Int):Void;
	public function getYmin():Int;
	public function setNumButtons(numButtons:Int):Void;
	public function getZmax():Int;
	public function getPeriodMin():Int;
	public function getCaps():Int;
	public function setCaps(caps:Int):Void;
	static public function vmin(joycaps:java.nio.ByteBuffer,vmin:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function getRmax():Int;
	public function setPname(pname:java.nio.ByteBuffer):Void;
	@:overload(function (pname:java.lang.CharSequence):Void {})
	static public function OEMVxD(joycaps:java.nio.ByteBuffer,OEMVxD:java.lang.CharSequence):Void;
	public function getUmin():Int;
	public function setRegKey(regKey:java.nio.ByteBuffer):Void;
	@:overload(function (regKey:java.lang.CharSequence):Void {})
	public function setXmax(xmax:Int):Void;
	public function getPname(pname:java.nio.ByteBuffer):Void;
	public function setMaxButtons(maxButtons:Int):Void;
	static public function pnameSet(joycaps:java.nio.ByteBuffer,pname:java.nio.ByteBuffer):Void;
	static public function OEMVxDGet(joycaps:java.nio.ByteBuffer,OEMVxD:java.nio.ByteBuffer):Void;
	public function getUmax():Int;
	public function setZmin(zmin:Int):Void;
	public function getYmax():Int;
	static public function mid(joycaps:java.nio.ByteBuffer,mid:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function setPid(pid:Int):Void;
	public function setOEMVxD(OEMVxD:java.nio.ByteBuffer):Void;
	@:overload(function (OEMVxD:java.lang.CharSequence):Void {})
	static public function numButtons(joycaps:java.nio.ByteBuffer,numButtons:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function regKeyString(joycaps:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (joycaps:java.nio.ByteBuffer):String {})
	public function setVmin(vmin:Int):Void;
	static public function caps(joycaps:java.nio.ByteBuffer,caps:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function xmax(joycaps:java.nio.ByteBuffer,xmax:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function getRegKeyString(byteLen:Int):String;
	@:overload(function ():String {})
	public function getXmin():Int;
	static public function OEMVxDSet(joycaps:java.nio.ByteBuffer,OEMVxD:java.nio.ByteBuffer):Void;
	public function getPid():Int;
	public function setVmax(vmax:Int):Void;
	public function setMaxAxes(maxAxes:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Alternative virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(mid:Int,pid:Int,pname:java.nio.ByteBuffer,xmin:Int,xmax:Int,ymin:Int,ymax:Int,zmin:Int,zmax:Int,numButtons:Int,periodMin:Int,periodMax:Int,rmin:Int,rmax:Int,umin:Int,umax:Int,vmin:Int,vmax:Int,caps:Int,maxAxes:Int,numAxes:Int,maxButtons:Int,regKey:java.nio.ByteBuffer,OEMVxD:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	@:overload(function (mid:Int,pid:Int,pname:java.lang.CharSequence,xmin:Int,xmax:Int,ymin:Int,ymax:Int,zmin:Int,zmax:Int,numButtons:Int,periodMin:Int,periodMax:Int,rmin:Int,rmax:Int,umin:Int,umax:Int,vmin:Int,vmax:Int,caps:Int,maxAxes:Int,numAxes:Int,maxButtons:Int,regKey:java.lang.CharSequence,OEMVxD:java.lang.CharSequence):java.nio.ByteBuffer {})
	static public function xmin(joycaps:java.nio.ByteBuffer,xmin:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function getXmax():Int;
	public function getPnameString(byteLen:Int):String;
	@:overload(function ():String {})
	public function getMaxAxes():Int;
	public function setYmin(ymin:Int):Void;
	public function getPointer():haxe.Int64;
	static public function regKey(joycaps:java.nio.ByteBuffer,regKey:java.lang.CharSequence):Void;
	public function setRmin(rmin:Int):Void;
	public function setUmin(umin:Int):Void;
	static public function maxAxes(joycaps:java.nio.ByteBuffer,maxAxes:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function getMaxButtons():Int;
	public function getOEMVxDString(byteLen:Int):String;
	@:overload(function ():String {})
	static public function ymax(joycaps:java.nio.ByteBuffer,ymax:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function numAxes(joycaps:java.nio.ByteBuffer,numAxes:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	static public function umax(joycaps:java.nio.ByteBuffer,umax:Int):Void;
	@:overload(function (joycaps:java.nio.ByteBuffer):Int {})
	public function setRmax(rmax:Int):Void;
	public function setNumAxes(numAxes:Int):Void;
	static public function pnameGet(joycaps:java.nio.ByteBuffer,pname:java.nio.ByteBuffer):Void;
	public function setZmax(zmax:Int):Void;
	public function getRegKey(regKey:java.nio.ByteBuffer):Void;

}
