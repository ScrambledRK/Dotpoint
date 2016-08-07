package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShaderAtomicCounters")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shader_atomic_counters.txt">ARB_shader_atomic_counters</a> extension.
 * 
 * <p>This extension provides a set of atomic counters.</p>
 * 
 * <p>This extension provides GLSL built-in functions to query and increment/decrement these atomic counters.</p>
 * 
 * <p>This enables a shader to write to unique offsets (append to a buffer object) or read from unique offsets (consume from a buffer object).</p>
 * 
 * <p>Opaque handles to atomic counters are declared at global scope and are qualified with the uniform qualifier.</p>
 * 
 * <p>Unlike other user-defined uniforms declared at global scope, they take NO storage from the default partition, they have NO location, and they may NOT be
 * set with the Uniform* commands. Atomic counters may also NOT be grouped into uniform blocks.</p>
 * 
 * <p>Active atomic counters can be discovered by the commands {@link GL31#glGetUniformIndices GetUniformIndices}, {@link GL31#glGetActiveUniformName GetActiveUniformName}, {@link GL20#glGetActiveUniform GetActiveUniform} and
 * {@link GL31#glGetActiveUniformsiv GetActiveUniformsiv}.</p>
 * 
 * <p>Like samplers, the opaque handles of the atomic counters and are ONLY used in some GLSL built-in functions.</p>
 * 
 * <p>The atomic counters pointed to by the opaque handles are bound to buffer binding points and buffer offsets through the layout qualifiers in the shading
 * language, or they are implicitly assigned by the compiler.</p>
 * 
 * <p>Through the OpenGL API, buffer objects may be bound to these binding points with {@link GL30#glBindBufferBase BindBufferBase} or {@link GL30#glBindBufferRange BindBufferRange}.</p>
 * 
 * <p>The contents of the atomic counters are stored in the buffer objects. The contents of atomic counters may be set and queried with buffer object
 * manipulation functions (e.g. BufferData, BufferSubData, MapBuffer or MapBufferRange).</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}. Promoted to core in {@link GL42 OpenGL 4.2}.</p>
 */
extern class ARBShaderAtomicCounters 
{
/** Accepted by the {@code target} parameter of BindBufferBase and BindBufferRange.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER:Int = 37568;
/**
 * Accepted by the {@code pname} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, GetInteger64i_v, GetBooleanv, GetIntegerv,
 * GetInteger64v, GetFloatv, GetDoublev, and GetActiveAtomicCounterBufferiv.
 */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_BINDING:Int = 37569;
/** Accepted by the {@code pname} parameter of GetIntegeri_64v.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_START:Int = 37570;
/** Accepted by the {@code pname} parameter of GetIntegeri_64v.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_SIZE:Int = 37571;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE:Int = 37572;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS:Int = 37573;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES:Int = 37574;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER:Int = 37575;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER:Int = 37576;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER:Int = 37577;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER:Int = 37578;
/** Accepted by the {@code pname} parameter of GetActiveAtomicCounterBufferiv.  */
	inline static public var GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER:Int = 37579;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS:Int = 37580;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS:Int = 37581;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS:Int = 37582;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS:Int = 37583;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS:Int = 37584;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS:Int = 37585;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_ATOMIC_COUNTERS:Int = 37586;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS:Int = 37587;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS:Int = 37588;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_ATOMIC_COUNTERS:Int = 37589;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_ATOMIC_COUNTERS:Int = 37590;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_ATOMIC_COUNTERS:Int = 37591;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE:Int = 37592;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS:Int = 37596;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_ACTIVE_ATOMIC_COUNTER_BUFFERS:Int = 37593;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX:Int = 37594;
/** Returned in {@code params} by GetActiveUniform and GetActiveUniformsiv.  */
	inline static public var GL_UNSIGNED_INT_ATOMIC_COUNTER:Int = 37595;
/** Function address.  */
	public var GetActiveAtomicCounterBufferiv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Obtains information about the set of active atomic counter buffers for a program.
 *
 * @param program     the name of a program object for which the command {@link GL20#glLinkProgram LinkProgram} has been issued in the past
 * @param bufferIndex the index of an active atomic counter buffer
 * @param pname       the parameter to query. One of:<br>{@link #GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE ATOMIC_COUNTER_BUFFER_DATA_SIZE}, {@link #GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS}, {@link #GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES}, {@link #GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER}, {@link #GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER}, {@link #GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER}, {@link #GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER}, {@link #GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER}
 * @param params      a buffer in which to place the returned value
 */
/** Alternative version of: {@link #glGetActiveAtomicCounterBufferiv GetActiveAtomicCounterBufferiv}  */
	static public function glGetActiveAtomicCounterBufferiv(program:Int,bufferIndex:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,bufferIndex:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetActiveAtomicCounterBufferiv GetActiveAtomicCounterBufferiv}  */
	static public function glGetActiveAtomicCounterBufferi(program:Int,bufferIndex:Int,pname:Int):Int;
/** Returns the {@link ARBShaderAtomicCounters} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBShaderAtomicCounters;
/** Unsafe version of {@link #glGetActiveAtomicCounterBufferiv GetActiveAtomicCounterBufferiv}  */
	static public function nglGetActiveAtomicCounterBufferiv(program:Int,bufferIndex:Int,pname:Int,params:haxe.Int64):Void;

}
