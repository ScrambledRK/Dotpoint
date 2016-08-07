package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBTTPackRange")
@:final
/** A range of packed character data, returned by {@link STBTruetype#stbtt_PackFontRanges}  */
extern class STBTTPackRange implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var FONT_SIZE:Int;
/** The struct member offsets.  */
	static public var FIRST_UNICODE_CHAR_IN_RANGE:Int;
/** The struct member offsets.  */
	static public var NUM_CHARS_IN_RANGE:Int;
/** The struct member offsets.  */
	static public var CHARDATA_FOR_RANGE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getFirstUnicodeCharInRange():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(font_size:Float,first_unicode_char_in_range:Int,num_chars_in_range:Int,chardata_for_range:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getFontSize():Float;
	public function getChardataForRange():haxe.Int64;
	static public function num_chars_in_range(stbtt_pack_range:java.nio.ByteBuffer,num_chars_in_range:Int):Void;
	@:overload(function (stbtt_pack_range:java.nio.ByteBuffer):Int {})
	public function getChardataForRangeBuffer():java.nio.ByteBuffer;
	static public function font_size(stbtt_pack_range:java.nio.ByteBuffer,font_size:Float):Void;
	@:overload(function (stbtt_pack_range:java.nio.ByteBuffer):Float {})
	public function getPointer():haxe.Int64;
	public function setFontSize(font_size:Float):Void;
	static public function chardata_for_rangeBuffer(stbtt_pack_range:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function setNumCharsInRange(num_chars_in_range:Int):Void;
	public function setChardataForRange(chardata_for_range:java.nio.ByteBuffer):Void;
	@:overload(function (chardata_for_range:haxe.Int64):Void {})
	public function getNumCharsInRange():Int;
	static public function first_unicode_char_in_range(stbtt_pack_range:java.nio.ByteBuffer,first_unicode_char_in_range:Int):Void;
	@:overload(function (stbtt_pack_range:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	static public function chardata_for_range(stbtt_pack_range:java.nio.ByteBuffer,chardata_for_range:haxe.Int64):Void;
	@:overload(function (stbtt_pack_range:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (stbtt_pack_range:java.nio.ByteBuffer,chardata_for_range:java.nio.ByteBuffer):Void {})
	public function setFirstUnicodeCharInRange(first_unicode_char_in_range:Int):Void;

}
