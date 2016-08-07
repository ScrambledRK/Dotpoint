package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.Closure.Float")
/** A {@code Closure} that returns a float value.  */
extern class Closure_Float extends org.lwjgl.system.libffi.Closure 
{
	private function new(cif:java.nio.ByteBuffer):Void;
	private function callback_(args:haxe.Int64):Int;

}
