package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.ALCapabilities")
@:final
/** Defines the capabilities of an OpenAL context.  */
extern class ALCapabilities 
{
/** Indicates whether an OpenAL functionality is available or not.  */
	public var OpenAL10:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var OpenAL11:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_ALAW:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_DOUBLE:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_EXPONENT_DISTANCE:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_FLOAT32:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_IMA4:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_LINEAR_DISTANCE:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_MCFORMATS:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_MULAW:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_MULAW_MCFORMATS:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_OFFSET:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_EXT_source_distance_model:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_LOKI_quadriphonic:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_block_alignment:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_buffer_samples:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_buffer_sub_data:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_deferred_updates:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_direct_channels:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_loop_points:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_MSADPCM:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_source_latency:Bool;
/** Indicates whether an OpenAL functionality is available or not.  */
	public var AL_SOFT_source_length:Bool;

}
