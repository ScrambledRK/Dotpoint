package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.AL10")
@:final
/** Native bindings to AL 1.0 functionality.  */
extern class AL10 
{
/** General tokens.  */
	inline static public var AL_INVALID:Int = -1;
/** General tokens.  */
	inline static public var AL_NONE:Int = 0;
/** General tokens.  */
	inline static public var AL_FALSE:Int = 0;
/** General tokens.  */
	inline static public var AL_TRUE:Int = 1;
/** Error conditions.  */
	inline static public var AL_NO_ERROR:Int = 0;
/** Error conditions.  */
	inline static public var AL_INVALID_NAME:Int = 40961;
/** Error conditions.  */
	inline static public var AL_INVALID_ENUM:Int = 40962;
/** Error conditions.  */
	inline static public var AL_INVALID_VALUE:Int = 40963;
/** Error conditions.  */
	inline static public var AL_INVALID_OPERATION:Int = 40964;
/** Error conditions.  */
	inline static public var AL_OUT_OF_MEMORY:Int = 40965;
/** Numerical queries.  */
	inline static public var AL_DOPPLER_FACTOR:Int = 49152;
/** Numerical queries.  */
	inline static public var AL_DISTANCE_MODEL:Int = 53248;
/** String queries.  */
	inline static public var AL_VENDOR:Int = 45057;
/** String queries.  */
	inline static public var AL_VERSION:Int = 45058;
/** String queries.  */
	inline static public var AL_RENDERER:Int = 45059;
/** String queries.  */
	inline static public var AL_EXTENSIONS:Int = 45060;
/** Distance attenuation models.  */
	inline static public var AL_INVERSE_DISTANCE:Int = 53249;
/** Distance attenuation models.  */
	inline static public var AL_INVERSE_DISTANCE_CLAMPED:Int = 53250;
/** Source types.  */
	inline static public var AL_SOURCE_ABSOLUTE:Int = 513;
/** Source types.  */
	inline static public var AL_SOURCE_RELATIVE:Int = 514;
/** Listener and Source attributes.  */
	inline static public var AL_POSITION:Int = 4100;
/** Listener and Source attributes.  */
	inline static public var AL_VELOCITY:Int = 4102;
/** Listener and Source attributes.  */
	inline static public var AL_GAIN:Int = 4106;
/** Source attributes.  */
	inline static public var AL_CONE_INNER_ANGLE:Int = 4097;
/** Source attributes.  */
	inline static public var AL_CONE_OUTER_ANGLE:Int = 4098;
/** Source attributes.  */
	inline static public var AL_PITCH:Int = 4099;
/** Source attributes.  */
	inline static public var AL_DIRECTION:Int = 4101;
/** Source attributes.  */
	inline static public var AL_LOOPING:Int = 4103;
/** Source attributes.  */
	inline static public var AL_BUFFER:Int = 4105;
/** Source attributes.  */
	inline static public var AL_SOURCE_STATE:Int = 4112;
/** Source attributes.  */
	inline static public var AL_CONE_OUTER_GAIN:Int = 4130;
/** Source attributes.  */
	inline static public var AL_SOURCE_TYPE:Int = 4135;
/** Source state.  */
	inline static public var AL_INITIAL:Int = 4113;
/** Source state.  */
	inline static public var AL_PLAYING:Int = 4114;
/** Source state.  */
	inline static public var AL_PAUSED:Int = 4115;
/** Source state.  */
	inline static public var AL_STOPPED:Int = 4116;
/** Listener attributes.  */
	inline static public var AL_ORIENTATION:Int = 4111;
/** Queue state.  */
	inline static public var AL_BUFFERS_QUEUED:Int = 4117;
/** Queue state.  */
	inline static public var AL_BUFFERS_PROCESSED:Int = 4118;
/** Gain bounds.  */
	inline static public var AL_MIN_GAIN:Int = 4109;
/** Gain bounds.  */
	inline static public var AL_MAX_GAIN:Int = 4110;
/** Distance model attributes,  */
	inline static public var AL_REFERENCE_DISTANCE:Int = 4128;
/** Distance model attributes,  */
	inline static public var AL_ROLLOFF_FACTOR:Int = 4129;
/** Distance model attributes,  */
	inline static public var AL_MAX_DISTANCE:Int = 4131;
/** Buffer attributes,  */
	inline static public var AL_FREQUENCY:Int = 8193;
/** Buffer attributes,  */
	inline static public var AL_BITS:Int = 8194;
/** Buffer attributes,  */
	inline static public var AL_CHANNELS:Int = 8195;
/** Buffer attributes,  */
	inline static public var AL_SIZE:Int = 8196;
/** Buffer formats.  */
	inline static public var AL_FORMAT_MONO8:Int = 4352;
/** Buffer formats.  */
	inline static public var AL_FORMAT_MONO16:Int = 4353;
/** Buffer formats.  */
	inline static public var AL_FORMAT_STEREO8:Int = 4354;
/** Buffer formats.  */
	inline static public var AL_FORMAT_STEREO16:Int = 4355;
/** Buffer state.  */
	inline static public var AL_UNUSED:Int = 8208;
/** Buffer state.  */
	inline static public var AL_PENDING:Int = 8209;
/** Buffer state.  */
	inline static public var AL_PROCESSED:Int = 8210;
/** Function address.  */
	public var GetError:haxe.Int64;
/** Function address.  */
	public var Enable:haxe.Int64;
/** Function address.  */
	public var Disable:haxe.Int64;
/** Function address.  */
	public var IsEnabled:haxe.Int64;
/** Function address.  */
	public var GetBoolean:haxe.Int64;
/** Function address.  */
	public var GetInteger:haxe.Int64;
/** Function address.  */
	public var GetFloat:haxe.Int64;
/** Function address.  */
	public var GetDouble:haxe.Int64;
/** Function address.  */
	public var GetBooleanv:haxe.Int64;
/** Function address.  */
	public var GetIntegerv:haxe.Int64;
/** Function address.  */
	public var GetFloatv:haxe.Int64;
/** Function address.  */
	public var GetDoublev:haxe.Int64;
/** Function address.  */
	public var GetString:haxe.Int64;
/** Function address.  */
	public var DistanceModel:haxe.Int64;
/** Function address.  */
	public var DopplerFactor:haxe.Int64;
/** Function address.  */
	public var DopplerVelocity:haxe.Int64;
/** Function address.  */
	public var Listenerf:haxe.Int64;
/** Function address.  */
	public var Listeneri:haxe.Int64;
/** Function address.  */
	public var Listener3f:haxe.Int64;
/** Function address.  */
	public var Listenerfv:haxe.Int64;
/** Function address.  */
	public var GetListenerf:haxe.Int64;
/** Function address.  */
	public var GetListeneri:haxe.Int64;
/** Function address.  */
	public var GetListener3f:haxe.Int64;
/** Function address.  */
	public var GetListenerfv:haxe.Int64;
/** Function address.  */
	public var GenSources:haxe.Int64;
/** Function address.  */
	public var DeleteSources:haxe.Int64;
/** Function address.  */
	public var IsSource:haxe.Int64;
/** Function address.  */
	public var Sourcef:haxe.Int64;
/** Function address.  */
	public var Source3f:haxe.Int64;
/** Function address.  */
	public var Sourcefv:haxe.Int64;
/** Function address.  */
	public var Sourcei:haxe.Int64;
/** Function address.  */
	public var GetSourcef:haxe.Int64;
/** Function address.  */
	public var GetSource3f:haxe.Int64;
/** Function address.  */
	public var GetSourcefv:haxe.Int64;
/** Function address.  */
	public var GetSourcei:haxe.Int64;
/** Function address.  */
	public var SourceQueueBuffers:haxe.Int64;
/** Function address.  */
	public var SourceUnqueueBuffers:haxe.Int64;
/** Function address.  */
	public var SourcePlay:haxe.Int64;
/** Function address.  */
	public var SourcePause:haxe.Int64;
/** Function address.  */
	public var SourceStop:haxe.Int64;
/** Function address.  */
	public var SourceRewind:haxe.Int64;
/** Function address.  */
	public var SourcePlayv:haxe.Int64;
/** Function address.  */
	public var SourcePausev:haxe.Int64;
/** Function address.  */
	public var SourceStopv:haxe.Int64;
/** Function address.  */
	public var SourceRewindv:haxe.Int64;
/** Function address.  */
	public var GenBuffers:haxe.Int64;
/** Function address.  */
	public var DeleteBuffers:haxe.Int64;
/** Function address.  */
	public var IsBuffer:haxe.Int64;
/** Function address.  */
	public var GetBufferf:haxe.Int64;
/** Function address.  */
	public var GetBufferi:haxe.Int64;
/** Function address.  */
	public var BufferData:haxe.Int64;
/** Function address.  */
	public var GetEnumValue:haxe.Int64;
/** Function address.  */
	public var GetProcAddress:haxe.Int64;
/** Function address.  */
	public var IsExtensionPresent:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #alDopplerVelocity DopplerVelocity}  */
	static public function nalDopplerVelocity(dopplerVelocity:Float,__functionAddress:haxe.Int64):Void;
/** CharSequence version of: {@link #alIsExtensionPresent IsExtensionPresent}  */
/**
 * Verifies that a given extension is available for the current context and the device it is associated with.
 * 
 * <p>Invalid and unsupported string tokens return ALC_FALSE. {@code extName} is not case sensitive – the implementation will convert the name to all
 * upper-case internally (and will express extension names in upper-case).</p>
 *
 * @param extName the extension name
 */
	static public function alIsExtensionPresent(extName:java.nio.ByteBuffer):Bool;
	@:overload(function (extName:java.lang.CharSequence):Bool {})
/** JNI method for {@link #alDistanceModel DistanceModel}  */
	static public function nalDistanceModel(modelName:Int,__functionAddress:haxe.Int64):Void;
/**
 * Returns the float value of the specified parameter.
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_DOPPLER_FACTOR DOPPLER_FACTOR}, {@link #AL_DISTANCE_MODEL DISTANCE_MODEL}, {@link AL11#AL_SPEED_OF_SOUND SPEED_OF_SOUND}
 */
	static public function alGetFloat(paramName:Int):Float;
/** Unsafe version of {@link #alDeleteBuffers DeleteBuffers}  */
/** JNI method for {@link #alDeleteBuffers DeleteBuffers}  */
	static public function nalDeleteBuffers(n:Int,bufferNames:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,bufferNames:haxe.Int64):Void {})
