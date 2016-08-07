package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.AL11")
@:final
/** Native bindings to AL 1.1 functionality.  */
extern class AL11 
{
/** General tokens.  */
	inline static public var AL_SEC_OFFSET:Int = 4132;
/** General tokens.  */
	inline static public var AL_SAMPLE_OFFSET:Int = 4133;
/** General tokens.  */
	inline static public var AL_BYTE_OFFSET:Int = 4134;
/** General tokens.  */
	inline static public var AL_STATIC:Int = 4136;
/** General tokens.  */
	inline static public var AL_STREAMING:Int = 4137;
/** General tokens.  */
	inline static public var AL_UNDETERMINED:Int = 4144;
/** General tokens.  */
	inline static public var AL_ILLEGAL_COMMAND:Int = 40964;
/** General tokens.  */
	inline static public var AL_SPEED_OF_SOUND:Int = 49155;
/** General tokens.  */
	inline static public var AL_LINEAR_DISTANCE:Int = 53251;
/** General tokens.  */
	inline static public var AL_LINEAR_DISTANCE_CLAMPED:Int = 53252;
/** General tokens.  */
	inline static public var AL_EXPONENT_DISTANCE:Int = 53253;
/** General tokens.  */
	inline static public var AL_EXPONENT_DISTANCE_CLAMPED:Int = 53254;
/** Function address.  */
	public var Listener3i:haxe.Int64;
/** Function address.  */
	public var GetListeneriv:haxe.Int64;
/** Function address.  */
	public var Source3i:haxe.Int64;
/** Function address.  */
	public var Listeneriv:haxe.Int64;
/** Function address.  */
	public var Sourceiv:haxe.Int64;
/** Function address.  */
	public var Bufferf:haxe.Int64;
/** Function address.  */
	public var Buffer3f:haxe.Int64;
/** Function address.  */
	public var Bufferfv:haxe.Int64;
/** Function address.  */
	public var Bufferi:haxe.Int64;
/** Function address.  */
	public var Buffer3i:haxe.Int64;
/** Function address.  */
	public var Bufferiv:haxe.Int64;
/** Function address.  */
	public var GetBufferi:haxe.Int64;
/** Function address.  */
	public var GetBufferiv:haxe.Int64;
/** Function address.  */
	public var GetBufferf:haxe.Int64;
/** Function address.  */
	public var GetBufferfv:haxe.Int64;
/** Function address.  */
	public var SpeedOfSound:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #alSource3i Source3i}  */
	static public function nalSource3i(source:Int,paramName:Int,value1:Int,value2:Int,value3:Int,__functionAddress:haxe.Int64):Void;
/**
 * Sets the integer value of a buffer parameter.
 *
 * @param buffer    the buffer to modify
 * @param paramName the parameter to modify
 * @param value     the value
 */
	static public function alBufferi(buffer:Int,paramName:Int,value:Int):Void;
/** Unsafe version of {@link #alGetBufferfv GetBufferfv}  */
/** JNI method for {@link #alGetBufferfv GetBufferfv}  */
	static public function nalGetBufferfv(buffer:Int,param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,param:Int,values:haxe.Int64):Void {})
/** JNI method for {@link #alBufferf Bufferf}  */
	static public function nalBufferf(buffer:Int,paramName:Int,value:Float,__functionAddress:haxe.Int64):Void;
/**
 * Sets the float value of a buffer parameter.
 *
 * @param buffer    the buffer to modify
 * @param paramName the parameter to modify
 * @param value     the value
 */
	static public function alBufferf(buffer:Int,paramName:Int,value:Float):Void;
/**
 * Sets the the dimensional value of a buffer parameter.
 *
 * @param buffer    the buffer to modify
 * @param paramName the parameter to modify
 * @param value1    the first value
 * @param value2    the second value
 * @param value3    the third value
 */
	static public function alBuffer3f(buffer:Int,paramName:Int,value1:Float,value2:Float,value3:Float):Void;
/** JNI method for {@link #alListener3i Listener3i}  */
	static public function nalListener3i(paramName:Int,value1:Float,value2:Float,value3:Float,__functionAddress:haxe.Int64):Void;
/**
 * the pointer version of {@link #alBufferf Bufferf}
 *
 * @param buffer    the buffer to modify
 * @param paramName the parameter to modify
 * @param value     the parameter values
 */
