package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.EnumerationMutationHandler")
/** A mutation handler.  */
extern class EnumerationMutationHandler extends org.lwjgl.system.libffi.Closure_Void 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):Void;
/**
 * Will be called when an object is mutated during a foreach iteration.
 *
 * @param id the object that was mutated
 */
	public function invoke(id:haxe.Int64):Void;

}
