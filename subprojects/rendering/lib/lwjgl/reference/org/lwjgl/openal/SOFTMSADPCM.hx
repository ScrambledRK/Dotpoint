package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTMSADPCM")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_MSADPCM.txt">SOFT_MSADPCM</a> extension.
 * 
 * <p>This extension adds support for MSADPCM compressed sample formats.</p>
 */
extern class SOFTMSADPCM 
{
/** Accepted by the {@code format} parameter of alBufferData.  */
	inline static public var AL_FORMAT_MONO_MSADPCM_SOFT:Int = 4866;
/** Accepted by the {@code format} parameter of alBufferData.  */
	inline static public var AL_FORMAT_STEREO_MSADPCM_SOFT:Int = 4867;

}
