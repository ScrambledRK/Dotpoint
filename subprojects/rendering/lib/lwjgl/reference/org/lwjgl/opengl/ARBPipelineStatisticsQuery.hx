package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBPipelineStatisticsQuery")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/pipeline_statistics_query.txt">ARB_pipeline_statistics_query</a> extension.
 * 
 * <p>This extension introduces new query types that allow applications to get statistics information about different parts of the pipeline:
 * <ul>
 * <li>Number of vertices and primitives issued to the GL.</li>
 * <li>Number of times a vertex shader, tessellation evaluation shader, geometry shader, fragment shader, and compute shader was invoked.</li>
 * <li>Number of patches processed by the tessellation control shader stage.</li>
 * <li>Number of primitives emitted by a geometry shader.</li>
 * <li>Number of primitives that entered the primitive clipping stage.</li>
 * <li>Number of primitives that are output by the primitive clipping stage.</li>
 * </ul>
 * Requires {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBPipelineStatisticsQuery 
{
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_VERTICES_SUBMITTED_ARB:Int = 33518;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_PRIMITIVES_SUBMITTED_ARB:Int = 33519;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_VERTEX_SHADER_INVOCATIONS_ARB:Int = 33520;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_TESS_CONTROL_SHADER_PATCHES_ARB:Int = 33521;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB:Int = 33522;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_GEOMETRY_SHADER_INVOCATIONS:Int = 34943;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB:Int = 33523;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_FRAGMENT_SHADER_INVOCATIONS_ARB:Int = 33524;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_COMPUTE_SHADER_INVOCATIONS_ARB:Int = 33525;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_CLIPPING_INPUT_PRIMITIVES_ARB:Int = 33526;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBeginQuery BeginQuery}, {@link GL15#glEndQuery EndQuery}, {@link GL15#glGetQueryiv GetQueryiv},
 * {@link GL40#glBeginQueryIndexed BeginQueryIndexed}, {@link GL40#glEndQueryIndexed EndQueryIndexed} and {@link GL40#glGetQueryIndexediv GetQueryIndexediv}.
 */
	inline static public var GL_CLIPPING_OUTPUT_PRIMITIVES_ARB:Int = 33527;

}
