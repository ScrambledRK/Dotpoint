package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XErrorHandler")
/** Instances of this interface may be passed to the {@link Xlib#XSetErrorHandler} method.  */
extern class XErrorHandler extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called with an X error occurs.
 *
 * @param display     the connection to the X server
 * @param error_event the {@link XErrorEvent} structure describing the error
 */
	public function invoke(display:haxe.Int64,error_event:haxe.Int64):Void;

}
