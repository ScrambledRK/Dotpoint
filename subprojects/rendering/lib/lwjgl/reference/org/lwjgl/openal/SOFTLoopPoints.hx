package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTLoopPoints")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_loop_points.txt">SOFT_loop_points</a> extension.
 * 
 * <p>This extension allows an application to specify the offsets at which a buffer loops. Unextended OpenAL only allows for a source to loop a whole buffer,
 * or all buffers of a queue, which is not desirable for sounds that may want a lead-in or lead-out along with the looping portion.</p>
 */
extern class SOFTLoopPoints 
{
/** Accepted by the {@code paramName} parameter of alBufferiv and alGetBufferiv.  */
	inline static public var AL_LOOP_POINTS_SOFT:Int = 8213;

}
