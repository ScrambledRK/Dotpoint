package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTransformFeedbackOverflowQuery")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/transform_feedback_overflow_query.txt">ARB_transform_feedback_overflow_query</a> extension.
 * 
 * <p>This extension adds new query types which can be used to detect overflow of transform feedback buffers. The new query types are also accepted by
 * conditional rendering commands.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBTransformFeedbackOverflowQuery 
{
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB:Int = 33516;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB:Int = 33517;

}
