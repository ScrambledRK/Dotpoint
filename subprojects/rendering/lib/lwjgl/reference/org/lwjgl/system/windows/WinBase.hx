package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WinBase")
@:final
/** Native bindings to WinBase.h.  */
extern class WinBase 
{
/** BOOL return values.  */
	inline static public var FALSE:Int = 0;
/** BOOL return values.  */
	inline static public var TRUE:Int = 1;
/** Global Memory flags.  */
	inline static public var GMEM_FIXED:Int = 0;
/** Global Memory flags.  */
	inline static public var GMEM_MOVEABLE:Int = 2;
/** Global Memory flags.  */
	inline static public var GMEM_NOCOMPACT:Int = 16;
/** Global Memory flags.  */
	inline static public var GMEM_NODISCARD:Int = 32;
/** Global Memory flags.  */
	inline static public var GMEM_ZEROINIT:Int = 64;
/** Global Memory flags.  */
	inline static public var GMEM_MODIFY:Int = 128;
/** Global Memory flags.  */
	inline static public var GMEM_DISCARDABLE:Int = 256;
/** Global Memory flags.  */
	inline static public var GMEM_NOT_BANKED:Int = 4096;
/** Global Memory flags.  */
	inline static public var GMEM_SHARE:Int = 8192;
/** Global Memory flags.  */
	inline static public var GMEM_DDESHARE:Int = 8192;
/** Global Memory flags.  */
	inline static public var GMEM_NOTIFY:Int = 16384;
/** Global Memory flags.  */
	inline static public var GMEM_LOWER:Int = 4096;
/** Global Memory flags.  */
	inline static public var GMEM_VALID_FLAGS:Int = 32626;
/** Global Memory flags.  */
	inline static public var GMEM_INVALID_HANDLE:Int = 32768;
/** Global Memory flags.  */
	inline static public var GHND:Int = 66;
/** Global Memory flags.  */
	inline static public var GPTR:Int = 64;
/** JNI method for {@link #GetProcAddress}  */
	static public function nGetProcAddress(handle:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #QueryPerformanceCounter}  */
	static public function nQueryPerformanceCounter(frequency:haxe.Int64):Int;
/** JNI method for {@link #GlobalUnlock}  */
	static public function nGlobalUnlock(hMem:haxe.Int64):Int;
/**
 * Allocates the specified number of bytes from the heap.
 *
 * @param flags the memory allocation attributes. If zero is specified, the default is {@link #GMEM_FIXED}. One of:<br>{@link #GMEM_FIXED}, {@link #GMEM_MOVEABLE}, {@link #GMEM_NOCOMPACT}, {@link #GMEM_NODISCARD}, {@link #GMEM_ZEROINIT}, {@link #GMEM_MODIFY}, {@link #GMEM_DISCARDABLE}, {@link #GMEM_NOT_BANKED}, {@link #GMEM_SHARE}, {@link #GMEM_DDESHARE}, {@link #GMEM_NOTIFY}, {@link #GMEM_LOWER}, {@link #GMEM_VALID_FLAGS}, {@link #GMEM_INVALID_HANDLE}, {@link #GHND}, {@link #GPTR}
 * @param bytes the number of bytes to allocate. If this parameter is zero and the {@code flags} parameter specifies {@link #GMEM_MOVEABLE}, the function returns a
 *              handle to a memory object that is marked as discarded.
 */
	static public function GlobalAlloc(flags:Int,bytes:haxe.Int64):haxe.Int64;
/** JNI method for {@link #FreeLibrary}  */
	static public function nFreeLibrary(handle:haxe.Int64):Int;
/**
 * Retrieves the current value of the high-resolution performance counter.
 * 
 * <p>On a multiprocessor computer, it should not matter which processor is called. However, you can get different results on different processors due to bugs
 * in the basic input/output system (BIOS) or the hardware abstraction layer (HAL). To specify processor affinity for a thread, use the
 * {@link Kernel32#SetThreadAffinityMask} function.</p>
 *
 * @param frequency a pointer to a variable that receives the current performance-counter value, in counts.
 */
	static public function QueryPerformanceCounter(frequency:java.nio.ByteBuffer):Int;
/**
 * Decrements the lock count associated with a memory object that was allocated with {@link #GMEM_MOVEABLE}. This function has no effect on memory objects
 * allocated with {@link #GMEM_FIXED}.
 *
 * @param hMem a handle to the global memory object
 */
	static public function GlobalUnlock(hMem:haxe.Int64):Int;
/** JNI method for {@link #GetModuleHandle}  */
	static public function nGetModuleHandle(moduleName:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #GetModuleHandle}  */
/**
 * Retrieves a module handle for the specified module. The module must have been loaded by the calling process.
 *
 * @param moduleName the name of the loaded module (either a .dll or .exe file). If the file name extension is omitted, the default library extension .dll is appended.
 *                   The file name string can include a trailing point character (.) to indicate that the module name has no extension. The string does not have to
 *                   specify a path. When specifying a path, be sure to use backslashes (\), not forward slashes (/). The name is compared (case independently) to the
 *                   names of modules currently mapped into the address space of the calling process.
 *                   
 *                   <p>If this parameter is {@code NULL}, {@code GetModuleHandle} returns a handle to the file used to create the calling process (.exe file).</p>
 */
	static public function GetModuleHandle(moduleName:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (moduleName:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #QueryPerformanceFrequency}  */
	static public function nQueryPerformanceFrequency(frequency:haxe.Int64):Int;
/**
 * Locks a global memory object and returns a pointer to the first byte of the object's memory block.
 *
 * @param hMem a handle to the global memory object
 */
	static public function GlobalLock(hMem:haxe.Int64):haxe.Int64;
/** JNI method for {@link #LoadLibrary}  */
	static public function nLoadLibrary(name:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #LoadLibrary}  */
/**
 * Loads the specified module into the address space of the calling process. The specified module may cause other modules to be loaded.
 *
 * @param name the name of the module. This can be either a library module (a .dll file) or an executable module (an .exe file). The name specified is the file
 *             name of the module and is not related to the name stored in the library module itself, as specified by the LIBRARY keyword in the module-definition
 *             (.def) file.
 *             
 *             <p>If the string specifies a full path, the function searches only that path for the module.</p>
 *             
 *             <p>If the string specifies a relative path or a module name without a path, the function uses a standard search strategy to find the module.</p>
 *             
 *             <p>If the function cannot find the module, the function fails. When specifying a path, be sure to use backslashes (\), not forward slashes (/).</p>
 *             
 *             <p>If the string specifies a module name without a path and the file name extension is omitted, the function appends the default library extension .dll
 *             to the module name. To prevent the function from appending.dll to the module name, include a trailing point character (.) in the module name string.</p>
 */
	static public function LoadLibrary(name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (name:java.lang.CharSequence):haxe.Int64 {})
/**
 * Frees the specified global memory object and invalidates its handle.
 *
 * @param hMem a handle to the global memory object.
 *
 * @return {@code NULL} if the function succeeds. If the function fails, the return value is equal to a handle to the global memory object.
 */
	static public function GlobalFree(hMem:haxe.Int64):haxe.Int64;
/**
 * Retrieves the calling thread's last-error code value. The last-error code is maintained on a per-thread basis. Multiple threads do not overwrite each
 * other's last-error code.
 */
	static public function GetLastError():Int;
/** CharSequence version of: {@link #GetProcAddress}  */
/**
 * Retrieves the address of an exported function or variable from the specified dynamic-link library (DLL).
 *
 * @param handle a handle to the DLL module that contains the function or variable
 * @param name   the function or variable name, or the function's ordinal value. If this parameter is an ordinal value, it must be in the low-order word; the
 *               high-order word must be zero.
 */
	static public function GetProcAddress(handle:haxe.Int64,name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (handle:haxe.Int64,name:java.lang.CharSequence):haxe.Int64 {})
/**
 * Frees the loaded dynamic-link library (DLL) module and, if necessary, decrements its reference count. When the reference count reaches zero, the module
 * is unloaded from the address space of the calling process and the handle is no longer valid.
 *
 * @param handle a handle to the loaded library module
 */
	static public function FreeLibrary(handle:haxe.Int64):Int;
/**
 * Retrieves the frequency of the high-resolution performance counter, if one exists. The frequency cannot change while the system is running.
 *
 * @param frequency a pointer to a variable that receives the current performance-counter frequency, in counts per second. If the installed hardware does not support a
 *                  high-resolution performance counter, this parameter can be zero.
 */
	static public function QueryPerformanceFrequency(frequency:java.nio.ByteBuffer):Int;
/** JNI method for {@link #GlobalFree}  */
	static public function nGlobalFree(hMem:haxe.Int64):haxe.Int64;
/** JNI method for {@link #GlobalLock}  */
	static public function nGlobalLock(hMem:haxe.Int64):haxe.Int64;

}
