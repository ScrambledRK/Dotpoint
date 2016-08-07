package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLDebugMessageARBCallback.SAM")
/** A functional interface for {@link GLDebugMessageARBCallback}.  */
extern interface GLDebugMessageARBCallback_SAM
{
	public function invoke(source:Int,type:Int,id:Int,severity:Int,length:Int,message:haxe.Int64,userParam:haxe.Int64):Void;

}
