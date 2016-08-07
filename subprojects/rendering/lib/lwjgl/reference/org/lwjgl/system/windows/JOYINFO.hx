package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.JOYINFO")
@:final
/** Contains information about the joystick position and button state.  */
extern class JOYINFO implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var XPOS:Int;
/** The struct member offsets.  */
	static public var YPOS:Int;
/** The struct member offsets.  */
	static public var ZPOS:Int;
/** The struct member offsets.  */
	static public var BUTTONS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(xPos:Int,yPos:Int,zPos:Int,buttons:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function zPos(joyinfo:java.nio.ByteBuffer,zPos:Int):Void;
	@:overload(function (joyinfo:java.nio.ByteBuffer):Int {})
	static public function yPos(joyinfo:java.nio.ByteBuffer,yPos:Int):Void;
	@:overload(function (joyinfo:java.nio.ByteBuffer):Int {})
	static public function buttons(joyinfo:java.nio.ByteBuffer,buttons:Int):Void;
	@:overload(function (joyinfo:java.nio.ByteBuffer):Int {})
	public function getButtons():Int;
	public function getPointer():haxe.Int64;
	static public function xPos(joyinfo:java.nio.ByteBuffer,xPos:Int):Void;
	@:overload(function (joyinfo:java.nio.ByteBuffer):Int {})
	public function setZPos(zPos:Int):Void;
	public function setXPos(xPos:Int):Void;
	public function setYPos(yPos:Int):Void;
	public function getXPos():Int;
	public function getYPos():Int;
	public function getZPos():Int;
	public function buffer():java.nio.ByteBuffer;
	public function setButtons(buttons:Int):Void;

}
