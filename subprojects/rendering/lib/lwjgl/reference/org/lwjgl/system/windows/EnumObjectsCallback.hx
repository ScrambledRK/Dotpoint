package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.EnumObjectsCallback")
/** Instances of this interface may be passed to the {@link WinGDI#EnumObjects} method.  */
extern class EnumObjectsCallback extends org.lwjgl.system.libffi.Closure_Int 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Int;
/**
 * Will be called for each available object.
 *
 * @param logObject a pointer to a {@link LOGPEN} or {@link LOGBRUSH} structure describing the attributes of the object
 * @param data      a pointer to the application-defined data passed by the {@link WinGDI#EnumObjects} function
 */
	public function invoke(logObject:haxe.Int64,data:haxe.Int64):Int;

}
