package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVUniformBufferUnifiedMemory")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/uniform_buffer_unified_memory.txt">NV_uniform_buffer_unified_memory</a> extension.
 * 
 * <p>This extension provides a mechanism to specify uniform buffers
 * using GPU addresses.</p>
 * 
 * <p>Binding uniform buffers is one of the most frequent and expensive
 * operations in many GL applications, due to the cost of chasing 
 * pointers and binding objects described in the overview of 
 * NV_shader_buffer_load. The intent of this extension is to enable a 
 * way for the application to specify uniform buffer state that alleviates
 * the overhead of object binds and driver memory management.</p>
 */
extern class NVUniformBufferUnifiedMemory 
{
/** Accepted by the {@code cap} parameter of DisableClientState, EnableClientState, IsEnabled.  */
	inline static public var GL_UNIFORM_BUFFER_UNIFIED_NV:Int = 37742;
/** Accepted by the {@code pname} parameter of BufferAddressRangeNV and the {@code value} parameter of GetIntegerui64i_vNV.  */
	inline static public var GL_UNIFORM_BUFFER_ADDRESS_NV:Int = 37743;
/** Accepted by the {@code target} parameter of GetIntegeri_vNV.  */
	inline static public var GL_UNIFORM_BUFFER_LENGTH_NV:Int = 37744;

}
