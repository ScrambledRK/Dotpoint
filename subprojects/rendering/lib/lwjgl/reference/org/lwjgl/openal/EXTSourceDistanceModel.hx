package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.EXTSourceDistanceModel")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/EXT_source_distance_model.txt">EXT_source_distance_model</a> extension.
 * 
 * <p>This extension allows each source to specify a distance model, instead of being restricted to one distance model for every source in the context. It
 * provides a mechanism for applications to apply different models to each source, without the burden of manually applying the attenuation through the
 * source gain.</p>
 */
extern class EXTSourceDistanceModel 
{
/** Accepted by the {@code target} parameter of alEnable, alDisable, and alIsEnabled.  */
	inline static public var AL_SOURCE_DISTANCE_MODEL:Int = 512;

}
