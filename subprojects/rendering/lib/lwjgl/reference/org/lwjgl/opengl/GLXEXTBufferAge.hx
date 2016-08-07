package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXEXTBufferAge")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/glx_buffer_age.txt">GLX_EXT_buffer_age</a> extension.
 * 
 * <p>The aim of this extension is to expose enough information to applications about how the driver manages the set of front and back buffers associated with
 * a given surface to allow applications to re-use the contents of old frames and minimize how much must be redrawn for the next frame.</p>
 * 
 * <p>Requires {@link GLX14 GLX 1.4}.</p>
 */
extern class GLXEXTBufferAge 
{
/** Accepted by {@link GLX13#glXQueryDrawable QueryDrawable}.  */
	inline static public var GLX_BACK_BUFFER_AGE_EXT:Int = 8436;

}
