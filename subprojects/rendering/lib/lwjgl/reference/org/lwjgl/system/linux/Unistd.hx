package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Unistd")
@:final
/** Native bindings to <unistd.h>.  */
extern class Unistd 
{
/** Alternative version of: {@link #read}  */
/**
 * Attempts to read up to {@code count} bytes from file descriptor {@code fd} into the buffer starting at {@code buf}.
 *
 * @param fd    the file descriptor to read
 * @param buf   the buffer
 * @param count the number of bytes to read
 */
	static public function read(fd:Int,buf:java.nio.ByteBuffer,count:haxe.Int64):haxe.Int64;
	@:overload(function (fd:Int,buf:java.nio.ByteBuffer):haxe.Int64 {})
/** JNI method for {@link #read}  */
	static public function nread(fd:Int,buf:haxe.Int64,count:haxe.Int64):haxe.Int64;
/**
 * Closes a file descriptor, so that it no longer refers to any file and may be reused.  Any record locks held on the file it was associated with, and
 * owned by the process, are removed (regardless of the file descriptor that was used to obtain the lock).
 *
 * @param fd the file descriptor to close
 */
	static public function close(fd:Int):Int;

}
