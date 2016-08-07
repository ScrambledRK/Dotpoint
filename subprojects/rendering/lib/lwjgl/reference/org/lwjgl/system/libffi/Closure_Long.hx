package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.Closure.Long")
/** A {@code Closure} that returns a long value.  */
extern class Closure_Long extends org.lwjgl.system.libffi.Closure 
{
	private function new(cif:java.nio.ByteBuffer):Void;
	private function callback_(args:haxe.Int64):Int;

}
