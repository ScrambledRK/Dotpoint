package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.FunctionProviderLocal")
/** A platform/device/context specific provider of native function addresses.  */
extern interface FunctionProviderLocal
{
/**
 * Returns the function address of the specified function for the platform, device
 * or context specified by {@code handle}. If the function is not supported, 0L is
 * returned.
 *
 * @param handle       the handle to a platform/device/context
 * @param functionName the function name to query
 *
 * @return the function address or 0L if the function is not supported
 */
	public function getFunctionAddress(handle:haxe.Int64,functionName:java.lang.CharSequence):haxe.Int64;

}
