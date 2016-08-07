package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBIReadCallback")
/** Instances of this interface may be set to the {@code read} field of the {@link STBIIOCallbacks} struct.  */
extern class STBIReadCallback extends org.lwjgl.system.libffi.Closure_Int 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Int;
/**
 * The {@code stbi_io_callbacks.read} callback.
 *
 * @param user a pointer to user data
 * @param data the data buffer to fill
 * @param size the number of bytes to read
 *
 * @return the number of bytes actually read
 */
	public function invoke(user:haxe.Int64,data:haxe.Int64,size:Int):Int;

}
