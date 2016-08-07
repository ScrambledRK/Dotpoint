package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLEventCallback")
/** Instances of this interface may be passed to the {@link CL11#clSetEventCallback} method.  */
extern class CLEventCallback extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when the execution status of the command associated with {@code event} changes to an execution status equal or past the status specified by
 * {@code command_exec_status}."
 *
 * @param event                     the event
 * @param event_command_exec_status represents the execution status of command for which this callback function is invoked. If the callback is called as the result of the command
 *                                  associated with event being abnormally terminated, an appropriate error code for the error that caused the termination will be passed to
 *                                  {@code event_command_exec_status} instead.
 * @param user_data                 the user-specified value that was passed when calling {@link CL11#clSetEventCallback}
 */
	public function invoke(event:haxe.Int64,event_command_exec_status:Int,user_data:haxe.Int64):Void;

}
