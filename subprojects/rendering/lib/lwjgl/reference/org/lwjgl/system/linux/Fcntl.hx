package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Fcntl")
@:final
/** Native bindings to <fcntl.h>.  */
extern class Fcntl 
{
/** {@link #open} flags.  */
	inline static public var O_ACCMODE:Int = 3;
/** {@link #open} flags.  */
	inline static public var O_RDONLY:Int = 0;
/** {@link #open} flags.  */
	inline static public var O_WRONLY:Int = 1;
/** {@link #open} flags.  */
	inline static public var O_RDWR:Int = 2;
/** {@link #open} flags.  */
	inline static public var O_CREAT:Int = 256;
/** {@link #open} flags.  */
	inline static public var O_EXCL:Int = 512;
/** {@link #open} flags.  */
	inline static public var O_NOCTTY:Int = 1024;
/** {@link #open} flags.  */
	inline static public var O_TRUNC:Int = 4096;
/** {@link #open} flags.  */
	inline static public var O_APPEND:Int = 8192;
/** {@link #open} flags.  */
	inline static public var O_NONBLOCK:Int = 16384;
/** {@link #open} flags.  */
	inline static public var O_DSYNC:Int = 65536;
/** {@link #open} flags.  */
	inline static public var FASYNC:Int = 131072;
/** {@link #open} flags.  */
	inline static public var O_DIRECT:Int = 262144;
/** {@link #open} flags.  */
	inline static public var O_LARGEFILE:Int = 1048576;
/** {@link #open} flags.  */
	inline static public var O_DIRECTORY:Int = 2097152;
/** {@link #open} flags.  */
	inline static public var O_NOFOLLOW:Int = 4194304;
/** {@link #open} flags.  */
	inline static public var O_NOATIME:Int = 16777216;
/** {@link #open} flags.  */
	inline static public var O_CLOEXEC:Int = 33554432;
/** JNI method for {@link #open}  */
	static public function nopen(pathname:haxe.Int64,flags:Int):Int;
/** CharSequence version of: {@link #open}  */
/**
 * Given a pathname for a file, {@code open()} returns a file descriptor, a small, nonnegative integer for use in subsequent system calls. The file
 * descriptor returned by a successful call will be the lowest-numbered file descriptor not currently open for the process.
 *
 * @param pathname the file path
 * @param flags    the flags bitfield
 */
	static public function open(pathname:java.nio.ByteBuffer,flags:Int):Int;
	@:overload(function (pathname:java.lang.CharSequence,flags:Int):Int {})

}