/** Alternative version of: {@link #alSourcePausev SourcePausev}  */
/**
 * Pointer version of {@link #alSourcePause SourcePause}.
 *
 * @param n       the number of sources to pause
 * @param sources the sources to pause
 */
	static public function alSourcePausev(n:Int,sources:java.nio.ByteBuffer):Void;
	@:overload(function (sources:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #alGetListeneri GetListeneri}  */
/** JNI method for {@link #alGetListeneri GetListeneri}  */
	static public function nalGetListeneri(paramName:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,value:haxe.Int64):Void {})
/**
 * Sets the source state to AL_STOPPED.
 * 
 * <p>alSourceStop applied to an AL_INITIAL source is a legal NOP. alSourceStop applied to a AL_PLAYING source will change its state to AL_STOPPED. The source
 * is exempt from processing, its current state is preserved. alSourceStop applied to a AL_PAUSED source will change its state to AL_STOPPED, with the same
 * consequences as on a AL_PLAYING source. alSourceStop applied to a AL_STOPPED source is a legal NOP.</p>
 *
 * @param source the source to stop
 */
	static public function alSourceStop(source:Int):Void;
/** Unsafe version of {@link #alSourceStopv SourceStopv}  */
/** JNI method for {@link #alSourceStopv SourceStopv}  */
	static public function nalSourceStopv(n:Int,sources:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,sources:haxe.Int64):Void {})
