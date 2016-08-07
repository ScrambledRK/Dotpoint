package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.FunctionProvider")
/** A provider of native function addresses.  */
extern interface FunctionProvider
{
/**
 * Returns the function address of the specified function. If the function
 * is not supported by the platform or context, 0L is returned.
 *
 * @param functionName the function name to query
 *
 * @return the function address or 0L if the function is not supported
 */
	public function getFunctionAddress(functionName:java.lang.CharSequence):haxe.Int64;

}
