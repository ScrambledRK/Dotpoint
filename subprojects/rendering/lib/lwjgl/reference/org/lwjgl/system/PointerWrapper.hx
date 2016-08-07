package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.PointerWrapper")
/** An object wrapper around a native pointer address.  */
extern class PointerWrapper implements org.lwjgl.Pointer
{
	private var pointer:haxe.Int64;
	private function new(pointer:haxe.Int64):Void;
	public function hashCode():Int;
	public function equals(o:Dynamic):Bool;
	public function toString():String;
	public function getPointer():haxe.Int64;

}
