package org.lwjgl.system.libffi;

import java.StdTypes;
@:native("org.lwjgl.system.libffi.ClosureRegistry")
/**
 */
extern interface ClosureRegistry
{
/**
 * Registers the specified {@link Closure} instance.
 *
 * @param closure the Closure instance to register
 */
	public function register(closure:org.lwjgl.system.libffi.Closure):Void;

}
