package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.Closure")
/**
 * This class makes it possible to dynamically create, at runtime, native functions that call into Java code. Pointers to such functions can then be passed to
 * native APIs as callbacks.
 * <p/>
 * Closures must be referenced strongly in user code, else a {@link ClosureError} will be thrown on the next native callback invocation. Closures also use
 * native resources, while will result in memory leaks if not released after a Closure is no longer required.
 */
extern class Closure extends org.lwjgl.system.Retainable_Default implements org.lwjgl.Pointer
{
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_VOID:haxe.Int64;
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_BYTE:haxe.Int64;
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_SHORT:haxe.Int64;
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_INT:haxe.Int64;
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_LONG:haxe.Int64;
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_FLOAT:haxe.Int64;
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_DOUBLE:haxe.Int64;
/** Native callback function pointer.  */
	static private var NATIVE_CALLBACK_PTR:haxe.Int64;
/** The default calling convention.  */
	static private var CALL_CONVENTION_DEFAULT:Int;
/** The system calling convention. This may differ from the default on certain OS/arch combinations.  */
	static private var CALL_CONVENTION_SYSTEM:Int;
/**
 * If the specified function pointer is not null, releases the Clojure associated with it.
 *
 * @param functionPointer the function pointer
 */
	static public function release(functionPointer:haxe.Int64):Void;
/**
 * Returns true if this Closure has been destroyed.
 *
 * @return the if the Closure is destroyed
 */
	public function isDestroyed():Bool;
	override private function destroy():Void;
/**
 * Converts the specified executable address to the Closure instance associated with it.</p>
 *
 * @param functionPointer the function pointer
 * @param <T>             the Closure instance type
 *
 * @return the Closure instance, or null if the function pointer is null
 */
	static public function create<T>(functionPointer:haxe.Int64):T;
	public function getPointer():haxe.Int64;

}
