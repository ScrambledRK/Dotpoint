package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLSVMFreeCallback.SAM")
/** A functional interface for {@link CLSVMFreeCallback}.  */
extern interface CLSVMFreeCallback_SAM
{
	public function invoke(queue:haxe.Int64,num_svm_pointers:Int,svm_pointers:haxe.Int64,user_data:haxe.Int64):Void;

}
