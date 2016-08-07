package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBISkipCallback")
/** Instances of this interface may be set to the {@code skip} field of the {@link STBIIOCallbacks} struct.  */
extern class STBISkipCallback extends org.lwjgl.system.libffi.Closure_Int 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Int;
/**
 * The {@code stbi_io_callbacks.skip} callback.
 *
 * @param user a pointer to user data
 * @param n    the number of bytes to skip if positive, or <em>unget</em> the last {@code -n} bytes if negative
 */
	public function invoke(user:haxe.Int64,n:Int):Int;

}
