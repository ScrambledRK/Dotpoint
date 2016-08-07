package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLProgramCallback.SAM")
/** A functional interface for {@link CLProgramCallback}.  */
extern interface CLProgramCallback_SAM
{
	public function invoke(program:haxe.Int64,user_data:haxe.Int64):Void;

}
