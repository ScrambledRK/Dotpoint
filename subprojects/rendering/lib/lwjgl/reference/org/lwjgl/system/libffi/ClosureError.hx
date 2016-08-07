package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.ClosureError")
/**
 * This error will be thrown by native code, if a {@link Closure} instance that
 * has been previously garbage collected is accessed by a callback invocation.
 */
extern class ClosureError extends java.lang.Throwable.Error 
{
	public function new():Void;

}
