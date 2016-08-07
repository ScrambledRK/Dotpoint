package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTShaderImageLoadStore")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/shader_image_load_store.txt">EXT_shader_image_load_store</a> extension.
 * 
 * <p>This extension provides GLSL built-in functions allowing shaders to load from, store to, and perform atomic read-modify-write operations to a single
 * level of a texture object from any shader stage. These built-in functions are named imageLoad(), imageStore(), and imageAtomic*(), respectively, and
 * accept integer texel coordinates to identify the texel accessed. The extension adds the notion of "image units" to the OpenGL API, to which texture
 * levels are bound for access by the GLSL built-in functions. To allow shaders to specify the image unit to access, GLSL provides a new set of data types
 * ("image*") similar to samplers. Each image variable is assigned an integer value to identify an image unit to access, which is specified using
 * Uniform*() APIs in a manner similar to samplers. For implementations supporting the NV_gpu_program5 extensions, assembly language instructions to
 * perform image loads, stores, and atomics are also provided.</p>
 * 
 * <p>This extension also provides the capability to explicitly enable "early" per-fragment tests, where operations like depth and stencil testing are
 * performed prior to fragment shader execution. In unextended OpenGL, fragment shaders never have any side effects and implementations can sometimes
 * perform per-fragment tests and discard some fragments prior to executing the fragment shader. Since this extension allows fragment shaders to write to
 * texture and buffer object memory using the built-in image functions, such optimizations could lead to non-deterministic results. To avoid this,
 * implementations supporting this extension may not perform such optimizations on shaders having such side effects. However, enabling early per-fragment
 * tests guarantees that such tests will be performed prior to fragment shader execution, and ensures that image stores and atomics will not be performed
 * by fragment shader invocations where these per-fragment tests fail.</p>
 * 
 * <p>Finally, this extension provides both a GLSL built-in function and an OpenGL API function allowing applications some control over the ordering of image
 * loads, stores, and atomics relative to other OpenGL pipeline operations accessing the same memory. Because the extension provides the ability to
 * perform random accesses to texture or buffer object memory, such accesses are not easily tracked by the OpenGL driver. To avoid the need for
 * heavy-handed synchronization at the driver level, this extension requires manual synchronization. The MemoryBarrierEXT() OpenGL API function allows
 * applications to specify a bitfield indicating the set of OpenGL API operations to synchronize relative to shader memory access. The memoryBarrier()
 * GLSL built-in function provides a synchronization point within a given shader invocation to ensure that all memory accesses performed prior to the
 * synchronization point complete prior to any started after the synchronization point.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}.</p>
 */
extern class EXTShaderImageLoadStore 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_IMAGE_UNITS_EXT:Int = 36664;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT:Int = 36665;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_IMAGE_SAMPLES_EXT:Int = 36973;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_NAME_EXT:Int = 36666;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_LEVEL_EXT:Int = 36667;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_LAYERED_EXT:Int = 36668;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_LAYER_EXT:Int = 36669;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_ACCESS_EXT:Int = 36670;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_FORMAT_EXT:Int = 36974;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT:Int = 1;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_ELEMENT_ARRAY_BARRIER_BIT_EXT:Int = 2;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_UNIFORM_BARRIER_BIT_EXT:Int = 4;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_TEXTURE_FETCH_BARRIER_BIT_EXT:Int = 8;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT:Int = 32;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_COMMAND_BARRIER_BIT_EXT:Int = 64;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_PIXEL_BUFFER_BARRIER_BIT_EXT:Int = 128;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_TEXTURE_UPDATE_BARRIER_BIT_EXT:Int = 256;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_BUFFER_UPDATE_BARRIER_BIT_EXT:Int = 512;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_FRAMEBUFFER_BARRIER_BIT_EXT:Int = 1024;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT:Int = 2048;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_ATOMIC_COUNTER_BARRIER_BIT_EXT:Int = 4096;
/** Accepted by the {@code barriers} parameter of MemoryBarrierEXT.  */
	inline static public var GL_ALL_BARRIER_BITS_EXT:Int = -1;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_1D_EXT:Int = 36940;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_EXT:Int = 36941;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_3D_EXT:Int = 36942;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_RECT_EXT:Int = 36943;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_CUBE_EXT:Int = 36944;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_BUFFER_EXT:Int = 36945;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_1D_ARRAY_EXT:Int = 36946;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_ARRAY_EXT:Int = 36947;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_CUBE_MAP_ARRAY_EXT:Int = 36948;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_MULTISAMPLE_EXT:Int = 36949;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT:Int = 36950;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_1D_EXT:Int = 36951;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_EXT:Int = 36952;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_3D_EXT:Int = 36953;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_RECT_EXT:Int = 36954;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_CUBE_EXT:Int = 36955;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_BUFFER_EXT:Int = 36956;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_1D_ARRAY_EXT:Int = 36957;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_ARRAY_EXT:Int = 36958;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT:Int = 36959;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_MULTISAMPLE_EXT:Int = 36960;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT:Int = 36961;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_1D_EXT:Int = 36962;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_EXT:Int = 36963;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_3D_EXT:Int = 36964;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT:Int = 36965;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_CUBE_EXT:Int = 36966;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_BUFFER_EXT:Int = 36967;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT:Int = 36968;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT:Int = 36969;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT:Int = 36970;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT:Int = 36971;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT:Int = 36972;
/** Function address.  */
	public var BindImageTextureEXT:haxe.Int64;
/** Function address.  */
	public var MemoryBarrierEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glBindImageTextureEXT BindImageTextureEXT}  */
	static public function nglBindImageTextureEXT(index:Int,texture:Int,level:Int,layered:Bool,layer:Int,access:Int,format:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMemoryBarrierEXT MemoryBarrierEXT}  */
	static public function nglMemoryBarrierEXT(barriers:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param index   
 * @param texture 
 * @param level   
 * @param layered 
 * @param layer   
 * @param access  
 * @param format  
 */
	static public function glBindImageTextureEXT(index:Int,texture:Int,level:Int,layered:Bool,layer:Int,access:Int,format:Int):Void;
/**
 * 
 *
 * @param barriers 
 */
	static public function glMemoryBarrierEXT(barriers:Int):Void;
/** Returns the {@link EXTShaderImageLoadStore} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTShaderImageLoadStore;

}
