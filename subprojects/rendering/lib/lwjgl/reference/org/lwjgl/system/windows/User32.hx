package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.User32")
@:final
/**
 * Optional functionality loaded dynamically from <strong>user32.dll</strong>.
 * 
 * <p>Features must be detected on a function-by-function basis. A function pointer will have a {@code NULL} (0L) value when the corresponding
 * function is not supported in the Windows version we're running.</p>
 */
extern class User32 
{
/** Function address.  */
	public var SetProcessDPIAwareAddress:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #SetProcessDPIAware}  */
	static public function nSetProcessDPIAware(__functionAddress:haxe.Int64):Int;
/**
 * Sets the current process as dots per inch (dpi) aware.
 *
 * @param __functionAddress the DLL function address
 */
	static public function SetProcessDPIAware(__functionAddress:haxe.Int64):Int;

}
