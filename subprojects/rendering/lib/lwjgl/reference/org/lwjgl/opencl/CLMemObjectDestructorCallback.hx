package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLMemObjectDestructorCallback")
/** Instances of this interface may be passed to the {@link CL11#clSetMemObjectDestructorCallback} method.  */
extern class CLMemObjectDestructorCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when a memory object is deleted.
 *
 * @param memobj    the memory object that was deleted
 * @param user_data the user-specified value that was passed when calling {@link CL11#clSetMemObjectDestructorCallback}
 */
	public function invoke(memobj:haxe.Int64,user_data:haxe.Int64):Void;

}
