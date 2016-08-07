package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.ALC11")
@:final
/** Native bindings to ALC 1.1 functionality.  */
extern class ALC11 
{
/** Context creation attributes.  */
	inline static public var ALC_MONO_SOURCES:Int = 4112;
/** Context creation attributes.  */
	inline static public var ALC_STEREO_SOURCES:Int = 4113;
/** String queries.  */
	inline static public var ALC_DEFAULT_ALL_DEVICES_SPECIFIER:Int = 4114;
/** String queries.  */
	inline static public var ALC_ALL_DEVICES_SPECIFIER:Int = 4115;
/** String queries.  */
	inline static public var ALC_CAPTURE_DEVICE_SPECIFIER:Int = 784;
/** String queries.  */
	inline static public var ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER:Int = 785;
/** Integer queries.  */
	inline static public var ALC_CAPTURE_SAMPLES:Int = 786;
/** Function address.  */
	public var CaptureOpenDevice:haxe.Int64;
/** Function address.  */
	public var CaptureCloseDevice:haxe.Int64;
/** Function address.  */
	public var CaptureStart:haxe.Int64;
/** Function address.  */
	public var CaptureStop:haxe.Int64;
/** Function address.  */
	public var CaptureSamples:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProviderLocal):Void;
/** CharSequence version of: {@link #alcCaptureOpenDevice CaptureOpenDevice}  */
/**
 * Allows the application to connect to a capture device.
 * 
 * <p>The {@code deviceName} argument is a null terminated string that requests a certain device or device configuration. If NULL is specified, the implementation
 * will provide an implementation specific default.</p>
 *
 * @param devicename the device or device configuration
 * @param frequency  the audio frequency
 * @param format     the audio format
 * @param buffersize the number of sample frame to buffer in the AL
 */
	static public function alcCaptureOpenDevice(devicename:java.nio.ByteBuffer,frequency:Int,format:Int,buffersize:Int):haxe.Int64;
	@:overload(function (devicename:java.lang.CharSequence,frequency:Int,format:Int,buffersize:Int):haxe.Int64 {})
/**
 * Halts audio capturing without closing the capture device.
 * 
 * <p>The implementation is encouraged to optimize for this case. The amount of audio samples available after restarting a stopped capture device is reset to
 * zero. The application does not need to stop the capture device to read from it.</p>
 *
 * @param device the capture device
 */
	static public function alcCaptureStop(device:haxe.Int64):Void;
/**
 * Allows the application to disconnect from a capture device.
 *
 * @param device the capture device to close
 */
	static public function alcCaptureCloseDevice(device:haxe.Int64):Bool;
/** JNI method for {@link #alcCaptureStop CaptureStop}  */
	static public function nalcCaptureStop(device:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #alcCaptureSamples CaptureSamples}  */
/** JNI method for {@link #alcCaptureSamples CaptureSamples}  */
	static public function nalcCaptureSamples(device:haxe.Int64,buffer:haxe.Int64,samples:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (device:haxe.Int64,buffer:haxe.Int64,samples:Int):Void {})
/** Alternative version of: {@link #alcCaptureSamples CaptureSamples}  */
/**
 * Obtains captured audio samples from the AL.
 * 
 * <p>The implementation may defer conversion and resampling until this point. Requesting more sample frames than are currently available is an error.</p>
 *
 * @param device  the capture device
 * @param buffer  the buffer that will receive the samples
 * @param samples the buffer size
 */
	static public function alcCaptureSamples(device:haxe.Int64,buffer:java.nio.ByteBuffer,samples:Int):Void;
	@:overload(function (device:haxe.Int64,buffer:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alcCaptureOpenDevice CaptureOpenDevice}  */
/** JNI method for {@link #alcCaptureOpenDevice CaptureOpenDevice}  */
	static public function nalcCaptureOpenDevice(devicename:haxe.Int64,frequency:Int,format:Int,buffersize:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (devicename:haxe.Int64,frequency:Int,format:Int,buffersize:Int):haxe.Int64 {})
/** Returns the {@link ALC11} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.ALC11;
/** JNI method for {@link #alcCaptureCloseDevice CaptureCloseDevice}  */
	static public function nalcCaptureCloseDevice(device:haxe.Int64,__functionAddress:haxe.Int64):Bool;
/** JNI method for {@link #alcCaptureStart CaptureStart}  */
	static public function nalcCaptureStart(device:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * Starts recording audio on the specific capture device.
 * 
 * <p>Once started, the device will record audio to an internal ring buffer, the size of which was specified when opening the device. The application may
 * query the capture device to discover how much data is currently available via the alcGetInteger with the ALC_CAPTURE_SAMPLES token. This will report the
 * number of sample frames currently available.</p>
 *
 * @param device the capture device
 */
	static public function alcCaptureStart(device:haxe.Int64):Void;

}
