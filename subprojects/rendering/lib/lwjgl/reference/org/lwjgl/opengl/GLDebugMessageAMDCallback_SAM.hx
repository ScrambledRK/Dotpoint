package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLDebugMessageAMDCallback.SAM")
/** A functional interface for {@link GLDebugMessageAMDCallback}.  */
extern interface GLDebugMessageAMDCallback_SAM
{
	public function invoke(id:Int,category:Int,severity:Int,length:Int,message:haxe.Int64,userParam:haxe.Int64):Void;

}
