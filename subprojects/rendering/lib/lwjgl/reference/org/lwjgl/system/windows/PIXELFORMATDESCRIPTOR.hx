package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.PIXELFORMATDESCRIPTOR")
@:final
/** Describes the pixel format of a drawing surface.  */
extern class PIXELFORMATDESCRIPTOR implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
/** The struct member offsets.  */
	static public var VERSION:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var PIXELTYPE:Int;
/** The struct member offsets.  */
	static public var COLORBITS:Int;
/** The struct member offsets.  */
	static public var REDBITS:Int;
/** The struct member offsets.  */
	static public var REDSHIRT:Int;
/** The struct member offsets.  */
	static public var GREENBITS:Int;
/** The struct member offsets.  */
	static public var GREENSHIFT:Int;
/** The struct member offsets.  */
	static public var BLUEBITS:Int;
/** The struct member offsets.  */
	static public var BLUESHIFT:Int;
/** The struct member offsets.  */
	static public var ALPHABITS:Int;
/** The struct member offsets.  */
	static public var ALPHASHIFT:Int;
/** The struct member offsets.  */
	static public var ACCUMBITS:Int;
/** The struct member offsets.  */
	static public var ACCUMREDBITS:Int;
/** The struct member offsets.  */
	static public var ACCUMGREENBITS:Int;
/** The struct member offsets.  */
	static public var ACCUMBLUEBITS:Int;
/** The struct member offsets.  */
	static public var ACCUMALPHABITS:Int;
/** The struct member offsets.  */
	static public var DEPTHBITS:Int;
/** The struct member offsets.  */
	static public var STENCILBITS:Int;
/** The struct member offsets.  */
	static public var AUXBUFFERS:Int;
/** The struct member offsets.  */
	static public var LAYERTYPE:Int;
/** The struct member offsets.  */
	static public var RESERVED:Int;
/** The struct member offsets.  */
	static public var LAYERMASK:Int;
/** The struct member offsets.  */
	static public var VISIBLEMASK:Int;
/** The struct member offsets.  */
	static public var DAMAGEMASK:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function accumGreenBits(pixelformatdescriptor:java.nio.ByteBuffer,accumGreenBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function greenBits(pixelformatdescriptor:java.nio.ByteBuffer,greenBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getDamageMask():Int;
	static public function colorBits(pixelformatdescriptor:java.nio.ByteBuffer,colorBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getRedShirt():Int;
	public function setGreenBits(greenBits:Int):Void;
	public function setColorBits(colorBits:Int):Void;
	public function setAccumGreenBits(accumGreenBits:Int):Void;
	public function setAuxBuffers(auxBuffers:Int):Void;
	public function setAccumBlueBits(accumBlueBits:Int):Void;
	static public function alphaBits(pixelformatdescriptor:java.nio.ByteBuffer,alphaBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function accumAlphaBits(pixelformatdescriptor:java.nio.ByteBuffer,accumAlphaBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setLayerMask(layerMask:Int):Void;
	public function getLayerMask():Int;
	public function setAlphaBits(alphaBits:Int):Void;
	static public function greenShift(pixelformatdescriptor:java.nio.ByteBuffer,greenShift:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function accumRedBits(pixelformatdescriptor:java.nio.ByteBuffer,accumRedBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setReserved(reserved:Int):Void;
	static public function layerMask(pixelformatdescriptor:java.nio.ByteBuffer,layerMask:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function getAccumGreenBits():Int;
	public function getAccumBlueBits():Int;
	public function getColorBits():Int;
	public function setVersion(version:Int):Void;
	static public function blueBits(pixelformatdescriptor:java.nio.ByteBuffer,blueBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setAlphaShift(alphaShift:Int):Void;
	static public function version(pixelformatdescriptor:java.nio.ByteBuffer,version:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setAccumBits(accumBits:Int):Void;
	static public function accumBits(pixelformatdescriptor:java.nio.ByteBuffer,accumBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getPixelType():Int;
	static public function size(pixelformatdescriptor:java.nio.ByteBuffer,size:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function reserved(pixelformatdescriptor:java.nio.ByteBuffer,reserved:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getDepthBits():Int;
	static public function redBits(pixelformatdescriptor:java.nio.ByteBuffer,redBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function auxBuffers(pixelformatdescriptor:java.nio.ByteBuffer,auxBuffers:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function visibleMask(pixelformatdescriptor:java.nio.ByteBuffer,visibleMask:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setVisibleMask(visibleMask:Int):Void;
	public function getFlags():Int;
	public function setFlags(flags:Int):Void;
	public function setBlueBits(blueBits:Int):Void;
	public function setBlueShift(blueShift:Int):Void;
	static public function alphaShift(pixelformatdescriptor:java.nio.ByteBuffer,alphaShift:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function flags(pixelformatdescriptor:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setRedBits(redBits:Int):Void;
	static public function damageMask(pixelformatdescriptor:java.nio.ByteBuffer,damageMask:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	static public function pixelType(pixelformatdescriptor:java.nio.ByteBuffer,pixelType:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getRedBits():Int;
	public function getAlphaBits():Int;
	public function getLayerType():Int;
	public function getStencilBits():Int;
	static public function blueShift(pixelformatdescriptor:java.nio.ByteBuffer,blueShift:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setGreenShift(greenShift:Int):Void;
	public function setSize(size:Int):Void;
	public function getVisibleMask():Int;
	public function getGreenShift():Int;
	public function getVersion():Int;
	public function getBlueShift():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(size:Int,version:Int,flags:Int,pixelType:Int,colorBits:Int,redBits:Int,redShirt:Int,greenBits:Int,greenShift:Int,blueBits:Int,blueShift:Int,alphaBits:Int,alphaShift:Int,accumBits:Int,accumRedBits:Int,accumGreenBits:Int,accumBlueBits:Int,accumAlphaBits:Int,depthBits:Int,stencilBits:Int,auxBuffers:Int,layerType:Int,reserved:Int,layerMask:Int,visibleMask:Int,damageMask:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function layerType(pixelformatdescriptor:java.nio.ByteBuffer,layerType:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setLayerType(layerType:Int):Void;
	public function setAccumRedBits(accumRedBits:Int):Void;
	public function setAccumAlphaBits(accumAlphaBits:Int):Void;
	public function setStencilBits(stencilBits:Int):Void;
	static public function redShirt(pixelformatdescriptor:java.nio.ByteBuffer,redShirt:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getReserved():Int;
	static public function stencilBits(pixelformatdescriptor:java.nio.ByteBuffer,stencilBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function setDamageMask(damageMask:Int):Void;
	public function getGreenBits():Int;
	public function getAccumRedBits():Int;
	public function setPixelType(pixelType:Int):Void;
	public function setRedShirt(redShirt:Int):Void;
	public function getSize():Int;
	public function getBlueBits():Int;
	public function getAuxBuffers():Int;
	public function getAccumAlphaBits():Int;
	public function getAccumBits():Int;
	static public function accumBlueBits(pixelformatdescriptor:java.nio.ByteBuffer,accumBlueBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function getAlphaShift():Int;
	static public function depthBits(pixelformatdescriptor:java.nio.ByteBuffer,depthBits:Int):Void;
	@:overload(function (pixelformatdescriptor:java.nio.ByteBuffer):Int {})
	public function setDepthBits(depthBits:Int):Void;

}
