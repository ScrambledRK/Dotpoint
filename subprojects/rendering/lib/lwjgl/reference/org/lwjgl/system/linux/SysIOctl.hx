package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.SysIOctl")
@:final
/** Native bindings to <sys/ioctl.h>.  */
extern class SysIOctl 
{
/** JNI method for {@link #ioctl}  */
	static public function nioctl(fd:Int,request:Int,arg:haxe.Int64):Int;
/**
 * Manipulates the underlying device parameters of special files.  In particular, many operating characteristics of character special files (e.g.,
 * terminals) may be controlled with {@code ioctl()} requests.
 *
 * @param fd      an open file descriptor
 * @param request a device-dependent request code
 * @param arg     
 */
	static public function ioctl(fd:Int,request:Int,arg:haxe.Int64):Int;

}
