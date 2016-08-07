package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBMultisample")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/multisample.txt">GLX_ARB_multisample</a> extension.
 * 
 * <p>See {@link ARBMultisample} for details.</p>
 */
extern class GLXARBMultisample 
{
/** Accepted by the {@code attribList} parameter of {@link GLX#glXChooseVisual ChooseVisual}, and by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}.  */
	inline static public var GLX_SAMPLE_BUFFERS_ARB:Int = 100000;
/** Accepted by the {@code attribList} parameter of {@link GLX#glXChooseVisual ChooseVisual}, and by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}.  */
	inline static public var GLX_SAMPLES_ARB:Int = 100001;

}
