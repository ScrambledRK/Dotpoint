package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XRRCrtcInfo")
@:final
/** Xrandr Crtc info struct.  */
extern class XRRCrtcInfo implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TIMESTAMP:Int;
/** The struct member offsets.  */
	static public var X:Int;
/** The struct member offsets.  */
	static public var Y:Int;
/** The struct member offsets.  */
	static public var WIDTH:Int;
/** The struct member offsets.  */
	static public var HEIGHT:Int;
/** The struct member offsets.  */
	static public var MODE:Int;
/** The struct member offsets.  */
	static public var ROTATION:Int;
/** The struct member offsets.  */
	static public var NOUTPUT:Int;
/** The struct member offsets.  */
	static public var OUTPUTS:Int;
/** The struct member offsets.  */
	static public var ROTATIONS:Int;
/** The struct member offsets.  */
	static public var NPOSSIBLE:Int;
/** The struct member offsets.  */
	static public var POSSIBLE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setOutputs(outputs:java.nio.ByteBuffer):Void;
	@:overload(function (outputs:haxe.Int64):Void {})
	static public function outputs(xrrcrtcinfo:java.nio.ByteBuffer,outputs:haxe.Int64):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer,outputs:java.nio.ByteBuffer):Void {})
	public function setY(y:Int):Void;
	public function setX(x:Int):Void;
	public function getOutputs(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function getNpossible():Int;
	public function getRotation():Int;
	public function getRotations():Int;
	public function getWidth():Int;
	public function setNoutput(noutput:Int):Void;
	static public function mode(xrrcrtcinfo:java.nio.ByteBuffer,mode:haxe.Int64):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):haxe.Int64 {})
	static public function noutput(xrrcrtcinfo:java.nio.ByteBuffer,noutput:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})
	public function getHeight():Int;
	public function getPossible(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function getTimestamp():haxe.Int64;
	public function buffer():java.nio.ByteBuffer;
	public function getMode():haxe.Int64;
	static public function npossible(xrrcrtcinfo:java.nio.ByteBuffer,npossible:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})
	public function setTimestamp(timestamp:haxe.Int64):Void;
	public function setNpossible(npossible:Int):Void;
	public function setPossible(possible:java.nio.ByteBuffer):Void;
	@:overload(function (possible:haxe.Int64):Void {})
	static public function timestamp(xrrcrtcinfo:java.nio.ByteBuffer,timestamp:haxe.Int64):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):haxe.Int64 {})
	static public function height(xrrcrtcinfo:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(timestamp:haxe.Int64,x:Int,y:Int,width:Int,height:Int,mode:haxe.Int64,rotation:Int,noutput:Int,outputs:java.nio.ByteBuffer,rotations:Int,npossible:Int,possible:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function rotation(xrrcrtcinfo:java.nio.ByteBuffer,rotation:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})
	public function setMode(mode:haxe.Int64):Void;
	public function getPointer():haxe.Int64;
	public function setRotation(rotation:Int):Void;
	static public function possible(xrrcrtcinfo:java.nio.ByteBuffer,possible:haxe.Int64):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer,possible:java.nio.ByteBuffer):Void {})
	public function setWidth(width:Int):Void;
	public function setHeight(height:Int):Void;
	public function getX():Int;
	public function getNoutput():Int;
	public function getY():Int;
	static public function x(xrrcrtcinfo:java.nio.ByteBuffer,x:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})
	static public function width(xrrcrtcinfo:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})
	public function setRotations(rotations:Int):Void;
	static public function y(xrrcrtcinfo:java.nio.ByteBuffer,y:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})
	static public function rotations(xrrcrtcinfo:java.nio.ByteBuffer,rotations:Int):Void;
	@:overload(function (xrrcrtcinfo:java.nio.ByteBuffer):Int {})

}
