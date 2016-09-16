package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBRPContext")
@:final
/** The opaque {@code stbrp_context} struct.  */
extern class STBRPContext implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
	static public function malloc():java.nio.ByteBuffer;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;

}