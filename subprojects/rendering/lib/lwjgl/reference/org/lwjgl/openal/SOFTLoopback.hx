package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTLoopback")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_loopback.txt">SOFT_loopback</a> extension.
 * 
 * <p>This extension allows an application to read back OpenAL's rendered audio instead of having it output to an audio device on the system. Unextended
 * OpenAL will output audio to an audio device, with no mechanism to allow an application to divert the audio somewhere else.</p>
 */
extern class SOFTLoopback 
{
/** Accepted by the {@code type} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_BYTE_SOFT:Int = 5120;
/** Accepted by the {@code type} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_UNSIGNED_BYTE_SOFT:Int = 5121;
/** Accepted by the {@code type} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_SHORT_SOFT:Int = 5122;
/** Accepted by the {@code type} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_UNSIGNED_SHORT_SOFT:Int = 5123;
/** Accepted by the {@code type} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_INT_SOFT:Int = 5124;
/** Accepted by the {@code type} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_UNSIGNED_INT_SOFT:Int = 5125;
/** Accepted by the {@code type} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_FLOAT_SOFT:Int = 5126;
/** Accepted by the {@code channels} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_MONO_SOFT:Int = 5376;
/** Accepted by the {@code channels} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_STEREO_SOFT:Int = 5377;
/** Accepted by the {@code channels} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_QUAD_SOFT:Int = 5379;
/** Accepted by the {@code channels} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_5POINT1_SOFT:Int = 5380;
/** Accepted by the {@code channels} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_6POINT1_SOFT:Int = 5381;
/** Accepted by the {@code channels} parameter of alcIsRenderFormatSupportedSOFT.  */
	inline static public var ALC_7POINT1_SOFT:Int = 5382;
/** Accepted as part of the {@code attrList} parameter of alcCreateContext.  */
	inline static public var ALC_FORMAT_CHANNELS_SOFT:Int = 6544;
/** Accepted as part of the {@code attrList} parameter of alcCreateContext.  */
	inline static public var ALC_FORMAT_TYPE_SOFT:Int = 6545;
/** Function address.  */
	public var LoopbackOpenDeviceSOFT:haxe.Int64;
/** Function address.  */
	public var IsRenderFormatSupportedSOFT:haxe.Int64;
/** Function address.  */
	public var RenderSamplesSOFT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProviderLocal,device:haxe.Int64):Void;
/** JNI method for {@link #alcIsRenderFormatSupportedSOFT IsRenderFormatSupportedSOFT}  */
	static public function nalcIsRenderFormatSupportedSOFT(device:haxe.Int64,frequency:Int,channels:Int,type:Int,__functionAddress:haxe.Int64):Bool;
/**
 * The state of various objects on loopback devices (including processed buffers and source offsets) is processed only when new samples are rendered. To
 * render samples, use this function.
 *
 * @param device  the loopback device which samples are rendered from, using its contexts and associated buffers and sources
 * @param buffer  the buffer to write to
 * @param samples the number of sample frames to render
 */
	static public function alcRenderSamplesSOFT(device:haxe.Int64,buffer:java.nio.ByteBuffer,samples:Int):Void;
/**
 * When creating contexts, the attribute list must specify the format used for rendering. This is done with the {@link #ALC_FORMAT_CHANNELS_SOFT FORMAT_CHANNELS_SOFT}, {@link #ALC_FORMAT_TYPE_SOFT FORMAT_TYPE_SOFT},
 * and {@link ALC10#ALC_FREQUENCY FREQUENCY} attributes. This controls the format of the audio subsequently rendered by the device.
 * 
 * <p>To check if a particular rendering format is available, use this function.</p>
 *
 * @param device    the loopback device to query
 * @param frequency the sample rate of the rendered audio
 * @param channels  the channel configuration used for rendering. One of:<br>{@link #ALC_MONO_SOFT MONO_SOFT}, {@link #ALC_STEREO_SOFT STEREO_SOFT}, {@link #ALC_QUAD_SOFT QUAD_SOFT}, {@link #ALC_5POINT1_SOFT 5POINT1_SOFT}, {@link #ALC_6POINT1_SOFT 6POINT1_SOFT}, {@link #ALC_7POINT1_SOFT 7POINT1_SOFT}
 * @param type      sample type of the written audio. One of:<br>{@link #ALC_BYTE_SOFT BYTE_SOFT}, {@link #ALC_UNSIGNED_BYTE_SOFT UNSIGNED_BYTE_SOFT}, {@link #ALC_SHORT_SOFT SHORT_SOFT}, {@link #ALC_UNSIGNED_SHORT_SOFT UNSIGNED_SHORT_SOFT}, {@link #ALC_INT_SOFT INT_SOFT}, {@link #ALC_UNSIGNED_INT_SOFT UNSIGNED_INT_SOFT}, {@link #ALC_FLOAT_SOFT FLOAT_SOFT}
 */
	static public function alcIsRenderFormatSupportedSOFT(device:haxe.Int64,frequency:Int,channels:Int,type:Int):Bool;
/** Unsafe version of {@link #alcRenderSamplesSOFT RenderSamplesSOFT}  */
/** JNI method for {@link #alcRenderSamplesSOFT RenderSamplesSOFT}  */
	static public function nalcRenderSamplesSOFT(device:haxe.Int64,buffer:haxe.Int64,samples:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (device:haxe.Int64,buffer:haxe.Int64,samples:Int):Void {})
/** CharSequence version of: {@link #alcLoopbackOpenDeviceSOFT LoopbackOpenDeviceSOFT}  */
/**
 * Loopback devices provide a way for applications to "read back" rendered audio without it being sent to an actual audio device. It allows applications to
 * render audio as fast or slow as it needs, making it suitable for non-real-time rendering, and so it can be passed to an audio codec or something for
 * further processing.
 * 
 * <p>To open a loopback device, use this function.</p>
 * 
 * <p>A loopback device behaves largely the same as a playback device. You may query playback state and error codes, and create contexts, which can then be
 * set as current to generate sources and buffers like normal.</p>
 * 
 * <p>Note that loopback devices do not have either the {@link ALC10#ALC_SYNC SYNC} or {@link ALC10#ALC_REFRESH REFRESH} attributes. Attempting to query them will result in an {@link ALC10#ALC_INVALID_ENUM INVALID_ENUM}
 * error.</p>
 *
 * @param deviceName which device or device driver to use for subsequent rendering. This may be {@code NULL} for an implementation-defined default, otherwise it must be a valid
 *                   name returned by enumeration (and further must be a device capable of loopback rendering).
 */
	static public function alcLoopbackOpenDeviceSOFT(deviceName:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (deviceName:java.lang.CharSequence):haxe.Int64 {})
/** Unsafe version of {@link #alcLoopbackOpenDeviceSOFT LoopbackOpenDeviceSOFT}  */
/** JNI method for {@link #alcLoopbackOpenDeviceSOFT LoopbackOpenDeviceSOFT}  */
	static public function nalcLoopbackOpenDeviceSOFT(deviceName:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (deviceName:haxe.Int64):haxe.Int64 {})
/** Returns the {@link SOFTLoopback} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.SOFTLoopback;

}
