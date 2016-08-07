package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLCreateContextCallback.SAM")
/** A functional interface for {@link CLCreateContextCallback}.  */
extern interface CLCreateContextCallback_SAM
{
	public function invoke(errinfo:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64):Void;

}
