package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTSourceLength")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_source_length.txt">SOFT_source_length</a> extension.
 * 
 * <p>This extension adds a method to retrieve the total length of a source's buffer data in bytes, samples, and seconds, which correspond to the byte,
 * sample, and seconds offset extents. By default, OpenAL only provides a way to retrieve a buffer's storage size in bytes, which does not necessarily
 * represent the data size given to alBufferData nor the byte offset extent for the source's {@link AL11#AL_BYTE_OFFSET BYTE_OFFSET} property. The
 * {@link SOFTBufferSamples AL_SOFT_buffer_samples} extension allows an application to query a buffer for its length in bytes, samples, and seconds, but
 * this is only for a single buffer; a buffer queue on a source still requires additional bookkeeping by the application to keep track of the length of
 * each buffer being queued and unqueued on a given source. This extension aims to ease that and provide a simple query.</p>
 */
extern class SOFTSourceLength 
{
/** Accepted by the {@code paramName} parameter of alGetSourcei and alGetSourceiv (these are the same as in AL_SOFT_buffer_samples).  */
	inline static public var AL_BYTE_LENGTH_SOFT:Int = 8201;
/** Accepted by the {@code paramName} parameter of alGetSourcei and alGetSourceiv (these are the same as in AL_SOFT_buffer_samples).  */
	inline static public var AL_SAMPLE_LENGTH_SOFT:Int = 8202;
/** Accepted by the {@code paramName} parameter of alGetSourcef and alGetSourcefv (these are the same as in AL_SOFT_buffer_samples).  */
	inline static public var AL_SEC_LENGTH_SOFT:Int = 8203;

}
