package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.Kernel32")
@:final
/**
 * Optional functionality loaded dynamically from <strong>kernel32.dll</strong>.
 * 
 * <p>Features must be detected on a function-by-function basis. A function pointer will have a {@code NULL} (0L) value when the corresponding
 * function is not supported in the Windows version we're running.</p>
 */
extern class Kernel32 
{
/** Function address.  */
	public var SetThreadAffinityMaskAddress:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Sets a processor affinity mask for the specified thread.
 * 
 * <p>A thread affinity mask is a bit vector in which each bit represents a logical processor that a thread is allowed to run on. A thread affinity mask must
 * be a subset of the process affinity mask for the containing process of a thread. A thread can only run on the processors its process can run on.
 * Therefore, the thread affinity mask cannot specify a 1 bit for a processor when the process affinity mask specifies a 0 bit for that processor.</p>
 * 
 * <p>Setting an affinity mask for a process or thread can result in threads receiving less processor time, as the system is restricted from running the
 * threads on certain processors. In most cases, it is better to let the system select an available processor.</p>
 * 
 * <p>If the new thread affinity mask does not specify the processor that is currently running the thread, the thread is rescheduled on one of the allowable
 * processors.</p>
 *
 * @param thread             a handle to the thread whose affinity mask is to be set
 * @param threadAffinityMask the affinity mask for the thread
 * @param __functionAddress  the DLL function address
 */
	static public function SetThreadAffinityMask(thread:haxe.Int64,threadAffinityMask:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
/** JNI method for {@link #SetThreadAffinityMask}  */
	static public function nSetThreadAffinityMask(thread:haxe.Int64,threadAffinityMask:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;

}
