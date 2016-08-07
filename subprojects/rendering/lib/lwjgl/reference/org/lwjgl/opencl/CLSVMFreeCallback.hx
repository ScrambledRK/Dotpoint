package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLSVMFreeCallback")
/** Instances of this interface may be passed to the {@link CL20#clEnqueueSVMFree} method.  */
extern class CLSVMFreeCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called to free shared virtual memory pointers.
 *
 * @param queue            a valid host command-queue
 * @param num_svm_pointers the number of pointers in the {@code svm_pointers} array
 * @param svm_pointers     an array of shared virtual memory pointers to be freed
 * @param user_data        the user-specified value that was passed when calling {@link CL20#clEnqueueSVMFree}
 */
	public function invoke(queue:haxe.Int64,num_svm_pointers:Int,svm_pointers:haxe.Int64,user_data:haxe.Int64):Void;

}
