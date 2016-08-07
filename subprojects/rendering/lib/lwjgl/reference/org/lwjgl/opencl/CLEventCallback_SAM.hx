package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLEventCallback.SAM")
/** A functional interface for {@link CLEventCallback}.  */
extern interface CLEventCallback_SAM
{
	public function invoke(event:haxe.Int64,event_command_exec_status:Int,user_data:haxe.Int64):Void;

}
