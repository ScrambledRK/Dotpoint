package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLDebugMessageAMDCallback")
/** Instances of this interface may be passed to the {@link AMDDebugOutput#glDebugMessageCallbackAMD} method.  */
extern class GLDebugMessageAMDCallback extends org.lwjgl.system.libffi.Closure_Void 
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
 * @param id        the message ID
 * @param category  the message category
 * @param severity  the message severity
 * @param length    the message length, excluding the null-terminator
 * @param message   a pointer to the message string representation
 * @param userParam the user-specified value that was passed when calling {@link AMDDebugOutput#glDebugMessageCallbackAMD}
 */
	public function invoke(id:Int,category:Int,severity:Int,length:Int,message:haxe.Int64,userParam:haxe.Int64):Void;

}
