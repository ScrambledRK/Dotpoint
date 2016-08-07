package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTSourceLatency")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_source_latency.txt">SOFT_source_latency</a> extension.
 * 
 * <p>This extension provides a method for applications to more accurately measure the playback latency of sources. Unextended OpenAL allows apps to retrieve
 * a source's playback offset in bytes, samples, or seconds, but this is (typically) where the AL is processing the audio data.</p>
 * 
 * <p>Often, more processing is done outside of the AL. Audio servers are common and they can introduce a bit of latency, increasing the time between when the
 * AL is done with a piece of audio data until it gets heard by the user. If the OpenAL implementation uses its own mixer, that can also add to the
 * latency. This can ultimately cause a not-insignificant delay between where the AL is processing and what is actually being heard.</p>
 * 
 * <p>Although this delay may not be very noticeable for general gaming, if the app is trying to keep a video or animation syncronized with the playback of an
 * OpenAL source this extra delay can cause the audio and video to appear of out sync.</p>
 * 
 * <p>Luckily, most audio systems have a way of measuring the latency it takes for sound to actually get to the physical output device (the DAC or speakers).
 * By providing this information through the AL, an application can more accurately tell what a user is hearing and thus synchronize better with the audio
 * output.</p>
 */
extern class SOFTSourceLatency 
{
/** Can be used to retrieve a high-precision source offset and playback latency.  */
	inline static public var AL_SAMPLE_OFFSET_LATENCY_SOFT:Int = 4608;
/** Can be used to retrieve a high-precision source offset and playback latency.  */
	inline static public var AL_SEC_OFFSET_LATENCY_SOFT:Int = 4609;
/** Function address.  */
	public var SourcedSOFT:haxe.Int64;
/** Function address.  */
	public var Source3dSOFT:haxe.Int64;
/** Function address.  */
	public var SourcedvSOFT:haxe.Int64;
/** Function address.  */
	public var GetSourcedSOFT:haxe.Int64;
/** Function address.  */
	public var GetSource3dSOFT:haxe.Int64;
/** Function address.  */
	public var GetSourcedvSOFT:haxe.Int64;
/** Function address.  */
	public var Sourcei64SOFT:haxe.Int64;
/** Function address.  */
	public var Source3i64SOFT:haxe.Int64;
/** Function address.  */
	public var Sourcei64vSOFT:haxe.Int64;
/** Function address.  */
	public var GetSourcei64SOFT:haxe.Int64;
/** Function address.  */
	public var GetSource3i64SOFT:haxe.Int64;
/** Function address.  */
	public var GetSourcei64vSOFT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #alSourcedSOFT SourcedSOFT}  */
	static public function nalSourcedSOFT(source:Int,param:Int,value:Float,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #alGetSourcedSOFT GetSourcedSOFT}
 *
 * @param source the source to query
 * @param param  the parameter to query
 * @param values the parameter values
 */
/** Alternative version of: {@link #alGetSourcedvSOFT GetSourcedvSOFT}  */
	static public function alGetSourcedvSOFT(source:Int,param:Int,values:java.nio.DoubleBuffer):Void;
	@:overload(function (source:Int,param:Int,values:java.nio.ByteBuffer):Void {})
/**
 * Sets the double value of a source parameter.
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param value  the parameter value
 */
	static public function alSourcedSOFT(source:Int,param:Int,value:Float):Void;
/** Unsafe version of {@link #alGetSource3dSOFT GetSource3dSOFT}  */
/** JNI method for {@link #alGetSource3dSOFT GetSource3dSOFT}  */
	static public function nalGetSource3dSOFT(source:Int,param:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64):Void {})
/** Unsafe version of {@link #alSourcedvSOFT SourcedvSOFT}  */
/** JNI method for {@link #alSourcedvSOFT SourcedvSOFT}  */
	static public function nalSourcedvSOFT(source:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #alGetSourcedSOFT GetSourcedSOFT}  */
/** JNI method for {@link #alGetSourcedSOFT GetSourcedSOFT}  */
	static public function nalGetSourcedSOFT(source:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,value:haxe.Int64):Void {})
/**
 * Sets the 3 dimensional double values of a source parameter.
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param value1 the first value
 * @param value2 the second value
 * @param value3 the third value
 */
	static public function alSource3dSOFT(source:Int,param:Int,value1:Float,value2:Float,value3:Float):Void;
/**
 * Sets the 3 dimensional 64 bit integer values of a source parameter.
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param value1 the first value
 * @param value2 the second value
 * @param value3 the third value
 */
	static public function alSource3i64SOFT(source:Int,param:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64):Void;
/** Unsafe version of {@link #alGetSourcei64SOFT GetSourcei64SOFT}  */
/** JNI method for {@link #alGetSourcei64SOFT GetSourcei64SOFT}  */
	static public function nalGetSourcei64SOFT(source:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,value:haxe.Int64):Void {})