/** Alternative version of: {@link #alBufferfv Bufferfv}  */
	static public function alBufferfv(buffer:Int,paramName:Int,value:java.nio.FloatBuffer):Void;
	@:overload(function (buffer:Int,paramName:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alBufferfv Bufferfv}  */
/** JNI method for {@link #alBufferfv Bufferfv}  */
	static public function nalBufferfv(buffer:Int,paramName:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,paramName:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #alListeneriv Listeneriv}  */
/** JNI method for {@link #alListeneriv Listeneriv}  */
	static public function nalListeneriv(listener:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (listener:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #alBuffer3f Buffer3f}  */
	static public function nalBuffer3f(buffer:Int,paramName:Int,value1:Float,value2:Float,value3:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #alBuffer3i Buffer3i}  */
	static public function nalBuffer3i(buffer:Int,paramName:Int,value1:Int,value2:Int,value3:Int,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version.
 *
 * @param listener the parameter to modify
 * @param value    the parameter values
 */
/** Alternative version of: {@link #alListeneriv Listeneriv}  */
	static public function alListeneriv(listener:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (listener:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Returns the integer values of the specified buffer parameter.
 *
 * @param buffer the buffer to query
 * @param param  the parameter to query
 * @param values the parameter values
 */
/** Alternative version of: {@link #alGetBufferiv GetBufferiv}  */
	static public function alGetBufferiv(buffer:Int,param:Int,values:java.nio.IntBuffer):Void;
	@:overload(function (buffer:Int,param:Int,values:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #alBufferi Bufferi}  */
	static public function nalBufferi(buffer:Int,paramName:Int,value:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #alGetListeneriv GetListeneriv}  */
/** JNI method for {@link #alGetListeneriv GetListeneriv}  */
	static public function nalGetListeneriv(param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (param:Int,values:haxe.Int64):Void {})
/**
 * Returns the integer values of the specified listener parameter.
 *
 * @param param  the parameter to query
 * @param values the parameter values
 */
/** Alternative version of: {@link #alGetListeneriv GetListeneriv}  */
	static public function alGetListeneriv(param:Int,values:java.nio.IntBuffer):Void;
	@:overload(function (param:Int,values:java.nio.ByteBuffer):Void {})
/**
 * Sets the 3 dimensional integer values of a source parameter.
 *
 * @param source    the source to modify
 * @param paramName the parameter to modify
 * @param value1    the first value
 * @param value2    the second value
 * @param value3    the third value
 */
	static public function alSource3i(source:Int,paramName:Int,value1:Int,value2:Int,value3:Int):Void;
/** Unsafe version of {@link #alGetBufferi GetBufferi}  */
/** JNI method for {@link #alGetBufferi GetBufferi}  */
	static public function nalGetBufferi(buffer:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,param:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #alGetBufferf GetBufferf}  */
/** JNI method for {@link #alGetBufferf GetBufferf}  */
	static public function nalGetBufferf(buffer:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,param:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #alSpeedOfSound SpeedOfSound}  */
	static public function nalSpeedOfSound(value:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #alGetBufferiv GetBufferiv}  */
/** JNI method for {@link #alGetBufferiv GetBufferiv}  */
	static public function nalGetBufferiv(buffer:Int,param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,param:Int,values:haxe.Int64):Void {})
/** Unsafe version of {@link #alSourceiv Sourceiv}  */
/** JNI method for {@link #alSourceiv Sourceiv}  */
	static public function nalSourceiv(source:Int,paramName:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,paramName:Int,value:haxe.Int64):Void {})
/**
 * the pointer version of {@link #alBufferi Bufferi}
 *
 * @param buffer    the buffer to modify
 * @param paramName the parameter to modify
 * @param value     the parameter values
 */
/** Alternative version of: {@link #alBufferiv Bufferiv}  */
	static public function alBufferiv(buffer:Int,paramName:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (buffer:Int,paramName:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Sets the 3 dimensional integer values of a listener parameter.
 *
 * @param paramName the parameter to modify
 * @param value1    the first value
 * @param value2    the second value
 * @param value3    the third value
 */
	static public function alListener3i(paramName:Int,value1:Float,value2:Float,value3:Float):Void;
/**
 * Pointer version.
 *
 * @param source    the source to modify
 * @param paramName the parameter to modify
 * @param value     the parameter values
 */
/** Alternative version of: {@link #alSourceiv Sourceiv}  */
	static public function alSourceiv(source:Int,paramName:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (source:Int,paramName:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Sets the integer 3 dimensional value of a buffer parameter.
 *
 * @param buffer    the buffer to modify
 * @param paramName the parameter to modify
 * @param value1    the first value
 * @param value2    the second value
 * @param value3    the third value
 */
	static public function alBuffer3i(buffer:Int,paramName:Int,value1:Int,value2:Int,value3:Int):Void;
/**
 * Returns the float values of the specified buffer parameter.
 *
 * @param buffer the buffer to query
 * @param param  the parameter to query
 * @param values the parameter values
 */
/** Alternative version of: {@link #alGetBufferfv GetBufferfv}  */
	static public function alGetBufferfv(buffer:Int,param:Int,values:java.nio.FloatBuffer):Void;
	@:overload(function (buffer:Int,param:Int,values:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #alGetBufferf GetBufferf}  */
/**
 * Returns the float value of the specified buffer parameter.
 *
 * @param buffer the buffer to query
 * @param param  the parameter to query
 * @param value  the parameter value
 */
/** Alternative version of: {@link #alGetBufferf GetBufferf}  */
	static public function alGetBufferf(buffer:Int,param:Int,value:java.nio.FloatBuffer):Void;
	@:overload(function (buffer:Int,param:Int):Float {})
	@:overload(function (buffer:Int,param:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Sets the speed of sound.
 *
 * @param value the speed of sound
 */
	static public function alSpeedOfSound(value:Float):Void;
/** Returns the {@link AL11} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.AL11;
/** Unsafe version of {@link #alBufferiv Bufferiv}  */
/** JNI method for {@link #alBufferiv Bufferiv}  */
	static public function nalBufferiv(buffer:Int,paramName:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,paramName:Int,value:haxe.Int64):Void {})
/** Single return value version of: {@link #alGetBufferi GetBufferi}  */
/**
 * Returns the integer value of the specified buffer parameter.
 *
 * @param buffer the buffer to query
 * @param param  the parameter to query
 * @param value  the parameter value
 */
/** Alternative version of: {@link #alGetBufferi GetBufferi}  */
	static public function alGetBufferi(buffer:Int,param:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (buffer:Int,param:Int):Int {})
	@:overload(function (buffer:Int,param:Int,value:java.nio.ByteBuffer):Void {})

}
