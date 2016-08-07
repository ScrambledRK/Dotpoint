package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.JOYINFOEX")
@:final
/** Contains extended information about the joystick position, point-of-view position, and button state.  */
extern class JOYINFOEX implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var XPOS:Int;
/** The struct member offsets.  */
	static public var YPOS:Int;
/** The struct member offsets.  */
	static public var ZPOS:Int;
/** The struct member offsets.  */
	static public var RPOS:Int;
/** The struct member offsets.  */
	static public var UPOS:Int;
/** The struct member offsets.  */
	static public var VPOS:Int;
/** The struct member offsets.  */
	static public var BUTTONS:Int;
/** The struct member offsets.  */
	static public var BUTTONNUMBER:Int;
/** The struct member offsets.  */
	static public var POV:Int;
/** The struct member offsets.  */
	static public var RESERVED1:Int;
/** The struct member offsets.  */
	static public var RESERVED2:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getButtonNumber():Int;
	static public function zPos(joyinfoex:java.nio.ByteBuffer,zPos:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function setButtonNumber(buttonNumber:Int):Void;
	static public function buttonNumber(joyinfoex:java.nio.ByteBuffer,buttonNumber:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	static public function flags(joyinfoex:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	static public function vPos(joyinfoex:java.nio.ByteBuffer,vPos:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function setRPos(rPos:Int):Void;
	static public function xPos(joyinfoex:java.nio.ByteBuffer,xPos:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function setYPos(yPos:Int):Void;
	public function getUPos():Int;
	public function setVPos(vPos:Int):Void;
	public function setReserved1(reserved1:Int):Void;
	public function getReserved1():Int;
	public function setSize(size:Int):Void;
	public function getReserved2():Int;
	public function getYPos():Int;
	public function setPOV(pov:Int):Void;
	static public function reserved2(joyinfoex:java.nio.ByteBuffer,reserved2:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	static public function reserved1(joyinfoex:java.nio.ByteBuffer,reserved1:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function setReserved2(reserved2:Int):Void;
	public function setButtons(buttons:Int):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(size:Int,flags:Int,xPos:Int,yPos:Int,zPos:Int,rPos:Int,uPos:Int,vPos:Int,buttons:Int,buttonNumber:Int,POV:Int,reserved1:Int,reserved2:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function yPos(joyinfoex:java.nio.ByteBuffer,yPos:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	static public function buttons(joyinfoex:java.nio.ByteBuffer,buttons:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function getButtons():Int;
	public function getPOV():Int;
	static public function uPos(joyinfoex:java.nio.ByteBuffer,uPos:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function setZPos(zPos:Int):Void;
	public function setXPos(xPos:Int):Void;
	public function setUPos(uPos:Int):Void;
	public function getSize():Int;
	public function getVPos():Int;
	static public function size(joyinfoex:java.nio.ByteBuffer,size:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function getXPos():Int;
	static public function POV(joyinfoex:java.nio.ByteBuffer,pov:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	static public function rPos(joyinfoex:java.nio.ByteBuffer,rPos:Int):Void;
	@:overload(function (joyinfoex:java.nio.ByteBuffer):Int {})
	public function getZPos():Int;
	public function getFlags():Int;
	public function getRPos():Int;
	public function setFlags(flags:Int):Void;

}
