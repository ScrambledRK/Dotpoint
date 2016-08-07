package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XRRScreenResources")
@:final
/** Xrandr screen resources struct.  */
extern class XRRScreenResources implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TIMESTAMP:Int;
/** The struct member offsets.  */
	static public var CONFIGTIMESTAMP:Int;
/** The struct member offsets.  */
	static public var NCRTC:Int;
/** The struct member offsets.  */
	static public var CRTCS:Int;
/** The struct member offsets.  */
	static public var NOUTPUT:Int;
/** The struct member offsets.  */
	static public var OUTPUTS:Int;
/** The struct member offsets.  */
	static public var NMODE:Int;
/** The struct member offsets.  */
	static public var MODES:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setOutputs(outputs:java.nio.ByteBuffer):Void;
	@:overload(function (outputs:haxe.Int64):Void {})
	static public function outputs(xrrscreenresources:java.nio.ByteBuffer,outputs:haxe.Int64):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer,outputs:java.nio.ByteBuffer):Void {})
	public function getOutputs(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function modes(xrrscreenresources:java.nio.ByteBuffer,modes:haxe.Int64):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer,modes:java.nio.ByteBuffer):Void {})
	public function getNmode():Int;
	public function setCrtcs(crtcs:java.nio.ByteBuffer):Void;
	@:overload(function (crtcs:haxe.Int64):Void {})
	public function getNcrtc():Int;
	public function setNoutput(noutput:Int):Void;
	static public function nmode(xrrscreenresources:java.nio.ByteBuffer,nmode:Int):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):Int {})
	static public function noutput(xrrscreenresources:java.nio.ByteBuffer,noutput:Int):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):Int {})
	public function setConfigTimestamp(configTimestamp:haxe.Int64):Void;
	public function getTimestamp():haxe.Int64;
	public function getModesBuffer():java.nio.ByteBuffer;
	public function getCrtcs(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function configTimestamp(xrrscreenresources:java.nio.ByteBuffer,configTimestamp:haxe.Int64):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):haxe.Int64 {})
	public function buffer():java.nio.ByteBuffer;
	public function setTimestamp(timestamp:haxe.Int64):Void;
	static public function timestamp(xrrscreenresources:java.nio.ByteBuffer,timestamp:haxe.Int64):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):haxe.Int64 {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(timestamp:haxe.Int64,configTimestamp:haxe.Int64,ncrtc:Int,crtcs:java.nio.ByteBuffer,noutput:Int,outputs:java.nio.ByteBuffer,nmode:Int,modes:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setNcrtc(ncrtc:Int):Void;
	public function setNmode(nmode:Int):Void;
	static public function modesBuffer(xrrscreenresources:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function getModes():haxe.Int64;
	public function getConfigTimestamp():haxe.Int64;
	static public function ncrtc(xrrscreenresources:java.nio.ByteBuffer,ncrtc:Int):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):Int {})
	public function setModes(modes:java.nio.ByteBuffer):Void;
	@:overload(function (modes:haxe.Int64):Void {})
	public function getNoutput():Int;
	static public function crtcs(xrrscreenresources:java.nio.ByteBuffer,crtcs:haxe.Int64):Void;
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xrrscreenresources:java.nio.ByteBuffer,crtcs:java.nio.ByteBuffer):Void {})

}
