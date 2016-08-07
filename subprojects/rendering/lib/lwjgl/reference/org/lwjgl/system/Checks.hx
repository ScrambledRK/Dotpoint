package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.Checks")
@:final
/**
 * A class to check buffer boundaries in general. If there is insufficient space in the buffer when the call is made then a buffer overflow would otherwise
 * occur and cause unexpected behaviour, a crash, or worse, a security risk.
 *
 * <p>Internal class, don't use.</p>
 */
extern class Checks 
{
	static public function checkBufferGT(buf:org.lwjgl.PointerBuffer,size:Int):Void;
	@:overload(function (buf:java.nio.Buffer,size:Int):Void {})
	static public function checkArray(array:java.NativeArray<haxe.Int64>,size:Int):Void;
	@:overload(function (array:java.NativeArray<Dynamic>,size:Int):Void {})
/**
 * Checks if the specified function provider instance is {@code null}.
 *
 * @param functionProvider the functionality to check
 *
 * @return the function provider instance
 */
	static public function checkFunctionality<T>(functionProvider:T):T;
/**
 * Ensures that the specified function pointer is not-null (0L).
 *
 * @param pointer the pointer to check
 *
 * @throws IllegalStateException
 */
	static public function checkFunctionAddress(pointer:haxe.Int64):haxe.Int64;
/** Ensures that the specified ByteBuffer is null-terminated (last 8 bytes equal to 0).  */
	static public function checkNT8(buf:java.nio.ByteBuffer):java.nio.ByteBuffer;
/** Ensures that the specified FloatBuffer is null-terminated.  */
/** Ensures that the specified IntBuffer is null-terminated.  */
/** Ensures that the specified PointerBuffer is null-terminated.  */
	static public function checkNT(buf:org.lwjgl.PointerBuffer):org.lwjgl.PointerBuffer;
	@:overload(function (buf:java.nio.FloatBuffer):java.nio.FloatBuffer {})
	@:overload(function (buf:java.nio.IntBuffer):java.nio.IntBuffer {})
/**
 * Ensures that the specified pointer is not-null (0L).
 *
 * @param pointer the pointer to check
 *
 * @throws NullPointerException
 */
	static public function checkPointer(pointer:haxe.Int64):haxe.Int64;
/**
 * Checks if any of the specified functions pointers is {@code NULL}.
 *
 * @param functions the function pointers to check
 *
 * @return true if all function pointers are valid, false otherwise.
 */
	static public function checkFunctions(functions:java.NativeArray<haxe.Int64>):Bool;
/** Ensures that the specified ByteBuffer is null-terminated (last byte equal to 0).  */
	static public function checkNT1(buf:java.nio.ByteBuffer):java.nio.ByteBuffer;
	static public function checkNTArray(buf:java.nio.ByteBuffer,count:Int):Void;
/** Ensures that the specified ByteBuffer is null-terminated (last 4 bytes equal to 0).  */
	static public function checkNT4(buf:java.nio.ByteBuffer):java.nio.ByteBuffer;
/** Ensures that the specified ByteBuffer is null-terminated (last 2 bytes equal to 0).  */
	static public function checkNT2(buf:java.nio.ByteBuffer):java.nio.ByteBuffer;
/** @see #checkBuffer(java.nio.Buffer, int)  */
/**
 * Helper method to ensure a buffer has enough capacity.
 *
 * @param buf  the buffer to check
 * @param size the minimum buffer capacity
 *
 * @throws IllegalArgumentException
 */
/**
 * Helper method to ensure a Pointer buffer has enough capacity.
 *
 * @param buf  the buffer to check
 * @param size the minimum buffer capacity
 *
 * @throws IllegalArgumentException
 */
	static public function checkBuffer(buf:org.lwjgl.PointerBuffer,size:Int):Void;
	@:overload(function (buf:java.nio.Buffer,size:haxe.Int64):Void {})
	@:overload(function (buf:java.nio.Buffer,size:Int):Void {})

}
