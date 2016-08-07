package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XMacros")
@:final
extern class XMacros 
{
	static public function XIMaskLen(event:Int):Int;
	static public function XIClearMask(ptr:java.nio.ByteBuffer,event:Int):Void;
	static public function XIMaskIsSet(ptr:java.nio.ByteBuffer,event:Int):Bool;
	static public function XISetMask(ptr:java.nio.ByteBuffer,event:Int):Void;

}
