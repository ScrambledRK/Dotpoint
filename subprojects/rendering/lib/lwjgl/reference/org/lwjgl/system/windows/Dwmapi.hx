package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.Dwmapi")
@:final
/**
 * Optional functionality loaded dynamically from <strong>dwmapi.dll</strong>.
 * 
 * <p>Features must be detected on a function-by-function basis. A function pointer will have a {@code NULL} (0L) value when the corresponding
 * function is not supported in the Windows version we're running.</p>
 */
extern class Dwmapi 
{
/** Function address.  */
	public var DwmIsCompositionEnabledAddress:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Sets the current process as dots per inch (dpi) aware.
 *
 * @param enabled           a pointer to a value that, when this function returns successfully, receives {@code TRUE} if DWM composition is enabled; otherwise, {@code FALSE}.
 * @param __functionAddress the DLL function address
 */
/** Alternative version of: {@link #DwmIsCompositionEnabled}  */
	static public function DwmIsCompositionEnabled(enabled:java.nio.IntBuffer,__functionAddress:haxe.Int64):Int;
	@:overload(function (enabled:java.nio.ByteBuffer,__functionAddress:haxe.Int64):Int {})
/** JNI method for {@link #DwmIsCompositionEnabled}  */
	static public function nDwmIsCompositionEnabled(enabled:haxe.Int64,__functionAddress:haxe.Int64):Int;

}
