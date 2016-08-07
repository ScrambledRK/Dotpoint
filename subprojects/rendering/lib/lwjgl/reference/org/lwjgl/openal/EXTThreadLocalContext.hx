package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.EXTThreadLocalContext")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/EXT_thread_local_context.txt">EXT_thread_local_context</a> extension.
 * 
 * <p>This extension introduces the concept of a current thread-local context, with each thread able to have its own current context. The current context is
 * what the al- functions work on, effectively allowing multiple threads to independently drive separate OpenAL playback contexts.</p>
 */
extern class EXTThreadLocalContext 
{
/** Function address.  */
	public var SetThreadContext:haxe.Int64;
/** Function address.  */
	public var GetThreadContext:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProviderLocal,device:haxe.Int64):Void;
/** JNI method for {@link #alcGetThreadContext GetThreadContext}  */
	static public function nalcGetThreadContext(__functionAddress:haxe.Int64):haxe.Int64;
/** JNI method for {@link #alcSetThreadContext SetThreadContext}  */
	static public function nalcSetThreadContext(context:haxe.Int64,__functionAddress:haxe.Int64):Bool;
/** Retrieve a handle to the thread-specific context of the calling thread. This function will return {@code NULL} if no thread- specific context is set.  */
	static public function alcGetThreadContext():haxe.Int64;
/** Returns the {@link EXTThreadLocalContext} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.EXTThreadLocalContext;
/**
 * Makes a context current with respect to OpenAL operation on the current thread. The context parameter can be {@code NULL} or a valid context pointer. Using
 * {@code NULL} results in no thread-specific context being current in the calling thread, which is useful when shutting OpenAL down.
 *
 * @param context the context to make current
 */
	static public function alcSetThreadContext(context:haxe.Int64):Bool;

}
