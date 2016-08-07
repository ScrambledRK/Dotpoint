package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.AMDTransformFeedback4")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/AMD/transform_feedback4.txt">AMD_transform_feedback4</a> extension.
 * 
 * <p>This extension enhances transform feedback in two significant ways. First, it allows multiple transform feedback streams to be captured, each with its
 * own, independent primitve type. Second, it allows any combination of streams to be rasterized.</p>
 * 
 * <p>Requires {@link GL40 OpenGL 4.0} or {@link ARBTransformFeedback3 ARB_transform_feedback3}.</p>
 */
extern class AMDTransformFeedback4 
{
/** Accepted by the {@code pname} argument to Enablei. Disablei and IsEnabledi.  */
	inline static public var GL_STREAM_RASTERIZATION_AMD:Int = 37280;

}
