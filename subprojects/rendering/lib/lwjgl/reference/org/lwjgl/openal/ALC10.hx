package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.ALC10")
@:final
/** Native bindings to ALC 1.0 functionality.  */
extern class ALC10 
{
/** General tokens.  */
	inline static public var ALC_INVALID:Int = -1;
/** General tokens.  */
	inline static public var ALC_FALSE:Int = 0;
/** General tokens.  */
	inline static public var ALC_TRUE:Int = 1;
/** Context creation attributes.  */
	inline static public var ALC_FREQUENCY:Int = 4103;
/** Context creation attributes.  */
	inline static public var ALC_REFRESH:Int = 4104;
/** Context creation attributes.  */
	inline static public var ALC_SYNC:Int = 4105;
/** Error conditions.  */
	inline static public var ALC_NO_ERROR:Int = 0;
/** Error conditions.  */
	inline static public var ALC_INVALID_DEVICE:Int = 40961;
/** Error conditions.  */
	inline static public var ALC_INVALID_CONTEXT:Int = 40962;
/** Error conditions.  */
	inline static public var ALC_INVALID_ENUM:Int = 40963;
/** Error conditions.  */
	inline static public var ALC_INVALID_VALUE:Int = 40964;
/** Error conditions.  */
	inline static public var ALC_OUT_OF_MEMORY:Int = 40965;
/** String queries.  */
	inline static public var ALC_DEFAULT_DEVICE_SPECIFIER:Int = 4100;
/** String queries.  */
	inline static public var ALC_DEVICE_SPECIFIER:Int = 4101;
/** String queries.  */
	inline static public var ALC_EXTENSIONS:Int = 4102;
/** Integer queries.  */
	inline static public var ALC_MAJOR_VERSION:Int = 4096;
/** Integer queries.  */
	inline static public var ALC_MINOR_VERSION:Int = 4097;
/** Integer queries.  */
	inline static public var ALC_ATTRIBUTES_SIZE:Int = 4098;
/** Integer queries.  */
	inline static public var ALC_ALL_ATTRIBUTES:Int = 4099;
/** Function address.  */
	public var OpenDevice:haxe.Int64;
/** Function address.  */
	public var CloseDevice:haxe.Int64;
/** Function address.  */
	public var CreateContext:haxe.Int64;
/** Function address.  */
	public var MakeContextCurrent:haxe.Int64;
/** Function address.  */
	public var ProcessContext:haxe.Int64;
/** Function address.  */
	public var SuspendContext:haxe.Int64;
/** Function address.  */
	public var DestroyContext:haxe.Int64;
/** Function address.  */
	public var GetCurrentContext:haxe.Int64;
/** Function address.  */
	public var GetContextsDevice:haxe.Int64;
/** Function address.  */
	public var IsExtensionPresent:haxe.Int64;
/** Function address.  */
	public var GetProcAddress:haxe.Int64;
/** Function address.  */
	public var GetEnumValue:haxe.Int64;
/** Function address.  */
	public var GetError:haxe.Int64;
/** Function address.  */
	public var GetString:haxe.Int64;
/** Function address.  */
	public var GetIntegerv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProviderLocal):Void;
