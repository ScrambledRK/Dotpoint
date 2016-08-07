package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.Closure.Ptr")
/** A {@code Closure} that returns a pointer value.  */
extern class Closure_Ptr extends org.lwjgl.system.libffi.Closure 
{
	private function new(cif:java.nio.ByteBuffer):Void;
	private function callback_(args:haxe.Int64):haxe.Int64;

}
