package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.LWJGLUtil")
@:final
/** Internal library methods  */
extern class LWJGLUtil 
{
/** LWJGL Logo - 16 by 16 pixels  */
	static public var LWJGLIcon16x16:java.nio.ByteBuffer;
/** LWJGL Logo - 32 by 32 pixels  */
	static public var LWJGLIcon32x32:java.nio.ByteBuffer;
/**
 * Checks flag. When enabled, LWJGL will perform basic checks during its operation, mainly to avoid crashes in native code. Examples
 * of such checks are: context-specific function address validation, buffer capacity checks, null-termination checks, etc.
 * These checks are generally low-overhead and should not have a measurable effect on performance, so its recommended to have them
 * enabled both during development and in production releases.
 * <p/>
 * If maximum performance is required, they can be disabled by setting the system property {@code org.lwjgl.util.NoChecks} to true.
 */
	static public var CHECKS:Bool;
/**
 * Debug flag. When enabled, LWJGL will perform additional checks during its operation. These checks are less trivial than the ones
 * enabled with {@link #CHECKS} and will have a noticeable effect on performance, so they are disabled by default. Examples of such
 * checks are: a GetError call after SwapBuffers, buffer object binding state check (GL), buffer capacity checks for texture images (GL & CL), etc.
 * LWJGL will also print additional information in stdout, mainly during start-up.
 * <p/>
 * Can be enabled by setting the system property {@code org.lwjgl.util.Debug} to true.
 *
 * @see org.lwjgl.opencl.OpenCLException
 * @see org.lwjgl.opengl.OpenGLException
 */
	static public var DEBUG:Bool;
/**
 * @return current platform name
 *
 * @see Platform
 */
	static public function getPlatformName():String;
	static public function getOptionalClass(className:String):java.lang.Class<Dynamic>;
/**
 * Loads a native library using OS-specific APIs (e.g. {@link org.lwjgl.system.windows.WinBase#LoadLibrary LoadLibrary} or
 * {@link org.lwjgl.system.linux.DynamicLinkLoader#dlopen dlopen}).
 *
 * @param name the library name, without an OS specific prefix or file extension (e.g. GL, not libGL.so)
 *
 * @return the native library
 *
 * @throws UnsatisfiedLinkError if the library could not be loaded
 */
	static public function loadLibraryNative(name:String):org.lwjgl.system.DynamicLinkLibrary;
/**
 * Prints the specified message to System.err if DEBUG is true.
 *
 * @param msg Message to print
 */
	static public function log(msg:java.lang.CharSequence):Void;
/**
 * Returns a map of public static final integer fields in the specified classes, to their String representations.
 * An optional filter can be specified to only include specific fields. The target map may be null, in which
 * case a new map is allocated and returned.
 * <p/>
 * This method is useful when debugging to quickly identify values returned from the AL/GL/CL APIs.
 *
 * @param filter       the filter to use (optional)
 * @param target       the target map (optional)
 * @param tokenClasses the classes to get tokens from
 *
 * @return the token map
 */
/**
 * Returns a map of public static final integer fields in the specified classes, to their String representations.
 * An optional filter can be specified to only include specific fields. The target map may be null, in which
 * case a new map is allocated and returned.
 * <p/>
 * This method is useful when debugging to quickly identify values returned from the AL/GL/CL APIs.
 *
 * @param filter       the filter to use (optional)
 * @param target       the target map (optional)
 * @param tokenClasses an array of classes to get tokens from
 *
 * @return the token map
 */
	static public function getClassTokens(filter:org.lwjgl.LWJGLUtil_TokenFilter,target:java.util.Map<java.lang.Integer,String>,tokenClasses:java.NativeArray<java.lang.Class<Dynamic>>):java.util.Map<java.lang.Integer,String>;
	@:overload(function (filter:org.lwjgl.LWJGLUtil_TokenFilter,target:java.util.Map<java.lang.Integer,String>,tokenClasses:java.lang.Iterable<java.lang.Class<Dynamic>>):java.util.Map<java.lang.Integer,String> {})
/** Ensures that the LWJGL native library has been loaded.  */
	static public function initialize():Void;
/**
 * Loads a native library using {@link System}.
 *
 * <p>If {@code name} is an absolute path or {@code org.lwjgl.librarypath} is set, {@link System#load} will be used. Otherwise, {@link System#loadLibrary}
 * will be used.</p>
 *
 * @param name the library name. If not an absolute path, it must be the plain library name, without an OS specific prefix or file extension (e.g. GL, not
 *             libGL.so)
 *
 * @throws UnsatisfiedLinkError if the library could not be loaded
 */
	static public function loadLibrarySystem(name:String):Void;
/**
 * @return the current platform type
 *
 * @see Platform
 */
	static public function getPlatform():org.lwjgl.LWJGLUtil_Platform;

}