/** Unsafe version of {@link #alGetListenerf GetListenerf}  */
/** JNI method for {@link #alGetListenerf GetListenerf}  */
	static public function nalGetListenerf(paramName:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #alSourceStop SourceStop}  */
	static public function nalSourceStop(source:Int,__functionAddress:haxe.Int64):Void;
/**
 * Returns the string value of the specified parameter
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_VENDOR VENDOR}, {@link #AL_VERSION VERSION}, {@link #AL_RENDERER RENDERER}, {@link #AL_EXTENSIONS EXTENSIONS}
 */
	static public function alGetString(paramName:Int):String;
/**
 * Sets the doppler effect factor.
 * 
 * <p>The Doppler Effect depends on the velocities of source and listener relative to the medium, and the propagation speed of sound in that medium. The
 * application might want to emphasize or de-emphasize the Doppler Effect as physically accurate calculation might not give the desired results. The amount
 * of frequency shift (pitch change) is proportional to the speed of listener and source along their line of sight. The Doppler Effect as implemented by
 * OpenAL is described by the formula below. Effects of the medium (air, water) moving with respect to listener and source are ignored.
 * <pre><code style="font-family: monospace">
 * SS: AL_SPEED_OF_SOUND = speed of sound (default value 343.3)
 * DF: AL_DOPPLER_FACTOR = Doppler factor (default 1.0)
 * vls: Listener velocity scalar (scalar, projected on source-to-listener vector)
 * vss: Source velocity scalar (scalar, projected on source-to-listener vector)
 * f: Frequency of sample
 * f': effective Doppler shifted frequency
 * 
 * 3D Mathematical representation of vls and vss:
 * 
 * Mag(vector) = sqrt(vector.x * vector.x + vector.y * vector.y + vector.z * vector.z)
 * DotProduct(v1, v2) = (v1.x * v2.x + v1.y * v2.y + v1.z * v2.z)
 * 
 * SL = source to listener vector
 * SV = Source velocity vector
 * LV = Listener velocity vector
 * 
 * vls = DotProduct(SL, LV) / Mag(SL)
 * vss = DotProduct(SL, SV) / Mag(SL)
 * 
 * Dopper Calculation:
 * 
 * vss = min(vss, SS / DF)
 * vls = min(vls, SS / DF)
 * 
 * f' = f * (SS - DF * vls) / (SS - DF * vss)</code></pre>
 * The {@code dopplerFactor} is a simple scaling of source and listener velocities to exaggerate or deemphasize the Doppler (pitch) shift resulting from
 * the calculation.</p>
 *
 * @param dopplerFactor the doppler factor
 */
	static public function alDopplerFactor(dopplerFactor:Float):Void;
/**
 * Sets the source state to AL_PLAYING.
 * 
 * <p>alSourcePlay applied to an AL_INITIAL source will promote the source to AL_PLAYING, thus the data found in the buffer will be fed into the processing,
 * starting at the beginning. alSourcePlay applied to a AL_PLAYING source will restart the source from the beginning. It will not affect the configuration,
 * and will leave the source in AL_PLAYING state, but reset the sampling offset to the beginning. alSourcePlay applied to a AL_PAUSED source will resume
 * processing using the source state as preserved at the alSourcePause operation. alSourcePlay applied to a AL_STOPPED source will propagate it to
 * AL_INITIAL then to AL_PLAYING immediately.</p>
 *
 * @param source the source to play
 */
	static public function alSourcePlay(source:Int):Void;
/** Alternative version of: {@link #alSourcePlayv SourcePlayv}  */
/**
 * Pointer version of {@link #alSourcePlay SourcePlay}.
 *
 * @param n       the number of sources to play
 * @param sources the sources to play
 */
	static public function alSourcePlayv(n:Int,sources:java.nio.ByteBuffer):Void;
	@:overload(function (sources:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #alGetDoublev GetDoublev}  */
/** JNI method for {@link #alGetDoublev GetDoublev}  */
	static public function nalGetDoublev(paramName:Int,dest:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,dest:haxe.Int64):Void {})
/** JNI method for {@link #alEnable Enable}  */
	static public function nalEnable(target:Int,__functionAddress:haxe.Int64):Void;
/** Single value version of: {@link #alDeleteBuffers DeleteBuffers}  */
/** Alternative version of: {@link #alDeleteBuffers DeleteBuffers}  */
/**
 * Requests the deletion of a number of buffers.
 *
 * @param n           the number of buffers to delete
 * @param bufferNames the buffers to delete
 */
	static public function alDeleteBuffers(n:Int,bufferNames:java.nio.ByteBuffer):Void;
	@:overload(function (bufferName:Int):Void {})
	@:overload(function (bufferNames:java.nio.IntBuffer):Void {})
/**
 * Sets the distance attenuation model.
 * 
 * <p>Samples usually use the entire dynamic range of the chosen format/encoding, independent of their real world intensity. For example, a jet engine and a
 * clockwork both will have samples with full amplitude. The application will then have to adjust source gain accordingly to account for relative differences.</p>
 * 
 * <p>Source gain is then attenuated by distance. The effective attenuation of a source depends on many factors, among which distance attenuation and source
 * and listener gain are only some of the contributing factors. Even if the source and listener gain exceed 1.0 (amplification beyond the guaranteed
 * dynamic range), distance and other attenuation might ultimately limit the overall gain to a value below 1.0.</p>
 * 
 * <p>OpenAL currently supports three modes of operation with respect to distance attenuation, including one that is similar to the IASIG I3DL2 model. The
 * application can choose one of these models (or chooses to disable distance-dependent attenuation) on a per-context basis.</p>
 *
 * @param modelName the distance attenuation model to set. One of:<br>{@link #AL_INVERSE_DISTANCE INVERSE_DISTANCE}, {@link #AL_INVERSE_DISTANCE_CLAMPED INVERSE_DISTANCE_CLAMPED}, {@link AL11#AL_LINEAR_DISTANCE LINEAR_DISTANCE}, {@link AL11#AL_LINEAR_DISTANCE_CLAMPED LINEAR_DISTANCE_CLAMPED}, {@link AL11#AL_EXPONENT_DISTANCE EXPONENT_DISTANCE}, {@link AL11#AL_EXPONENT_DISTANCE_CLAMPED EXPONENT_DISTANCE_CLAMPED}, {@link #AL_NONE NONE}
 */
	static public function alDistanceModel(modelName:Int):Void;
/**
 * Sets the float value of a listener parameter.
 *
 * @param paramName the parameter to modify. One of:<br>{@link #AL_ORIENTATION ORIENTATION}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}
 * @param value     the parameter value
 */
	static public function alListenerf(paramName:Int,value:Float):Void;
/**
 * Returns the boolean value of the specified parameter.
 *
 * @param paramName the parameter to query
 */
	static public function alGetBoolean(paramName:Int):Bool;
/**
 * Integer version of {@link #alListenerf Listenerf}.
 *
 * @param paramName the parameter to modify. One of:<br>{@link #AL_ORIENTATION ORIENTATION}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}
 * @param values    the parameter value
 */
	static public function alListeneri(paramName:Int,values:Int):Void;
/**
 * Sets the source state to AL_INITIAL.
 * 
 * <p>alSourceRewind applied to an AL_INITIAL source is a legal NOP. alSourceRewind applied to a AL_PLAYING source will change its state to AL_STOPPED then
 * AL_INITIAL. The source is exempt from processing: its current state is preserved, with the exception of the sampling offset, which is reset to the
 * beginning. alSourceRewind applied to a AL_PAUSED source will change its state to AL_INITIAL, with the same consequences as on a AL_PLAYING source.
 * alSourceRewind applied to an AL_STOPPED source promotes the source to AL_INITIAL, resetting the sampling offset to the beginning.</p>
 *
 * @param source the source to rewind
 */
	static public function alSourceRewind(source:Int):Void;
/** JNI method for {@link #alSourcePlay SourcePlay}  */
	static public function nalSourcePlay(source:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #alGetSourcei GetSourcei}  */
/** JNI method for {@link #alGetSourcei GetSourcei}  */
	static public function nalGetSourcei(source:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #alSourceUnqueueBuffers SourceUnqueueBuffers}  */
/** JNI method for {@link #alSourceUnqueueBuffers SourceUnqueueBuffers}  */
	static public function nalSourceUnqueueBuffers(sourceName:Int,numEntries:Int,bufferNames:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sourceName:Int,numEntries:Int,bufferNames:haxe.Int64):Void {})
/** Unsafe version of {@link #alGetProcAddress GetProcAddress}  */
/** JNI method for {@link #alGetProcAddress GetProcAddress}  */
	static public function nalGetProcAddress(funcName:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (funcName:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #alGetEnumValue GetEnumValue}  */
/** JNI method for {@link #alGetEnumValue GetEnumValue}  */
	static public function nalGetEnumValue(enumName:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (enumName:haxe.Int64):Int {})
/** JNI method for {@link #alListener3f Listener3f}  */
	static public function nalListener3f(paramName:Int,value1:Float,value2:Float,value3:Float,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #alGenSources GenSources}  */
/** Alternative version of: {@link #alGenSources GenSources}  */
/**
 * Requests a number of source names.
 *
 * @param n        the number of source names to generated
 * @param srcNames the buffer that will receive the source names
 */
	static public function alGenSources(n:Int,srcNames:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (srcNames:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #alGetBooleanv GetBooleanv}  */
/** JNI method for {@link #alGetBooleanv GetBooleanv}  */
	static public function nalGetBooleanv(paramName:Int,dest:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,dest:haxe.Int64):Void {})
/**
 * Queries whether a given capability is currently enabled or not.
 *
 * @param target the capability to query
 */
	static public function alIsEnabled(target:Int):Bool;
/** Unsafe version of {@link #alGetSourcef GetSourcef}  */
/** JNI method for {@link #alGetSourcef GetSourcef}  */
	static public function nalGetSourcef(source:Int,param:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #alDopplerFactor DopplerFactor}  */
	static public function nalDopplerFactor(dopplerFactor:Float,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #alSourceUnqueueBuffers SourceUnqueueBuffers}  */
/** Alternative version of: {@link #alSourceUnqueueBuffers SourceUnqueueBuffers}  */
/**
 * Removes a number of buffer entries that have finished processing, in the order of apperance, from the queue of the specified source.
 * 
 * <p>Once a queue entry for a buffer has been appended to a queue and is pending processing, it should not be changed. Removal of a given queue entry is not
 * possible unless either the source is stopped (in which case then entire queue is considered processed), or if the queue entry has already been processed
 * (AL_PLAYING or AL_PAUSED source). A playing source will enter the AL_STOPPED state if it completes playback of the last buffer in its queue (the same
 * behavior as when a single buffer has been attached to a source and has finished playback).</p>
 *
 * @param sourceName  the target source
 * @param numEntries  the number of buffers to unqueue
 * @param bufferNames the buffer names
 */
	static public function alSourceUnqueueBuffers(sourceName:Int,numEntries:Int,bufferNames:java.nio.ByteBuffer):Void;
	@:overload(function (sourceName:Int):Int {})
	@:overload(function (sourceName:Int,bufferNames:java.nio.IntBuffer):Void {})
/**
 * Returns the 3 dimensional values of a listener parameter.
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_ORIENTATION ORIENTATION}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}
 * @param value1    the first parameter value
 * @param value2    the second parameter value
 * @param value3    the third parameter value
 */
/** Alternative version of: {@link #alGetListener3f GetListener3f}  */
	static public function alGetListener3f(paramName:Int,value1:java.nio.FloatBuffer,value2:java.nio.FloatBuffer,value3:java.nio.FloatBuffer):Void;
	@:overload(function (paramName:Int,value1:java.nio.ByteBuffer,value2:java.nio.ByteBuffer,value3:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #alSourcef Sourcef}  */
	static public function nalSourcef(source:Int,param:Int,value:Float,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #alSourceStopv SourceStopv}  */
/**
 * Pointer version of {@link #alSourceStop SourceStop}.
 *
 * @param n       the number of sources to stop
 * @param sources the sources to stop
 */
	static public function alSourceStopv(n:Int,sources:java.nio.ByteBuffer):Void;
	@:overload(function (sources:java.nio.IntBuffer):Void {})
/** JNI method for {@link #alSourcei Sourcei}  */
	static public function nalSourcei(source:Int,param:Int,value:Int,__functionAddress:haxe.Int64):Void;
/**
 * Sets the 3 dimensional float values of a listener parameter.
 *
 * @param paramName the parameter to modify. One of:<br>{@link #AL_ORIENTATION ORIENTATION}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}
 * @param value1    the first value
 * @param value2    the second value
 * @param value3    the third value
 */
	static public function alListener3f(paramName:Int,value1:Float,value2:Float,value3:Float):Void;
/**
 * Sets the source state to AL_PAUSED.
 * 
 * <p>alSourcePause applied to an AL_INITIAL source is a legal NOP. alSourcePause applied to a AL_PLAYING source will change its state to AL_PAUSED. The
 * source is exempt from processing, its current state is preserved. alSourcePause applied to a AL_PAUSED source is a legal NOP. alSourcePause applied to a
 * AL_STOPPED source is a legal NOP.</p>
 *
 * @param source the source to pause
 */
	static public function alSourcePause(source:Int):Void;
/** CharSequence version of: {@link #alGetEnumValue GetEnumValue}  */
/**
 * Returns the enumeration value of the specified enum.
 *
 * @param enumName the enum name
 */
	static public function alGetEnumValue(enumName:java.nio.ByteBuffer):Int;
	@:overload(function (enumName:java.lang.CharSequence):Int {})
/** JNI method for {@link #alGetInteger GetInteger}  */
	static public function nalGetInteger(paramName:Int,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #alSourceRewind SourceRewind}  */
	static public function nalSourceRewind(source:Int,__functionAddress:haxe.Int64):Void;
/**
 * Obtains error information.
 * 
 * <p>Each detectable error is assigned a numeric code. When an error is detected by AL, a flag is set and the error code is recorded. Further errors, if they
 * occur, do not affect this recorded code. When alGetError is called, the code is returned and the flag is cleared, so that a further error will again
 * record its code. If a call to alGetError returns AL_NO_ERROR then there has been no detectable error since the last call to alGetError (or since the AL
 * was initialized).</p>
 * 
 * <p>Error codes can be mapped to strings. The alGetString function returns a pointer to a constant (literal) string that is identical to the identifier used
 * for the enumeration value, as defined in the specification.</p>
 */
	static public function alGetError():Int;
/** JNI method for {@link #alIsEnabled IsEnabled}  */
	static public function nalIsEnabled(target:Int,__functionAddress:haxe.Int64):Bool;
/** Unsafe version of {@link #alListenerfv Listenerfv}  */
/** JNI method for {@link #alListenerfv Listenerfv}  */
	static public function nalListenerfv(paramName:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,values:haxe.Int64):Void {})
/**
 * Pointer version of {@link #alGetDouble GetDouble}.
 *
 * @param paramName the parameter to query
 * @param dest      a buffer that will receive the parameter values
 */
/** Alternative version of: {@link #alGetDoublev GetDoublev}  */
	static public function alGetDoublev(paramName:Int,dest:java.nio.DoubleBuffer):Void;
	@:overload(function (paramName:Int,dest:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #alGetBoolean GetBoolean}  */
	static public function nalGetBoolean(paramName:Int,__functionAddress:haxe.Int64):Bool;
/**
 * Verifies whether the specified object name is a source name.
 *
 * @param sourceName a value that may be a source name
 */
	static public function alIsSource(sourceName:Int):Bool;
/** Single return value version of: {@link #alGetBufferf GetBufferf}  */
/**
 * Returns the float value of the specified buffer parameter.
 *
 * @param bufferName the buffer to query
 * @param paramName  the parameter to query. One of:<br>{@link #AL_FREQUENCY FREQUENCY}, {@link #AL_BITS BITS}, {@link #AL_CHANNELS CHANNELS}, {@link #AL_SIZE SIZE}
 * @param value      the parameter value
 */
/** Alternative version of: {@link #alGetBufferf GetBufferf}  */
	static public function alGetBufferf(bufferName:Int,paramName:Int,value:java.nio.FloatBuffer):Void;
	@:overload(function (bufferName:Int,paramName:Int):Float {})
	@:overload(function (bufferName:Int,paramName:Int,value:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #alGetBufferi GetBufferi}  */
/**
 * Returns the integer value of the specified buffer parameter.
 *
 * @param bufferName the buffer to query
 * @param paramName  the parameter to query. One of:<br>{@link #AL_FREQUENCY FREQUENCY}, {@link #AL_BITS BITS}, {@link #AL_CHANNELS CHANNELS}, {@link #AL_SIZE SIZE}
 * @param value      the parameter value
 */
/** Alternative version of: {@link #alGetBufferi GetBufferi}  */
	static public function alGetBufferi(bufferName:Int,paramName:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (bufferName:Int,paramName:Int):Int {})
	@:overload(function (bufferName:Int,paramName:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alGetListenerfv GetListenerfv}  */
/** JNI method for {@link #alGetListenerfv GetListenerfv}  */
	static public function nalGetListenerfv(paramName:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,values:haxe.Int64):Void {})
/** Alternative version of: {@link #alSourceRewindv SourceRewindv}  */
/**
 * Pointer version of {@link #alSourceRewind SourceRewind}.
 *
 * @param n       the number of sources to rewind
 * @param sources the sources to rewind
 */
	static public function alSourceRewindv(n:Int,sources:java.nio.ByteBuffer):Void;
	@:overload(function (sources:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #alBufferData BufferData}  */
/** JNI method for {@link #alBufferData BufferData}  */
	static public function nalBufferData(bufferName:Int,format:Int,data:haxe.Int64,size:Int,frequency:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (bufferName:Int,format:Int,data:haxe.Int64,size:Int,frequency:Int):Void {})
/**
 * Returns the float values of the specified source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query. One of:<br>{@link #AL_CONE_INNER_ANGLE CONE_INNER_ANGLE}, {@link #AL_CONE_OUTER_ANGLE CONE_OUTER_ANGLE}, {@link #AL_PITCH PITCH}, {@link #AL_DIRECTION DIRECTION}, {@link #AL_LOOPING LOOPING}, {@link #AL_BUFFER BUFFER}, {@link #AL_SOURCE_STATE SOURCE_STATE}, {@link #AL_CONE_OUTER_GAIN CONE_OUTER_GAIN}, {@link #AL_SOURCE_TYPE SOURCE_TYPE}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}, {@link #AL_REFERENCE_DISTANCE REFERENCE_DISTANCE}, {@link #AL_ROLLOFF_FACTOR ROLLOFF_FACTOR}, {@link #AL_MAX_DISTANCE MAX_DISTANCE}
 * @param values the parameter values
 */
/** Alternative version of: {@link #alGetSourcefv GetSourcefv}  */
	static public function alGetSourcefv(source:Int,param:Int,values:java.nio.FloatBuffer):Void;
	@:overload(function (source:Int,param:Int,values:java.nio.ByteBuffer):Void {})
/**
 * Returns the integer value of the specified parameter.
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_DOPPLER_FACTOR DOPPLER_FACTOR}, {@link #AL_DISTANCE_MODEL DISTANCE_MODEL}, {@link AL11#AL_SPEED_OF_SOUND SPEED_OF_SOUND}
 */
	static public function alGetInteger(paramName:Int):Int;
/** Unsafe version of {@link #alSourcefv Sourcefv}  */
/** JNI method for {@link #alSourcefv Sourcefv}  */
	static public function nalSourcefv(source:Int,param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,values:haxe.Int64):Void {})
/** JNI method for {@link #alIsSource IsSource}  */
	static public function nalIsSource(sourceName:Int,__functionAddress:haxe.Int64):Bool;
/**
 * Pointer version of {@link #alGetInteger GetInteger}.
 *
 * @param paramName the parameter to query
 * @param dest      a buffer that will receive the parameter values
 */
/** Alternative version of: {@link #alGetIntegerv GetIntegerv}  */
	static public function alGetIntegerv(paramName:Int,dest:java.nio.IntBuffer):Void;
	@:overload(function (paramName:Int,dest:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #alIsBuffer IsBuffer}  */
	static public function nalIsBuffer(bufferName:Int,__functionAddress:haxe.Int64):Bool;
/**
 * Sets the 3 dimensional values of a source parameter.
 *
 * @param source the source to modify
 * @param param  the parameter to modify. One of:<br>{@link #AL_CONE_INNER_ANGLE CONE_INNER_ANGLE}, {@link #AL_CONE_OUTER_ANGLE CONE_OUTER_ANGLE}, {@link #AL_PITCH PITCH}, {@link #AL_DIRECTION DIRECTION}, {@link #AL_LOOPING LOOPING}, {@link #AL_BUFFER BUFFER}, {@link #AL_SOURCE_STATE SOURCE_STATE}, {@link #AL_CONE_OUTER_GAIN CONE_OUTER_GAIN}, {@link #AL_SOURCE_TYPE SOURCE_TYPE}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}, {@link #AL_REFERENCE_DISTANCE REFERENCE_DISTANCE}, {@link #AL_ROLLOFF_FACTOR ROLLOFF_FACTOR}, {@link #AL_MAX_DISTANCE MAX_DISTANCE}
 * @param v1     the first parameter value
 * @param v2     the second parameter value
 * @param v3     the third parameter value
 */
	static public function alSource3f(source:Int,param:Int,v1:Float,v2:Float,v3:Float):Void;
/**
 * Integer version of {@link #alSourcef Sourcef}.
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param value  the parameter value
 */
	static public function alSourcei(source:Int,param:Int,value:Int):Void;
/** Unsafe version of {@link #alGetBufferi GetBufferi}  */
/** JNI method for {@link #alGetBufferi GetBufferi}  */
	static public function nalGetBufferi(bufferName:Int,paramName:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (bufferName:Int,paramName:Int,value:haxe.Int64):Void {})
/** ByteBuffer version of: {@link #alBufferData BufferData}  */
/** IntBuffer version of: {@link #alBufferData BufferData}  */
/** ShortBuffer version of: {@link #alBufferData BufferData}  */
/**
 * Sets the sample data of the specified buffer.
 * 
 * <p>The data specified is copied to an internal software, or if possible, hardware buffer. The implementation is free to apply decompression, conversion,
 * resampling, and filtering as needed.</p>
 * 
 * <p>8-bit data is expressed as an unsigned value over the range 0 to 255, 128 being an audio output level of zero.</p>
 * 
 * <p>16-bit data is expressed as a signed value over the range -32768 to 32767, 0 being an audio output level of zero. Byte order for 16-bit values is
 * determined by the native format of the CPU.</p>
 * 
 * <p>Stereo data is expressed in an interleaved format, left channel sample followed by the right channel sample.</p>
 * 
 * <p>Buffers containing audio data with more than one channel will be played without 3D spatialization features – these formats are normally used for
 * background music.</p>
 *
 * @param bufferName the buffer to modify
 * @param format     the data format. One of:<br>{@link #AL_FORMAT_MONO8 FORMAT_MONO8}, {@link #AL_FORMAT_MONO16 FORMAT_MONO16}, {@link #AL_FORMAT_STEREO8 FORMAT_STEREO8}, {@link #AL_FORMAT_STEREO16 FORMAT_STEREO16}
 * @param data       the sample data
 * @param size       the data buffer size, in bytes
 * @param frequency  the data frequency
 */
	static public function alBufferData(bufferName:Int,format:Int,data:java.nio.ByteBuffer,size:Int,frequency:Int):Void;
	@:overload(function (bufferName:Int,format:Int,data:java.nio.ByteBuffer,frequency:Int):Void {})
	@:overload(function (bufferName:Int,format:Int,data:java.nio.IntBuffer,frequency:Int):Void {})
	@:overload(function (bufferName:Int,format:Int,data:java.nio.ShortBuffer,frequency:Int):Void {})
/**
 * Sets the float value of a source parameter.
 *
 * @param source the source to modify
 * @param param  the parameter to modify. One of:<br>{@link #AL_CONE_INNER_ANGLE CONE_INNER_ANGLE}, {@link #AL_CONE_OUTER_ANGLE CONE_OUTER_ANGLE}, {@link #AL_PITCH PITCH}, {@link #AL_DIRECTION DIRECTION}, {@link #AL_LOOPING LOOPING}, {@link #AL_BUFFER BUFFER}, {@link #AL_SOURCE_STATE SOURCE_STATE}, {@link #AL_CONE_OUTER_GAIN CONE_OUTER_GAIN}, {@link #AL_SOURCE_TYPE SOURCE_TYPE}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}, {@link #AL_REFERENCE_DISTANCE REFERENCE_DISTANCE}, {@link #AL_ROLLOFF_FACTOR ROLLOFF_FACTOR}, {@link #AL_MAX_DISTANCE MAX_DISTANCE}
 * @param value  the parameter value
 */
	static public function alSourcef(source:Int,param:Int,value:Float):Void;
/**
 * Sets the doppler effect propagation velocity.
 * 
 * <p>The OpenAL 1.1 Doppler implementation is different than that of OpenAL 1.0, because the older implementation was confusing and not implemented
 * consistently. The new "speed of sound" property makes the 1.1 implementation more intuitive than the old implementation. If your implementation wants to
 * support the AL_DOPPLER_VELOCITY parameter (the alDopplerVelocity call will remain as an entry point so that 1.0 applications can link with a 1.1
 * library), the above formula can be changed to the following:
 * <pre><code style="font-family: monospace">
 * vss = min(vss, (SS * DV)/DF)
 * vls = min(vls, (SS * DV)/DF)
 * 
 * f' = f * (SS * DV - DF*vls) / (SS * DV - DF * vss)</code></pre>
 * OpenAL 1.1 programmers would never use AL_DOPPLER_VELOCITY (which defaults to 1.0).</p>
 *
 * @param dopplerVelocity the doppler velocity
 */
	static public function alDopplerVelocity(dopplerVelocity:Float):Void;
/** Single return value version of: {@link #alGetListenerf GetListenerf}  */
/**
 * Returns the float value of a listener parameter.
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_ORIENTATION ORIENTATION}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}
 * @param value     the parameter value
 */
/** Alternative version of: {@link #alGetListenerf GetListenerf}  */
	static public function alGetListenerf(paramName:Int,value:java.nio.FloatBuffer):Void;
	@:overload(function (paramName:Int):Float {})
	@:overload(function (paramName:Int,value:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #alSourcePause SourcePause}  */
	static public function nalSourcePause(source:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #alGetBufferf GetBufferf}  */
/** JNI method for {@link #alGetBufferf GetBufferf}  */
	static public function nalGetBufferf(bufferName:Int,paramName:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (bufferName:Int,paramName:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #alSourceRewindv SourceRewindv}  */
/** JNI method for {@link #alSourceRewindv SourceRewindv}  */
	static public function nalSourceRewindv(n:Int,sources:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,sources:haxe.Int64):Void {})
/** Unsafe version of {@link #alSourcePausev SourcePausev}  */
/** JNI method for {@link #alSourcePausev SourcePausev}  */
	static public function nalSourcePausev(n:Int,sources:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,sources:haxe.Int64):Void {})
/** Unsafe version of {@link #alGenSources GenSources}  */
/** JNI method for {@link #alGenSources GenSources}  */
	static public function nalGenSources(n:Int,srcNames:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,srcNames:haxe.Int64):Void {})
/** Single return value version of: {@link #alGetListeneri GetListeneri}  */
/**
 * Returns the integer value of a listener parameter.
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_ORIENTATION ORIENTATION}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}
 * @param value     the parameter value
 */
/** Alternative version of: {@link #alGetListeneri GetListeneri}  */
	static public function alGetListeneri(paramName:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (paramName:Int):Int {})
	@:overload(function (paramName:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alIsExtensionPresent IsExtensionPresent}  */
/** JNI method for {@link #alIsExtensionPresent IsExtensionPresent}  */
	static public function nalIsExtensionPresent(extName:haxe.Int64,__functionAddress:haxe.Int64):Bool;
	@:overload(function (extName:haxe.Int64):Bool {})
/**
 * Pointer version of {@link #alListenerf Listenerf}.
 *
 * @param paramName the parameter to modify
 * @param values    the parameter values
 */
/** Alternative version of: {@link #alListenerfv Listenerfv}  */
	static public function alListenerfv(paramName:Int,values:java.nio.FloatBuffer):Void;
	@:overload(function (paramName:Int,values:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alGetSource3f GetSource3f}  */
/** JNI method for {@link #alGetSource3f GetSource3f}  */
	static public function nalGetSource3f(source:Int,param:Int,v1:haxe.Int64,v2:haxe.Int64,v3:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,v1:haxe.Int64,v2:haxe.Int64,v3:haxe.Int64):Void {})
/** Single value version of: {@link #alSourceQueueBuffers SourceQueueBuffers}  */
/** Alternative version of: {@link #alSourceQueueBuffers SourceQueueBuffers}  */
/**
 * Queues up one or multiple buffer names to the specified source.
 * 
 * <p>The buffers will be queued in the sequence in which they appear in the array. This command is legal on a source in any playback state (to allow for
 * streaming, queuing has to be possible on a AL_PLAYING source). All buffers in a queue must have the same format and attributes, with the exception of
 * the NULL buffer (i.e., 0) which can always be queued.</p>
 *
 * @param sourceName  the target source
 * @param numBuffers  the number of buffers to queue
 * @param bufferNames the buffer names
 */
	static public function alSourceQueueBuffers(sourceName:Int,numBuffers:Int,bufferNames:java.nio.ByteBuffer):Void;
	@:overload(function (sourceName:Int,bufferName:Int):Void {})
	@:overload(function (sourceName:Int,bufferNames:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #alGetIntegerv GetIntegerv}  */
/** JNI method for {@link #alGetIntegerv GetIntegerv}  */
	static public function nalGetIntegerv(paramName:Int,dest:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,dest:haxe.Int64):Void {})
/** Unsafe version of {@link #alGetString GetString}  */
/** JNI method for {@link #alGetString GetString}  */
	static public function nalGetString(paramName:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (paramName:Int):haxe.Int64 {})
/** Single value version of: {@link #alDeleteSources DeleteSources}  */
/** Alternative version of: {@link #alDeleteSources DeleteSources}  */
/**
 * Requests the deletion of a number of sources.
 *
 * @param n       the number of sources to delete
 * @param sources the sources to delete
 */
	static public function alDeleteSources(n:Int,sources:java.nio.ByteBuffer):Void;
	@:overload(function (source:Int):Void {})
	@:overload(function (sources:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #alGenBuffers GenBuffers}  */
/** JNI method for {@link #alGenBuffers GenBuffers}  */
	static public function nalGenBuffers(n:Int,bufferNames:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,bufferNames:haxe.Int64):Void {})
/** Unsafe version of {@link #alDeleteSources DeleteSources}  */
/** JNI method for {@link #alDeleteSources DeleteSources}  */
	static public function nalDeleteSources(n:Int,sources:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,sources:haxe.Int64):Void {})
/**
 * Returns float values of a listener parameter.
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_ORIENTATION ORIENTATION}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}
 * @param values    the parameter values
 */
/** Alternative version of: {@link #alGetListenerfv GetListenerfv}  */
	static public function alGetListenerfv(paramName:Int,values:java.nio.FloatBuffer):Void;
	@:overload(function (paramName:Int,values:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #alGetError GetError}  */
	static public function nalGetError(__functionAddress:haxe.Int64):Int;
/**
 * Verifies whether the specified object name is a buffer name.
 *
 * @param bufferName a value that may be a buffer name
 */
	static public function alIsBuffer(bufferName:Int):Bool;
/** Unsafe version of {@link #alGetFloatv GetFloatv}  */
/** JNI method for {@link #alGetFloatv GetFloatv}  */
	static public function nalGetFloatv(paramName:Int,dest:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,dest:haxe.Int64):Void {})
/**
 * Pointer version of {@link #alGetFloat GetFloat}.
 *
 * @param paramName the parameter to query
 * @param dest      a buffer that will receive the parameter values
 */
/** Alternative version of: {@link #alGetFloatv GetFloatv}  */
	static public function alGetFloatv(paramName:Int,dest:java.nio.FloatBuffer):Void;
	@:overload(function (paramName:Int,dest:java.nio.ByteBuffer):Void {})
/**
 * Returns the 3 dimensional values of the specified source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query. One of:<br>{@link #AL_CONE_INNER_ANGLE CONE_INNER_ANGLE}, {@link #AL_CONE_OUTER_ANGLE CONE_OUTER_ANGLE}, {@link #AL_PITCH PITCH}, {@link #AL_DIRECTION DIRECTION}, {@link #AL_LOOPING LOOPING}, {@link #AL_BUFFER BUFFER}, {@link #AL_SOURCE_STATE SOURCE_STATE}, {@link #AL_CONE_OUTER_GAIN CONE_OUTER_GAIN}, {@link #AL_SOURCE_TYPE SOURCE_TYPE}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}, {@link #AL_REFERENCE_DISTANCE REFERENCE_DISTANCE}, {@link #AL_ROLLOFF_FACTOR ROLLOFF_FACTOR}, {@link #AL_MAX_DISTANCE MAX_DISTANCE}
 * @param v1     the first parameter value
 * @param v2     the second parameter value
 * @param v3     the third parameter value
 */
/** Alternative version of: {@link #alGetSource3f GetSource3f}  */
	static public function alGetSource3f(source:Int,param:Int,v1:java.nio.FloatBuffer,v2:java.nio.FloatBuffer,v3:java.nio.FloatBuffer):Void;
	@:overload(function (source:Int,param:Int,v1:java.nio.ByteBuffer,v2:java.nio.ByteBuffer,v3:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #alSourceQueueBuffers SourceQueueBuffers}  */
/** JNI method for {@link #alSourceQueueBuffers SourceQueueBuffers}  */
	static public function nalSourceQueueBuffers(sourceName:Int,numBuffers:Int,bufferNames:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (sourceName:Int,numBuffers:Int,bufferNames:haxe.Int64):Void {})
/** JNI method for {@link #alSource3f Source3f}  */
	static public function nalSource3f(source:Int,param:Int,v1:Float,v2:Float,v3:Float,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #alSourcef Sourcef}.
 *
 * @param source the source to modify
 * @param param  the parameter to modify
 * @param values the parameter values
 */
/** Alternative version of: {@link #alSourcefv Sourcefv}  */
	static public function alSourcefv(source:Int,param:Int,values:java.nio.FloatBuffer):Void;
	@:overload(function (source:Int,param:Int,values:java.nio.ByteBuffer):Void {})
/** CharSequence version of: {@link #alGetProcAddress GetProcAddress}  */
/**
 * Retrieves extension entry points.
 * 
 * <p>Returns NULL if no entry point with the name funcName can be found. Implementations are free to return NULL if an entry point is present, but not
 * applicable for the current context. However the specification does not guarantee this behavior.</p>
 * 
 * <p>Applications can use alGetProcAddress to obtain core API entry points, not just extensions. This is the recommended way to dynamically load and unload
 * OpenAL DLL's as sound drivers.</p>
 *
 * @param funcName the function name
 */
	static public function alGetProcAddress(funcName:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (funcName:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #alGetDouble GetDouble}  */
	static public function nalGetDouble(paramName:Int,__functionAddress:haxe.Int64):Float;
/** JNI method for {@link #alListeneri Listeneri}  */
	static public function nalListeneri(paramName:Int,values:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #alDisable Disable}  */
	static public function nalDisable(target:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #alListenerf Listenerf}  */
	static public function nalListenerf(paramName:Int,value:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #alGetFloat GetFloat}  */
	static public function nalGetFloat(paramName:Int,__functionAddress:haxe.Int64):Float;
/**
 * Enables AL capabilities.
 *
 * @param target the capability to enable
 */
	static public function alEnable(target:Int):Void;
/** Unsafe version of {@link #alSourcePlayv SourcePlayv}  */
/** JNI method for {@link #alSourcePlayv SourcePlayv}  */
	static public function nalSourcePlayv(n:Int,sources:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,sources:haxe.Int64):Void {})
/** Single return value version of: {@link #alGetSourcei GetSourcei}  */
/**
 * Returns the integer value of the specified source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query. One of:<br>{@link #AL_CONE_INNER_ANGLE CONE_INNER_ANGLE}, {@link #AL_CONE_OUTER_ANGLE CONE_OUTER_ANGLE}, {@link #AL_PITCH PITCH}, {@link #AL_DIRECTION DIRECTION}, {@link #AL_LOOPING LOOPING}, {@link #AL_BUFFER BUFFER}, {@link #AL_SOURCE_STATE SOURCE_STATE}, {@link #AL_CONE_OUTER_GAIN CONE_OUTER_GAIN}, {@link #AL_SOURCE_TYPE SOURCE_TYPE}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}, {@link #AL_REFERENCE_DISTANCE REFERENCE_DISTANCE}, {@link #AL_ROLLOFF_FACTOR ROLLOFF_FACTOR}, {@link #AL_MAX_DISTANCE MAX_DISTANCE}
 * @param value  the parameter value
 */
/** Alternative version of: {@link #alGetSourcei GetSourcei}  */
	static public function alGetSourcei(source:Int,param:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (source:Int,param:Int):Int {})
	@:overload(function (source:Int,param:Int,value:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #alGetSourcef GetSourcef}  */
/**
 * Returns the float value of the specified source parameter.
 *
 * @param source the source to query
 * @param param  the parameter to query. One of:<br>{@link #AL_CONE_INNER_ANGLE CONE_INNER_ANGLE}, {@link #AL_CONE_OUTER_ANGLE CONE_OUTER_ANGLE}, {@link #AL_PITCH PITCH}, {@link #AL_DIRECTION DIRECTION}, {@link #AL_LOOPING LOOPING}, {@link #AL_BUFFER BUFFER}, {@link #AL_SOURCE_STATE SOURCE_STATE}, {@link #AL_CONE_OUTER_GAIN CONE_OUTER_GAIN}, {@link #AL_SOURCE_TYPE SOURCE_TYPE}, {@link #AL_POSITION POSITION}, {@link #AL_VELOCITY VELOCITY}, {@link #AL_GAIN GAIN}, {@link #AL_REFERENCE_DISTANCE REFERENCE_DISTANCE}, {@link #AL_ROLLOFF_FACTOR ROLLOFF_FACTOR}, {@link #AL_MAX_DISTANCE MAX_DISTANCE}
 * @param value  the parameter value
 */
/** Alternative version of: {@link #alGetSourcef GetSourcef}  */
	static public function alGetSourcef(source:Int,param:Int,value:java.nio.FloatBuffer):Void;
	@:overload(function (source:Int,param:Int):Float {})
	@:overload(function (source:Int,param:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #alGetBoolean GetBoolean}.
 *
 * @param paramName the parameter to query
 * @param dest      a buffer that will receive the parameter values
 */
	static public function alGetBooleanv(paramName:Int,dest:java.nio.ByteBuffer):Void;
/** Single return value version of: {@link #alGenBuffers GenBuffers}  */
/** Alternative version of: {@link #alGenBuffers GenBuffers}  */
/**
 * Requests a number of buffer names.
 *
 * @param n           the number of buffer names to generate
 * @param bufferNames the buffer that will receive the buffer names
 */
	static public function alGenBuffers(n:Int,bufferNames:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (bufferNames:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #alGetSourcefv GetSourcefv}  */
/** JNI method for {@link #alGetSourcefv GetSourcefv}  */
	static public function nalGetSourcefv(source:Int,param:Int,values:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (source:Int,param:Int,values:haxe.Int64):Void {})
/**
 * Returns the double value of the specified parameter.
 *
 * @param paramName the parameter to query. One of:<br>{@link #AL_DOPPLER_FACTOR DOPPLER_FACTOR}, {@link #AL_DISTANCE_MODEL DISTANCE_MODEL}, {@link AL11#AL_SPEED_OF_SOUND SPEED_OF_SOUND}
 */
	static public function alGetDouble(paramName:Int):Float;
/** Returns the {@link AL10} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.AL10;
/** Unsafe version of {@link #alGetListener3f GetListener3f}  */
/** JNI method for {@link #alGetListener3f GetListener3f}  */
	static public function nalGetListener3f(paramName:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (paramName:Int,value1:haxe.Int64,value2:haxe.Int64,value3:haxe.Int64):Void {})
/**
 * Disables AL capabilities.
 *
 * @param target the capability to disable
 */
	static public function alDisable(target:Int):Void;

}
