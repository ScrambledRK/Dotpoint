package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.KHRInitializeMemory")
@:final
/** Native bindings to the <strong>khr_initialize_memory</strong> extension.  */
extern class KHRInitializeMemory 
{
/**
 * Accepted as a property name in the {@code properties} parameter of {@link CL10#clCreateContext CreateContext}.
 * 
 * <p>Describes which memory types for the context must be initialized. This is a bit-field, where the following values are currently supported:
 * <ul>
 * <li>{@code CL_CONTEXT_MEMORY_INITIALIZE_LOCAL_KHR} &ndash; Initialize local memory to zeros.</li>
 * <li>{@code CL_CONTEXT_MEMORY_INITIALIZE_PRIVATE_KHR} &ndash; Initialize private memory to zeros.</li>
 * </ul></p>
 */
	inline static public var CL_CONTEXT_MEMORY_INITIALIZE_KHR:Int = 8206;

}
