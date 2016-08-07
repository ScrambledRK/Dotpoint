package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTDirectChannels")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_direct_channels.txt">SOFT_direct_channels</a> extension.
 * 
 * <p>This extension allows a multi-channel source to play without virtualized output speakers. By default, OpenAL requires buffer channels to be down-mixed
 * to the output channel configuration, possibly using HRTF or other virtualization techniques to give a sense of speakers that may not be physically
 * present. Sometimes audio tracks are authored with their own spatialization effects, where the AL's virtualization methods can cause a notable decrease
 * in audio quality.</p>
 * 
 * <p>This extension provides a mechanism for applications to specify whether audio should be filtered according to the AL's channel virtualization rules for
 * multi-channel buffers.</p>
 */
extern class SOFTDirectChannels 
{
/** Accepted by the {@code paramName} parameter of alSourcei, alSourceiv, alGetSourcei, and alGetSourceiv.  */
	inline static public var AL_DIRECT_CHANNELS_SOFT:Int = 4147;

}
