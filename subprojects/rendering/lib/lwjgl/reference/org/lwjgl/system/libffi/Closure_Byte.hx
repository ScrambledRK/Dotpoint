package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.Closure.Byte")
/** A {@code Closure} that returns a byte value.  */
extern class Closure_Byte extends org.lwjgl.system.libffi.Closure 
{
	private function new(cif:java.nio.ByteBuffer):Void;
	private function callback_(args:haxe.Int64):Int8;

}
