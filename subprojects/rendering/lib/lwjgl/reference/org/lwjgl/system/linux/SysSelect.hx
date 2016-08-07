package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.SysSelect")
@:final
/** Native bindings to <sys/select.h>.  */
extern class SysSelect 
{
/**
 * Allows a program to monitor multiple file descriptors, waiting until one or more of the file descriptors become "ready" for some class of I/O operation
 * (e.g., input possible). A file descriptor is considered ready if it is possible to perform the corresponding I/O operation (e.g., read(2)) without
 * blocking.
 *
 * @param nfds      the highest-numbered file descriptor in any of the three sets, plus 1
 * @param readfds   the set of file descriptors to watch for reads
 * @param writefds  the set of file descriptors to watch for writes
 * @param exceptfds the set of file descriptors to watch for exceptions
 * @param timeout   an upper bound on the amount of time elapsed before {@code select()} returns. If both fields of the {@link timeval} structure are zero, then
 *                  {@code select()} returns immediately. (This is useful for polling.) If {@code timeout} is {@code NULL} (no timeout), {@code select()} can block
 *                  indefinitely.
 */
	static public function select(nfds:Int,readfds:haxe.Int64,writefds:haxe.Int64,exceptfds:haxe.Int64,timeout:java.nio.ByteBuffer):Int;
/** JNI method for {@link #FD_SET}  */
	static public function nFD_SET(fd:Int,set:haxe.Int64):Void;
/**
 * Removes a file descriptor from the set.
 *
 * @param fd  the file descriptor to remove
 * @param set the file descriptor set from which to remvoe
 */
	static public function FD_CLR(fd:Int,set:haxe.Int64):Void;
/**
 * Tests to see if a file descriptor is part of the set.
 *
 * @param fd  the file descriptor to test
 * @param set the file descriptor set to test
 */
	static public function FD_ISSET(fd:Int,set:haxe.Int64):Int;
/** JNI method for {@link #select}  */
	static public function nselect(nfds:Int,readfds:haxe.Int64,writefds:haxe.Int64,exceptfds:haxe.Int64,timeout:haxe.Int64):Int;
/** JNI method for {@link #FD_ZERO}  */
	static public function nFD_ZERO(set:haxe.Int64):Void;
/**
 * Clears a file descriptor set.
 *
 * @param set the file descriptor set to clear
 */
	static public function FD_ZERO(set:haxe.Int64):Void;
/** JNI method for {@link #FD_ISSET}  */
	static public function nFD_ISSET(fd:Int,set:haxe.Int64):Int;
/**
 * Adds a file descriptor to the set.
 *
 * @param fd  the file descriptor to add
 * @param set the file descriptor set to which to add
 */
	static public function FD_SET(fd:Int,set:haxe.Int64):Void;
/** JNI method for {@link #FD_CLR}  */
	static public function nFD_CLR(fd:Int,set:haxe.Int64):Void;

}
