package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBShaderImageLoadStore")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/shader_image_load_store.txt">ARB_shader_image_load_store</a> extension.
 * 
 * <p>This extension provides GLSL built-in functions allowing shaders to load from, store to, and perform atomic read-modify-write operations to a single
 * level of a texture object from any shader stage. These built-in functions are named imageLoad(), imageStore(), and imageAtomic*(), respectively, and
 * accept integer texel coordinates to identify the texel accessed. The extension adds the notion of "image units" to the OpenGL API, to which texture
 * levels are bound for access by the GLSL built-in functions. To allow shaders to specify the image unit to access, GLSL provides a new set of data types
 * ("image*") similar to samplers. Each image variable is assigned an integer value to identify an image unit to access, which is specified using
 * Uniform*() APIs in a manner similar to samplers.</p>
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
 * loads, stores, and atomics relative to other OpenGL pipeline operations accessing the same memory. Because the extension provides the ability to perform
 * random accesses to texture or buffer object memory, such accesses are not easily tracked by the OpenGL driver. To avoid the need for heavy-handed
 * synchronization at the driver level, this extension requires manual synchronization. The MemoryBarrier() OpenGL API function allows applications to
 * specify a bitfield indicating the set of OpenGL API operations to synchronize relative to shader memory access. The memoryBarrier() GLSL built-in
 * function provides a synchronization point within a given shader invocation to ensure that all memory accesses performed prior to the synchronization
 * point complete prior to any started after the synchronization point.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0} and GLSL 1.30. Promoted to core in {@link GL42 OpenGL 4.2}.</p>
 */
extern class ARBShaderImageLoadStore 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_IMAGE_UNITS:Int = 36664;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS:Int = 36665;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_IMAGE_SAMPLES:Int = 36973;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_VERTEX_IMAGE_UNIFORMS:Int = 37066;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS:Int = 37067;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS:Int = 37068;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_GEOMETRY_IMAGE_UNIFORMS:Int = 37069;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_FRAGMENT_IMAGE_UNIFORMS:Int = 37070;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev, and GetInteger64v.  */
	inline static public var GL_MAX_COMBINED_IMAGE_UNIFORMS:Int = 37071;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_NAME:Int = 36666;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_LEVEL:Int = 36667;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_LAYERED:Int = 36668;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_LAYER:Int = 36669;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_ACCESS:Int = 36670;
/** Accepted by the {@code target} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_IMAGE_BINDING_FORMAT:Int = 36974;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT:Int = 1;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_ELEMENT_ARRAY_BARRIER_BIT:Int = 2;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_UNIFORM_BARRIER_BIT:Int = 4;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_TEXTURE_FETCH_BARRIER_BIT:Int = 8;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_SHADER_IMAGE_ACCESS_BARRIER_BIT:Int = 32;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_COMMAND_BARRIER_BIT:Int = 64;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_PIXEL_BUFFER_BARRIER_BIT:Int = 128;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_TEXTURE_UPDATE_BARRIER_BIT:Int = 256;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_BUFFER_UPDATE_BARRIER_BIT:Int = 512;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_FRAMEBUFFER_BARRIER_BIT:Int = 1024;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BARRIER_BIT:Int = 2048;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_ATOMIC_COUNTER_BARRIER_BIT:Int = 4096;
/** Accepted by the {@code barriers} parameter of MemoryBarrier.  */
	inline static public var GL_ALL_BARRIER_BITS:Int = -1;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_1D:Int = 36940;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D:Int = 36941;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_3D:Int = 36942;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_RECT:Int = 36943;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_CUBE:Int = 36944;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_BUFFER:Int = 36945;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_1D_ARRAY:Int = 36946;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_ARRAY:Int = 36947;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_CUBE_MAP_ARRAY:Int = 36948;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_MULTISAMPLE:Int = 36949;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_IMAGE_2D_MULTISAMPLE_ARRAY:Int = 36950;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_1D:Int = 36951;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D:Int = 36952;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_3D:Int = 36953;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_RECT:Int = 36954;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_CUBE:Int = 36955;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_BUFFER:Int = 36956;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_1D_ARRAY:Int = 36957;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_ARRAY:Int = 36958;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_CUBE_MAP_ARRAY:Int = 36959;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_MULTISAMPLE:Int = 36960;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY:Int = 36961;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_1D:Int = 36962;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D:Int = 36963;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_3D:Int = 36964;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_RECT:Int = 36965;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_CUBE:Int = 36966;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_BUFFER:Int = 36967;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_1D_ARRAY:Int = 36968;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_ARRAY:Int = 36969;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY:Int = 36970;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE:Int = 36971;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY:Int = 36972;