/** JNI method for {@link #alcSuspendContext SuspendContext}  */
	static public function nalcSuspendContext(context:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * Creates an AL context.
 *
 * @param deviceHandle a valid device
 * @param attrList     null or a zero terminated list of integer pairs composed of valid ALC attribute tokens and requested values. One of:<br>{@link #ALC_FREQUENCY FREQUENCY}, {@link #ALC_REFRESH REFRESH}, {@link #ALC_SYNC SYNC}, {@link ALC11#ALC_MONO_SOURCES MONO_SOURCES}, {@link ALC11#ALC_STEREO_SOURCES STEREO_SOURCES}
 */
/** Alternative version of: {@link #alcCreateContext CreateContext}  */
	static public function alcCreateContext(deviceHandle:haxe.Int64,attrList:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (deviceHandle:haxe.Int64,attrList:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Destroys a context.
 * 
 * <p>The correct way to destroy a context is to first release it using alcMakeCurrent with a NULL context. Applications should not attempt to destroy a
 * current context – doing so will not work and will result in an ALC_INVALID_OPERATION error. All sources within a context will automatically be deleted
 * during context destruction.</p>
 *
 * @param context the context to destroy
 */
	static public function alcDestroyContext(context:haxe.Int64):Void;
/** JNI method for {@link #alcGetCurrentContext GetCurrentContext}  */
	static public function nalcGetCurrentContext(__functionAddress:haxe.Int64):haxe.Int64;
/** Unsafe version of {@link #alcOpenDevice OpenDevice}  */
/** JNI method for {@link #alcOpenDevice OpenDevice}  */
	static public function nalcOpenDevice(deviceSpecifier:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (deviceSpecifier:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #alcMakeContextCurrent MakeContextCurrent}  */
	static public function nalcMakeContextCurrent(context:haxe.Int64,__functionAddress:haxe.Int64):Bool;
/** CharSequence version of: {@link #alcGetEnumValue GetEnumValue}  */
/**
 * Returns extension enum values.
 * 
 * <p>Enumeration/token values are device independent, but tokens defined for extensions might not be present for a given device. Using a NULL handle is
 * legal, but only the tokens defined by the AL core are guaranteed. Availability of extension tokens depends on the ALC extension.</p>
 *
 * @param deviceHandle the device to query
 * @param enumName     the enum name
 */
	static public function alcGetEnumValue(deviceHandle:haxe.Int64,enumName:java.nio.ByteBuffer):Int;
	@:overload(function (deviceHandle:haxe.Int64,enumName:java.lang.CharSequence):Int {})
/** CharSequence version of: {@link #alcOpenDevice OpenDevice}  */
/**
 * Allows the application to connect to a device.
 * 
 * <p>If the function returns NULL, then no sound driver/device has been found. The argument is a null terminated string that requests a certain device or
 * device configuration. If NULL is specified, the implementation will provide an implementation specific default.</p>
 *
 * @param deviceSpecifier the requested device or device configuration
 */
	static public function alcOpenDevice(deviceSpecifier:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (deviceSpecifier:java.lang.CharSequence):haxe.Int64 {})
/**
 * Queries for, and obtains a handle to, the device of a given context.
 *
 * @param context the context to query
 */
	static public function alcGetContextsDevice(context:haxe.Int64):haxe.Int64;
/** JNI method for {@link #alcProcessContext ProcessContext}  */
	static public function nalcProcessContext(context:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * The current context is the only context accessible to state changes by AL commands (aside from state changes affecting shared objects). However,
 * multiple contexts can be processed at the same time. To indicate that a context should be processed (i.e. that internal execution state such as the
 * offset increments are to be performed), the application uses {@code alcProcessContext}.
 * 
 * <p>Repeated calls to alcProcessContext are legal, and do not affect a context that is already marked as processing. The default state of a context created
 * by alcCreateContext is that it is processing.</p>
 *
 * @param context the context to mark for processing
 */
	static public function alcProcessContext(context:haxe.Int64):Void;
/** JNI method for {@link #alcGetContextsDevice GetContextsDevice}  */
	static public function nalcGetContextsDevice(context:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
/** Queries for, and obtains a handle to, the current context for the application. If there is no current context, NULL is returned.  */
	static public function alcGetCurrentContext():haxe.Int64;
/** Unsafe version of {@link #alcCreateContext CreateContext}  */
/** JNI method for {@link #alcCreateContext CreateContext}  */
	static public function nalcCreateContext(deviceHandle:haxe.Int64,attrList:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (deviceHandle:haxe.Int64,attrList:haxe.Int64):haxe.Int64 {})
/** Single return value version of: {@link #alcGetIntegerv GetIntegerv}  */
	static public function alcGetInteger(deviceHandle:haxe.Int64,token:Int):Int;
/**
 * Queries ALC errors.
 * 
 * <p>ALC uses the same conventions and mechanisms as AL for error handling. In particular, ALC does not use conventions derived from X11 (GLX) or Windows
 * (WGL).</p>
 * 
 * <p>Error conditions are specific to the device, and (like AL) a call to alcGetError resets the error state.</p>
 *
 * @param deviceHandle the device to query
 */
	static public function alcGetError(deviceHandle:haxe.Int64):Int;
/**
 * Obtains string value(s) from ALC.
 * 
 * <p><b>LWJGL note</b>: Use {@link ALC#getStringList} for those tokens that return multiple values.</p>
 *
 * @param deviceHandle the device to query
 * @param token        the information to query. One of:<br>{@link #ALC_DEFAULT_DEVICE_SPECIFIER DEFAULT_DEVICE_SPECIFIER}, {@link #ALC_DEVICE_SPECIFIER DEVICE_SPECIFIER}, {@link #ALC_EXTENSIONS EXTENSIONS}, {@link ALC11#ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER CAPTURE_DEFAULT_DEVICE_SPECIFIER}, {@link ALC11#ALC_CAPTURE_DEVICE_SPECIFIER CAPTURE_DEVICE_SPECIFIER}
 */
	static public function alcGetString(deviceHandle:haxe.Int64,token:Int):String;
/** Unsafe version of {@link #alcGetString GetString}  */
/** JNI method for {@link #alcGetString GetString}  */
	static public function nalcGetString(deviceHandle:haxe.Int64,token:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (deviceHandle:haxe.Int64,token:Int):haxe.Int64 {})
/**
 * Makes a context current with respect to OpenAL operation.
 * 
 * <p>The context parameter can be NULL or a valid context pointer. Using NULL results in no context being current, which is useful when shutting OpenAL down.
 * The operation will apply to the device that the context was created for.</p>
 * 
 * <p>For each OS process (usually this means for each application), only one context can be current at any given time. All AL commands apply to the current
 * context. Commands that affect objects shared among contexts (e.g. buffers) have side effects on other contexts.</p>
 *
 * @param context the context to make current
 */
	static public function alcMakeContextCurrent(context:haxe.Int64):Bool;
/**
 * Allows the application to disconnect from a device.
 * 
 * <p>The return code will be ALC_TRUE or ALC_FALSE, indicating success or failure. Failure will occur if all the device's contexts and buffers have not been
 * destroyed. Once closed, the {@code deviceHandle} is invalid.</p>
 *
 * @param deviceHandle the device to close
 */
	static public function alcCloseDevice(deviceHandle:haxe.Int64):Bool;
/**
 * The application can suspend any context from processing (including the current one). To indicate that a context should be suspended from processing
 * (i.e. that internal execution state such as offset increments are not to be changed), the application uses {@code alcSuspendContext}.
 * 
 * <p>Repeated calls to alcSuspendContext are legal, and do not affect a context that is already marked as suspended.</p>
 *
 * @param context the context to mark as suspended
 */
	static public function alcSuspendContext(context:haxe.Int64):Void;
/** Unsafe version of {@link #alcIsExtensionPresent IsExtensionPresent}  */
/** JNI method for {@link #alcIsExtensionPresent IsExtensionPresent}  */
	static public function nalcIsExtensionPresent(deviceHandle:haxe.Int64,extName:haxe.Int64,__functionAddress:haxe.Int64):Bool;
	@:overload(function (deviceHandle:haxe.Int64,extName:haxe.Int64):Bool {})
/** JNI method for {@link #alcDestroyContext DestroyContext}  */
	static public function nalcDestroyContext(context:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #alcGetEnumValue GetEnumValue}  */
/** JNI method for {@link #alcGetEnumValue GetEnumValue}  */
	static public function nalcGetEnumValue(deviceHandle:haxe.Int64,enumName:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (deviceHandle:haxe.Int64,enumName:haxe.Int64):Int {})
/** Unsafe version of {@link #alcGetIntegerv GetIntegerv}  */
/** JNI method for {@link #alcGetIntegerv GetIntegerv}  */
	static public function nalcGetIntegerv(deviceHandle:haxe.Int64,token:Int,size:Int,dest:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (deviceHandle:haxe.Int64,token:Int,size:Int,dest:haxe.Int64):Void {})
/** JNI method for {@link #alcGetError GetError}  */
	static public function nalcGetError(deviceHandle:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** CharSequence version of: {@link #alcGetProcAddress GetProcAddress}  */
/**
 * Retrieves extension entry points.
 * 
 * <p>The application is expected to verify the applicability of an extension or core function entry point before requesting it by name, by use of
 * {@link #alcIsExtensionPresent IsExtensionPresent}.</p>
 * 
 * <p>Entry points can be device specific, but are not context specific. Using a NULL device handle does not guarantee that the entry point is returned, even
 * if available for one of the available devices.</p>
 *
 * @param deviceHandle the device to query
 * @param funcName     the function name
 */
	static public function alcGetProcAddress(deviceHandle:haxe.Int64,funcName:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (deviceHandle:haxe.Int64,funcName:java.lang.CharSequence):haxe.Int64 {})
/** Unsafe version of {@link #alcGetProcAddress GetProcAddress}  */
/** JNI method for {@link #alcGetProcAddress GetProcAddress}  */
	static public function nalcGetProcAddress(deviceHandle:haxe.Int64,funcName:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (deviceHandle:haxe.Int64,funcName:haxe.Int64):haxe.Int64 {})
/** Alternative version of: {@link #alcGetIntegerv GetIntegerv}  */
/**
 * Obtains integer value(s) from ALC.
 *
 * @param deviceHandle the device to query
 * @param token        the information to query. One of:<br>{@link #ALC_MAJOR_VERSION MAJOR_VERSION}, {@link #ALC_MINOR_VERSION MINOR_VERSION}, {@link #ALC_ATTRIBUTES_SIZE ATTRIBUTES_SIZE}, {@link #ALC_ALL_ATTRIBUTES ALL_ATTRIBUTES}, {@link ALC11#ALC_CAPTURE_SAMPLES CAPTURE_SAMPLES}
 * @param size         the size of the {@code dest} buffer
 * @param dest         the destination buffer
 */
	static public function alcGetIntegerv(deviceHandle:haxe.Int64,token:Int,size:Int,dest:java.nio.ByteBuffer):Void;
	@:overload(function (deviceHandle:haxe.Int64,token:Int,dest:java.nio.IntBuffer):Void {})
/** Returns the {@link ALC10} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.ALC10;
/** JNI method for {@link #alcCloseDevice CloseDevice}  */
	static public function nalcCloseDevice(deviceHandle:haxe.Int64,__functionAddress:haxe.Int64):Bool;
/** CharSequence version of: {@link #alcIsExtensionPresent IsExtensionPresent}  */
/**
 * Verifies that a given extension is available for the current context and the device it is associated with.
 * 
 * <p>Invalid and unsupported string tokens return ALC_FALSE. A NULL deviceHandle is acceptable. {@code extName} is not case sensitive – the implementation
 * will convert the name to all upper-case internally (and will express extension names in upper-case).</p>
 *
 * @param deviceHandle the device to query
 * @param extName      the extension name
 */
	static public function alcIsExtensionPresent(deviceHandle:haxe.Int64,extName:java.nio.ByteBuffer):Bool;
	@:overload(function (deviceHandle:haxe.Int64,extName:java.lang.CharSequence):Bool {})

}
