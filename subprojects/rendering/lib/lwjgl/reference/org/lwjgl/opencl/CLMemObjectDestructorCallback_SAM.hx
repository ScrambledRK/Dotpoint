package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLMemObjectDestructorCallback.SAM")
/** A functional interface for {@link CLMemObjectDestructorCallback}.  */
extern interface CLMemObjectDestructorCallback_SAM
{
	public function invoke(memobj:haxe.Int64,user_data:haxe.Int64):Void;

}
