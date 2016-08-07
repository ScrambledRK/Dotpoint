package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLProgramCallback")
/** Instances of this interface may be passed to the {@link CL10#clBuildProgram}, {@link CL12#clCompileProgram} and {@link CL12#clLinkProgram} methods.  */
extern class CLProgramCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the program is built, compiled or linked.
 *
 * @param program   the program that was built, compiled or linked
 * @param user_data the user-specified value that was passed when calling {@link CL10#clBuildProgram}, {@link CL12#clCompileProgram} or {@link CL12#clLinkProgram}
 */
	public function invoke(program:haxe.Int64,user_data:haxe.Int64):Void;

}
