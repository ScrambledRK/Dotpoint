package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLCreateContextCallback")
/** Instances of this interface may be passed to the {@link CL10#clCreateContext} and {@link CL10#clCreateContextFromType} methods.  */
extern class CLCreateContextCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when a debug message is generated.
 *
 * @param errinfo      a pointer to the message string representation
 * @param private_info a pointer to binary data that is returned by the OpenCL implementation that can be used to log additional information helpful in debugging the error
 * @param cb           the number of bytes in the {@code private_info} pointer
 * @param user_data    the user-specified value that was passed when calling {@link CL10#clCreateContext} or {@link CL10#clCreateContextFromType}
 */
	public function invoke(errinfo:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64):Void;

}