/** Accepted by the {@code value} parameter of GetTexParameteriv, GetTexParameterfv, GetTexParameterIiv, and GetTexParameterIuiv.  */
	inline static public var GL_IMAGE_FORMAT_COMPATIBILITY_TYPE:Int = 37063;
/**
 * Returned in the {@code data} parameter of GetTexParameteriv, GetTexParameterfv, GetTexParameterIiv, and GetTexParameterIuiv when {@code value} is
 * IMAGE_FORMAT_COMPATIBILITY_TYPE.
 */
	inline static public var GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE:Int = 37064;
/**
 * Returned in the {@code data} parameter of GetTexParameteriv, GetTexParameterfv, GetTexParameterIiv, and GetTexParameterIuiv when {@code value} is
 * IMAGE_FORMAT_COMPATIBILITY_TYPE.
 */
	inline static public var GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS:Int = 37065;
/** Function address.  */
	public var BindImageTexture:haxe.Int64;
/** Function address.  */
	public var MemoryBarrier:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Binds a level of a texture to an image unit.
 *
 * @param unit    the index of the image unit to which to bind the texture
 * @param texture the name of the texture to bind to the image unit
 * @param level   the level of the texture that is to be bound
 * @param layered whether a layered texture binding is to be established
 * @param layer   if {@code layered} is false, specifies the layer of texture to be bound to the image unit. Ignored otherwise.
 * @param access  a token indicating the type of access that will be performed on the image
 * @param format  the format that the elements of the image will be treated as for the purposes of formatted stores
 */
	static public function glBindImageTexture(unit:Int,texture:Int,level:Int,layered:Bool,layer:Int,access:Int,format:Int):Void;
/**
 * Defines a barrier ordering memory transactions.
 *
 * @param barriers the barriers to insert (bitwise combination). One or more of:<br>{@link #GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT VERTEX_ATTRIB_ARRAY_BARRIER_BIT}, {@link #GL_ELEMENT_ARRAY_BARRIER_BIT ELEMENT_ARRAY_BARRIER_BIT}, {@link #GL_UNIFORM_BARRIER_BIT UNIFORM_BARRIER_BIT}, {@link #GL_TEXTURE_FETCH_BARRIER_BIT TEXTURE_FETCH_BARRIER_BIT}, {@link #GL_SHADER_IMAGE_ACCESS_BARRIER_BIT SHADER_IMAGE_ACCESS_BARRIER_BIT}, {@link #GL_COMMAND_BARRIER_BIT COMMAND_BARRIER_BIT}, {@link #GL_PIXEL_BUFFER_BARRIER_BIT PIXEL_BUFFER_BARRIER_BIT}, {@link #GL_TEXTURE_UPDATE_BARRIER_BIT TEXTURE_UPDATE_BARRIER_BIT}, {@link #GL_BUFFER_UPDATE_BARRIER_BIT BUFFER_UPDATE_BARRIER_BIT}, {@link #GL_FRAMEBUFFER_BARRIER_BIT FRAMEBUFFER_BARRIER_BIT}, {@link #GL_TRANSFORM_FEEDBACK_BARRIER_BIT TRANSFORM_FEEDBACK_BARRIER_BIT}, {@link #GL_ATOMIC_COUNTER_BARRIER_BIT ATOMIC_COUNTER_BARRIER_BIT}, {@link #GL_ALL_BARRIER_BITS ALL_BARRIER_BITS}, {@link GL43#GL_SHADER_STORAGE_BARRIER_BIT SHADER_STORAGE_BARRIER_BIT}
 */
	static public function glMemoryBarrier(barriers:Int):Void;
/** Returns the {@link ARBShaderImageLoadStore} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBShaderImageLoadStore;

}
