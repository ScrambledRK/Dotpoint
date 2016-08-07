package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.APPLEContextLoggingFunctions")
@:final
/**
 * Native bindings to the <strong>APPLE_ContextLoggingFunctions</strong> extension.
 * 
 * <p>Provides convenience functions that are intended to be used as the {@code pfn_notify} parameter to {@link CL10#clCreateContext CreateContext}.</p>
 * 
 * <p>Note that if you pass {@code NULL} to the {@link CL10#clCreateContext CreateContext} {@code pfn_notify} parameter, you can also use these by setting the {@code CL_LOG_ERRORS}
 * environment variable to one of stdout, stderr, or console. Pass your own do-nothing context logging function to disable the {@code CL_LOG_ERRORS}
 * override.</p>
 */
extern class APPLEContextLoggingFunctions 
{
/** Function address.  */
	public var LogMessagesToSystemLogAPPLE:haxe.Int64;
/** Function address.  */
	public var LogMessagesToStdoutAPPLE:haxe.Int64;
/** Function address.  */
	public var LogMessagesToStderrAPPLE:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #clLogMessagesToSystemLogAPPLE LogMessagesToSystemLogAPPLE}  */
/** JNI method for {@link #clLogMessagesToSystemLogAPPLE LogMessagesToSystemLogAPPLE}  */
	static public function nclLogMessagesToSystemLogAPPLE(errstr:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (errstr:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64):Void {})
/** Unsafe version of {@link #clLogMessagesToStdoutAPPLE LogMessagesToStdoutAPPLE}  */
/** JNI method for {@link #clLogMessagesToStdoutAPPLE LogMessagesToStdoutAPPLE}  */
	static public function nclLogMessagesToStdoutAPPLE(errstr:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (errstr:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64):Void {})
/** Unsafe version of {@link #clLogMessagesToStderrAPPLE LogMessagesToStderrAPPLE}  */
/** JNI method for {@link #clLogMessagesToStderrAPPLE LogMessagesToStderrAPPLE}  */
	static public function nclLogMessagesToStderrAPPLE(errstr:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (errstr:haxe.Int64,private_info:haxe.Int64,cb:haxe.Int64,user_data:haxe.Int64):Void {})
/**
 * Forwards on all log messages to the standard output stream.
 *
 * @param errstr       
 * @param private_info 
 * @param cb           
 * @param user_data    
 */
	static public function clLogMessagesToStdoutAPPLE(errstr:java.nio.ByteBuffer,private_info:java.nio.ByteBuffer,cb:haxe.Int64,user_data:java.nio.ByteBuffer):Void;
/** Returns the {@link APPLEContextLoggingFunctions} instance for the currently loaded ICD.  */
	static public function getInstance():org.lwjgl.opencl.APPLEContextLoggingFunctions;
/**
 * Forwards on all log messages to the standard error stream.
 *
 * @param errstr       
 * @param private_info 
 * @param cb           
 * @param user_data    
 */
	static public function clLogMessagesToStderrAPPLE(errstr:java.nio.ByteBuffer,private_info:java.nio.ByteBuffer,cb:haxe.Int64,user_data:java.nio.ByteBuffer):Void;
/**
 * Forwards on all log messages to the Apple System Logger.
 *
 * @param errstr       
 * @param private_info 
 * @param cb           
 * @param user_data    
 */
	static public function clLogMessagesToSystemLogAPPLE(errstr:java.nio.ByteBuffer,private_info:java.nio.ByteBuffer,cb:haxe.Int64,user_data:java.nio.ByteBuffer):Void;

}
