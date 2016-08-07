package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLNativeKernel")
/** Instances of this interface may be passed to the {@link CL10#clEnqueueNativeKernel} method.  */
extern class CLNativeKernel extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called by the OpenCL using CL10##clEnqueueNativeKernel().
 *
 * @param args a pointer to the arguments list
 */
	public function invoke(args:haxe.Int64):Void;

}
