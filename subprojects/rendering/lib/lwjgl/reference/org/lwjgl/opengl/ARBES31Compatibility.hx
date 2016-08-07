package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBES31Compatibility")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/ES3_1_compatibility.txt">ARB_ES3_1_compatibility</a> extension.
 * 
 * <p>This extension adds support for features of OpenGL ES 3.1 that are missing from OpenGL 4.4. Enabling these features will ease the process of porting
 * applications from OpenGL ES 3.1 to OpenGL. Enabling these features will ease the process of porting applications from OpenGL ES 3.1 to OpenGL.</p>
 * 
 * <p>In particular this adds the following features:
 * <ul>
 * <li>a new {@link #glMemoryBarrierByRegion MemoryBarrierByRegion} API which is potentially more efficient for specific localized memory access patterns.</li>
 * <li>increases the minimum required size of SSBOs to 2^27 (128 MB).</li>
 * <li>support for GLSL ES version 310.</li>
 * <li>a new GLSL built-in function, {@code imageAtomicExchange}, which performs atomic exchanges on {@code r32f} floating point images.</li>
 * <li>a new GLSL built-in fragment shader input, {@code gl_HelperInvocation}, that identifies whether the current fragment shader input is a helper
 * invocation. Fragment shader code can use this variable to skip performing operations that are useless or potentially dangerous for helper
 * invocations.</li>
 * <li>a new GLSL built-in constant for the maximum supported samples: {@code gl_MaxSamples}.</li>
 * <li>a number of new GLSL built-in constants mirroring the API limits for image uniforms: {@code gl_Max * ImageUniforms},
 * {@code gl_MaxCombinedShaderOutputResources}.</li>
 * <li>new GLSL built-in functions which extend {@code mix()} to select between int, uint, and bool components.</li>
 * <li>add the "coherent" qualifier to all memory variables taken by the GLSL built-in {@code atomic*} and {@code imageAtomic*} functions.</li>
 * <li></li>
 * <li></li>
 * </ul>
 * Requires {@link GL44 OpenGL 4.4}, <a href="http://www.opengl.org/registry/specs/ARB/ES2_compatibility.txt">ARB_ES2_compatibility</a>, <a href="http://www.opengl.org/registry/specs/ARB/ES3_compatibility.txt">ARB_ES3_compatibility</a>. Promoted to core in {@link GL45 OpenGL 4.5}.</p>
 */
extern class ARBES31Compatibility 
{
/** Function address.  */
	public var MemoryBarrierByRegion:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Behaves like {@link GL42#glMemoryBarrier MemoryBarrier}, with two differences:
 * 
 * <p>First, it narrows the region under consideration so that only reads/writes of prior fragment shaders that are invoked for a smaller region of the
 * framebuffer will be completed/reflected prior to subsequent reads/write of following fragment shaders. The size of the region is implementation
 * dependent and may be as small as one framebuffer pixel.</p>
 * 
 * <p>Second, it only applies to memory transactions that may be read by or written by a fragment shader.</p>
 * 
 * <p>When barriers is {@link GL42#GL_ALL_BARRIER_BITS ALL_BARRIER_BITS}, shader memory accesses will be synchronized relative to all these barrier bits, but not to other
 * barrier bits specific to {@link GL42#glMemoryBarrier MemoryBarrier}. This implies that reads/writes for scatter/gather-like algorithms may or may not be
 * completed/reflected after a MemoryBarrierByRegion command. However, for uses such as deferred shading, where a linked list of visible
 * surfaces with the head at a framebuffer address may be constructed, and the entirety of the list is only dependent on previous executions at that
 * framebuffer address, MemoryBarrierByRegion may be significantly more efficient than {@link GL42#glMemoryBarrier MemoryBarrier}.</p>
 *
 * @param barriers the barriers to insert. One or more of:<br>{@link GL42#GL_ATOMIC_COUNTER_BARRIER_BIT ATOMIC_COUNTER_BARRIER_BIT}, {@link GL42#GL_FRAMEBUFFER_BARRIER_BIT FRAMEBUFFER_BARRIER_BIT}, {@link GL42#GL_SHADER_IMAGE_ACCESS_BARRIER_BIT SHADER_IMAGE_ACCESS_BARRIER_BIT}, {@link GL43#GL_SHADER_STORAGE_BARRIER_BIT SHADER_STORAGE_BARRIER_BIT}, {@link GL42#GL_TEXTURE_FETCH_BARRIER_BIT TEXTURE_FETCH_BARRIER_BIT}, {@link GL42#GL_UNIFORM_BARRIER_BIT UNIFORM_BARRIER_BIT}
 */
	static public function glMemoryBarrierByRegion(barriers:Int):Void;
/** Returns the {@link ARBES31Compatibility} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBES31Compatibility;

}
