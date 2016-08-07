package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.DynamicLinkLoader")
@:final
/** Native bindings to <dlfcn.h>.  */
extern class DynamicLinkLoader 
{
/** The {@code mode} argument to {@link #dlopen} contains one of the following.  */
	inline static public var RTLD_LAZY:Int = 1;
/** The {@code mode} argument to {@link #dlopen} contains one of the following.  */
	inline static public var RTLD_NOW:Int = 2;
/** The {@code mode} argument to {@link #dlopen} contains one of the following.  */
	inline static public var RTLD_BINDING_MASK:Int = 3;
/** The {@code mode} argument to {@link #dlopen} contains one of the following.  */
	inline static public var RTLD_NOLOAD:Int = 4;
/** The {@code mode} argument to {@link #dlopen} contains one of the following.  */
	inline static public var RTLD_DEEPBIND:Int = 8;
/**
 * If the following bit is set in the {@code mode} argument to {@link #dlopen}, the symbols of the loaded object and its dependencies are made visible as
 * if the object were linked directly into the program.
 */
	inline static public var RTLD_GLOBAL:Int = 256;
/**
 * Unix98 demands the following flag which is the inverse to {@link #RTLD_GLOBAL}. The implementation does this by default and so we can define the value
 * to zero.
 */
	inline static public var RTLD_LOCAL:Int = 0;
/** Do not delete object when closed.  */
	inline static public var RTLD_NODELETE:Int = 4096;
/**
 * Decrements the reference count on the dynamic library handle handle. If the reference count drops to zero and no other loaded libraries use symbols in
 * it, then the dynamic library is unloaded.
 *
 * @param handle the dynamic library to close
 */
	static public function dlclose(handle:haxe.Int64):Int;
/** JNI method for {@link #dlerror}  */
	static public function ndlerror():haxe.Int64;
/** JNI method for {@link #dlclose}  */
	static public function ndlclose(handle:haxe.Int64):Int;
/** JNI method for {@link #dlopen}  */
	static public function ndlopen(filename:haxe.Int64,mode:Int):haxe.Int64;
/** CharSequence version of: {@link #dlopen}  */
/**
 * Loads the dynamic library file named by the null-terminated string {@code filename} and returns an opaque "handle" for the dynamic library. If
 * {@code filename} is {@code NULL}, then the returned handle is for the main program.
 *
 * @param filename the name of the dynamic library to open, or {@code NULL}
 * @param mode     a bitfield. One or more of:<br>{@link #RTLD_LAZY}, {@link #RTLD_NOW}, {@link #RTLD_BINDING_MASK}, {@link #RTLD_NOLOAD}, {@link #RTLD_DEEPBIND}, {@link #RTLD_GLOBAL}, {@link #RTLD_LOCAL}, {@link #RTLD_NODELETE}
 */
	static public function dlopen(filename:java.nio.ByteBuffer,mode:Int):haxe.Int64;
	@:overload(function (filename:java.lang.CharSequence,mode:Int):haxe.Int64 {})
/** JNI method for {@link #dlsym}  */
	static public function ndlsym(handle:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #dlsym}  */
/**
 * Takes a "handle" of a dynamic library returned by {@link #dlopen} and the null-terminated symbol name, returning the address where that symbol is loaded
 * into memory. If the symbol is not found, in the specified library or any of the libraries that were automatically loaded by {@link #dlopen} when that
 * library was loaded, {@code dlsym()} returns {@code NULL}.
 *
 * @param handle the dynamic library handle
 * @param name   the symbol name
 */
	static public function dlsym(handle:haxe.Int64,name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (handle:haxe.Int64,name:java.lang.CharSequence):haxe.Int64 {})
/**
 * Returns a human readable string describing the most recent error that occurred from {@link #dlopen}, {@link #dlsym} or {@link #dlclose} since
 * the last call to {@code dlerror()}. It returns {@code NULL} if no errors have occurred since initialization or since it was last called.
 */
	static public function dlerror():String;

}
