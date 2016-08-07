package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLDebugMessageCallback.SAM")
/** A functional interface for {@link GLDebugMessageCallback}.  */
extern interface GLDebugMessageCallback_SAM
{
	public function invoke(source:Int,type:Int,id:Int,severity:Int,length:Int,message:haxe.Int64,userParam:haxe.Int64):Void;

}
