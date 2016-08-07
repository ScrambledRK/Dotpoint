package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBComputeShader")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/compute_shader.txt">ARB_compute_shader</a> extension.
 * 
 * <p>Recent graphics hardware has become extremely powerful and a strong desire to harness this power for work (both graphics and non-graphics) that does not
 * fit the traditional graphics pipeline well has emerged. To address this, this extension adds a new single-stage program type known as a compute program.
 * This program may contain one or more compute shaders which may be launched in a manner that is essentially stateless. This allows arbitrary workloads to
 * be sent to the graphics hardware with minimal disturbance to the GL state machine.</p>
 * 
 * <p>In most respects, a compute program is identical to a traditional OpenGL program object, with similar status, uniforms, and other such properties. It
 * has access to many of the same resources as fragment and other shader types, such as textures, image variables, atomic counters, and so on. However, it
 * has no predefined inputs nor any fixed-function outputs. It cannot be part of a pipeline and its visible side effects are through its actions on images
 * and atomic counters.</p>
 * 
 * <p>OpenCL is another solution for using graphics processors as generalized compute devices. This extension addresses a different need. For example, OpenCL
 * is designed to be usable on a wide range of devices ranging from CPUs, GPUs, and DSPs through to FPGAs. While one could implement GL on these types of
 * devices, the target here is clearly GPUs. Another difference is that OpenCL is more full featured and includes features such as multiple devices,
 * asynchronous queues and strict IEEE semantics for floating point operations. This extension follows the semantics of OpenGL - implicitly synchronous,
 * in-order operation with single-device, single queue logical architecture and somewhat more relaxed numerical precision requirements. Although not as
 * feature rich, this extension offers several advantages for applications that can tolerate the omission of these features. Compute shaders are written in
 * GLSL, for example and so code may be shared between compute and other shader types. Objects are created and owned by the same context as the rest of the
 * GL, and therefore no interoperability API is required and objects may be freely used by both compute and graphics simultaneously without acquire-release
 * semantics or object type translation.</p>
 * 
 * <p>Requires {@link GL42 OpenGL 4.2}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBComputeShader 
{
/** Accepted by the {@code type} parameter of CreateShader and returned in the {@code params} parameter by GetShaderiv.  */
	inline static public var GL_COMPUTE_SHADER:Int = 37305;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_UNIFORM_BLOCKS:Int = 37307;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS:Int = 37308;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_IMAGE_UNIFORMS:Int = 37309;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_SHARED_MEMORY_SIZE:Int = 33378;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_UNIFORM_COMPONENTS:Int = 33379;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS:Int = 33380;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_ATOMIC_COUNTERS:Int = 33381;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS:Int = 33382;
/** Accepted by the {@code pname} parameter of GetIntegerv, GetBooleanv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS:Int = 37099;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleani_v, GetFloati_v, GetDoublei_v and GetInteger64i_v.  */
	inline static public var GL_MAX_COMPUTE_WORK_GROUP_COUNT:Int = 37310;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleani_v, GetFloati_v, GetDoublei_v and GetInteger64i_v.  */
	inline static public var GL_MAX_COMPUTE_WORK_GROUP_SIZE:Int = 37311;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_COMPUTE_WORK_GROUP_SIZE:Int = 33383;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER:Int = 37100;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER:Int = 37101;
/** Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, and GetBufferPointerv.  */
	inline static public var GL_DISPATCH_INDIRECT_BUFFER:Int = 37102;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_DISPATCH_INDIRECT_BUFFER_BINDING:Int = 37103;
/** Accepted by the {@code stages} parameter of UseProgramStages.  */
	inline static public var GL_COMPUTE_SHADER_BIT:Int = 32;
/** Function address.  */
	public var DispatchCompute:haxe.Int64;
/** Function address.  */
	public var DispatchComputeIndirect:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Returns the {@link ARBComputeShader} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBComputeShader;
/**
 * Launches one or more compute work groups.
 *
 * @param num_groups_x the number of work groups to be launched in the X dimension
 * @param num_groups_y the number of work groups to be launched in the Y dimension
 * @param num_groups_z the number of work groups to be launched in the Z dimension
 */
	static public function glDispatchCompute(num_groups_x:Int,num_groups_y:Int,num_groups_z:Int):Void;
/**
 * Launches one or more compute work groups using parameters stored in a buffer.
 * 
 * <p>The parameters addressed by indirect are packed a structure, which takes the form (in C):
 * <pre><code style="font-family: monospace">
 * typedef struct {
 * 	uint num_groups_x;
 * 	uint num_groups_y;
 * 	uint num_groups_z;
 * } DispatchIndirectCommand;</code></pre></p>
 * 
 * <p>A call to {@code glDispatchComputeIndirect} is equivalent, assuming no errors are generated, to:
 * <pre><code style="font-family: monospace">
 * cmd = (const DispatchIndirectCommand *)indirect;
 * glDispatchCompute(cmd->num_groups_x, cmd->num_groups_y, cmd->num_groups_z);</code></pre></p>
 *
 * @param indirect the offset into the buffer object currently bound to the {@link #GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER} buffer target at which the dispatch parameters are
 *                 stored.
 */
	static public function glDispatchComputeIndirect(indirect:haxe.Int64):Void;

}
