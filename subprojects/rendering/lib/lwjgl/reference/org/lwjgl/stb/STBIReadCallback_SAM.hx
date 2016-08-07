package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBIReadCallback.SAM")
/** A functional interface for {@link STBIReadCallback}.  */
extern interface STBIReadCallback_SAM
{
	public function invoke(user:haxe.Int64,data:haxe.Int64,size:Int):Int;

}
