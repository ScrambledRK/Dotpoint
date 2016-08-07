package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBIEOFCallback")
/** Instances of this interface may be set to the {@code eof} field of the {@link STBIIOCallbacks} struct.  */
extern class STBIEOFCallback extends org.lwjgl.system.libffi.Closure_Int 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Int;
/**
 * The {@code stbi_io_callbacks.eof} callback.
 *
 * @param user a pointer to user data
 *
 * @return nonzero if we are at the end of file/data
 */
	public function invoke(user:haxe.Int64):Int;

}
