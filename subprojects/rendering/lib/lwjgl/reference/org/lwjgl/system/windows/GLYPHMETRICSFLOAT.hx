package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.GLYPHMETRICSFLOAT")
@:final
/** Contains information about the placement and orientation of a glyph in a character cell.  */
extern class GLYPHMETRICSFLOAT implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var BLACKBOXX:Int;
/** The struct member offsets.  */
	static public var BLOCKBOXY:Int;
/** The struct member offsets.  */
	static public var GLYPHORIGIN:Int;
/** The struct member offsets.  */
	static public var CELLINCX:Int;
/** The struct member offsets.  */
	static public var CELLINCY:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getBlockBoxY():Float;
	static public function glyphOriginY(glyphmetricsfloat:java.nio.ByteBuffer,y:Float):Void;
	@:overload(function (glyphmetricsfloat:java.nio.ByteBuffer):Float {})
	static public function glyphOriginX(glyphmetricsfloat:java.nio.ByteBuffer,x:Float):Void;
	@:overload(function (glyphmetricsfloat:java.nio.ByteBuffer):Float {})
	public function getGlyphOriginY():Float;
	public function getGlyphOriginX():Float;
	public function setGlyphOrigin(glyphOrigin:java.nio.ByteBuffer):Void;
	public function getCellIncX():Float;
	public function getCellIncY():Float;
	public function getBlackBoxX():Float;
	public function buffer():java.nio.ByteBuffer;
	public function setBlockBoxY(blockBoxY:Float):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(blackBoxX:Float,blockBoxY:Float,glyphOrigin:java.nio.ByteBuffer,cellIncX:Float,cellIncY:Float):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function setCellIncX(cellIncX:Float):Void;
	public function setCellIncY(cellIncY:Float):Void;
	static public function blockBoxY(glyphmetricsfloat:java.nio.ByteBuffer,blockBoxY:Float):Void;
	@:overload(function (glyphmetricsfloat:java.nio.ByteBuffer):Float {})
	public function setBlackBoxX(blackBoxX:Float):Void;
	static public function glyphOriginGet(glyphmetricsfloat:java.nio.ByteBuffer,glyphOrigin:java.nio.ByteBuffer):Void;
	public function getPointer():haxe.Int64;
	static public function blackBoxX(glyphmetricsfloat:java.nio.ByteBuffer,blackBoxX:Float):Void;
	@:overload(function (glyphmetricsfloat:java.nio.ByteBuffer):Float {})
	static public function cellIncY(glyphmetricsfloat:java.nio.ByteBuffer,cellIncY:Float):Void;
	@:overload(function (glyphmetricsfloat:java.nio.ByteBuffer):Float {})
	static public function cellIncX(glyphmetricsfloat:java.nio.ByteBuffer,cellIncX:Float):Void;
	@:overload(function (glyphmetricsfloat:java.nio.ByteBuffer):Float {})
	public function setGlyphOriginX(x:Float):Void;
	public function setGlyphOriginY(y:Float):Void;
	public function getGlyphOrigin(glyphOrigin:java.nio.ByteBuffer):Void;
	static public function glyphOriginSet(glyphmetricsfloat:java.nio.ByteBuffer,glyphOrigin:java.nio.ByteBuffer):Void;

}
