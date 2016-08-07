package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLDebugMessageCallback")
/** Instances of this interface may be passed to the {@link GL43#glDebugMessageCallback} and {@link KHRDebug#glDebugMessageCallback} methods.  */
extern class GLDebugMessageCallback extends org.lwjgl.system.libffi.Closure_Void 
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
 * @param source    the message source
 * @param type      the message type
 * @param id        the message ID
 * @param severity  the message severity
 * @param length    the message length, excluding the null-terminator
 * @param message   a pointer to the message string representation
 * @param userParam the user-specified value that was passed when calling {@link GL43#glDebugMessageCallback} or {@link KHRDebug#glDebugMessageCallback}
 */
	public function invoke(source:Int,type:Int,id:Int,severity:Int,length:Int,message:haxe.Int64,userParam:haxe.Int64):Void;

}