/**
 * Pointer version of {@link #alGetSourcei64SOFT GetSourcei64SOFT}
 *
 * @param source the source to query
 * @param param  the parameter to query
 * @param values the parameter values
 */
/** Alternative version of: {@link #alGetSourcei64vSOFT GetSourcei64vSOFT}  */
	static public function alGetSourcei64vSOFT(source:Int,param:Int,values:java.nio.LongBuffer):Void;
	@:overload(function (source:Int,param:Int,values:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alGetSource3i64SOFT GetSource3i64SOFT}  */
/** JNI method for {@link #alGetSource3i64SOFT GetSource3i64SOFT}  */
	static public function nalGetSource3i64SOFT(source:Int,param:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64):Void {})
/**
 * Gets the 3 dimensional double values of a source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query
 * @param value1 the first value
 * @param value2 the second value
 * @param value3 the third value
 */
/** Alternative version of: {@link #alGetSource3dSOFT GetSource3dSOFT}  */
	static public function alGetSource3dSOFT(source:Int,param:Int,value1:java.nio.DoubleBuffer,value2:java.nio.DoubleBuffer,value3:java.nio.DoubleBuffer):Void;
	@:overload(function (source:Int,param:Int,value1:java.nio.ByteBuffer,value2:java.nio.ByteBuffer,value3:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alGetSourcedvSOFT GetSourcedvSOFT}  */
/** JNI method for {@link #alGetSourcedvSOFT GetSourcedvSOFT}  */
	static public function nalGetSourcedvSOFT(source:Int,param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,values:haxe.Int64):Void {})
/** Unsafe version of {@link #alSourcei64vSOFT Sourcei64vSOFT}  */
/** JNI method for {@link #alSourcei64vSOFT Sourcei64vSOFT}  */
	static public function nalSourcei64vSOFT(source:Int,param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,values:haxe.Int64):Void {})
/**
 * Gets the 3 dimensional 64 bit integer values of a source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query
 * @param value1 the first value
 * @param value2 the second value
 * @param value3 the third value
 */
/** Alternative version of: {@link #alGetSource3i64SOFT GetSource3i64SOFT}  */
	static public function alGetSource3i64SOFT(source:Int,param:Int,value1:java.nio.LongBuffer,value2:java.nio.LongBuffer,value3:java.nio.LongBuffer):Void;
	@:overload(function (source:Int,param:Int,value1:java.nio.ByteBuffer,value2:java.nio.ByteBuffer,value3:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #alSource3dSOFT Source3dSOFT}  */
	static public function nalSource3dSOFT(source:Int,param:Int,value1:Float,value2:Float,value3:Float,__functionAddress:haxe.Int64):Void;
/**
 * pointer version of {@link #alSourcedSOFT SourcedSOFT}
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param value  the parameter values
 */
/** Alternative version of: {@link #alSourcedvSOFT SourcedvSOFT}  */
	static public function alSourcedvSOFT(source:Int,param:Int,value:java.nio.DoubleBuffer):Void;
	@:overload(function (source:Int,param:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #alSourcei64SOFT Sourcei64SOFT}
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param values the parameter values
 */
/** Alternative version of: {@link #alSourcei64vSOFT Sourcei64vSOFT}  */
	static public function alSourcei64vSOFT(source:Int,param:Int,values:java.nio.LongBuffer):Void;
	@:overload(function (source:Int,param:Int,values:java.nio.ByteBuffer):Void {})
/**
 * Gets the double value of a source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query
 * @param value  the parameter values
 */
/** Alternative version of: {@link #alGetSourcedSOFT GetSourcedSOFT}  */
	static public function alGetSourcedSOFT(source:Int,param:Int,value:java.nio.DoubleBuffer):Void;
	@:overload(function (source:Int,param:Int,value:java.nio.ByteBuffer):Void {})
/** Returns the {@link SOFTSourceLatency} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.SOFTSourceLatency;
/**
 * Gets the 64 bit integer value of a source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query
 * @param value  the parameter values
 */
/** Alternative version of: {@link #alGetSourcei64SOFT GetSourcei64SOFT}  */
	static public function alGetSourcei64SOFT(source:Int,param:Int,value:java.nio.LongBuffer):Void;
	@:overload(function (source:Int,param:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Sets the 64 bit integer value of a source parameter.
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param value  the parameter values
 */
	static public function alSourcei64SOFT(source:Int,param:Int,value:haxe.Int64):Void;
/** JNI method for {@link #alSourcei64SOFT Sourcei64SOFT}  */
	static public function nalSourcei64SOFT(source:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #alSource3i64SOFT Source3i64SOFT}  */
	static public function nalSource3i64SOFT(source:Int,param:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #alGetSourcei64vSOFT GetSourcei64vSOFT}  */
/** JNI method for {@link #alGetSourcei64vSOFT GetSourcei64vSOFT}  */
	static public function nalGetSourcei64vSOFT(source:Int,param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,values:haxe.Int64):Void {})

}
