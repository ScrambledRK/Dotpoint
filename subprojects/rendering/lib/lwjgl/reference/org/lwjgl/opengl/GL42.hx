package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL42")
@:final
/**
 * The core OpenGL 4.2 functionality. OpenGL 4.2 implementations support revision 4.20 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_compression_bptc.txt">ARB_texture_compression_bptc</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/compressed_texture_pixel_storage.txt">ARB_compressed_texture_pixel_storage</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_atomic_counters.txt">ARB_shader_atomic_counters</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_storage.txt">ARB_texture_storage</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/transform_feedback_instanced.txt">ARB_transform_feedback_instanced</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/base_instance.txt">ARB_base_instance</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/shader_image_load_store.txt">ARB_shader_image_load_store</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/conservative_depth.txt">ARB_conservative_depth</a> and <a href="http://www.opengl.org/registry/specs/ARB/shading_language_420pack.txt">ARB_shading_language_420pack</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/internalformat_query.txt">ARB_internalformat_query</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/map_buffer_alignment.txt">ARB_map_buffer_alignment</a></li>
 * </ul></p>
 */
extern class GL42 
{
/** Renamed tokens.  */
	static public var GL_COPY_READ_BUFFER_BINDING:Int;
/** Renamed tokens.  */
	inline static public var GL_COPY_WRITE_BUFFER_BINDING:Int = 36663;
/** Renamed tokens.  */
	static public var GL_TRANSFORM_FEEDBACK_ACTIVE:Int;
/** Renamed tokens.  */
	inline static public var GL_TRANSFORM_FEEDBACK_PAUSED:Int = 36387;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, TexImage3D, CopyTexImage2D, CopyTexImage3D, CompressedTexImage2D, and
 * CompressedTexImage3D and the {@code format} parameter of CompressedTexSubImage2D and CompressedTexSubImage3D.
 */
	inline static public var GL_COMPRESSED_RGBA_BPTC_UNORM:Int = 36492;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, TexImage3D, CopyTexImage2D, CopyTexImage3D, CompressedTexImage2D, and
 * CompressedTexImage3D and the {@code format} parameter of CompressedTexSubImage2D and CompressedTexSubImage3D.
 */
	inline static public var GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM:Int = 36493;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, TexImage3D, CopyTexImage2D, CopyTexImage3D, CompressedTexImage2D, and
 * CompressedTexImage3D and the {@code format} parameter of CompressedTexSubImage2D and CompressedTexSubImage3D.
 */
	inline static public var GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT:Int = 36494;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, TexImage3D, CopyTexImage2D, CopyTexImage3D, CompressedTexImage2D, and
 * CompressedTexImage3D and the {@code format} parameter of CompressedTexSubImage2D and CompressedTexSubImage3D.
 */
	inline static public var GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT:Int = 36495;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNPACK_COMPRESSED_BLOCK_WIDTH:Int = 37159;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNPACK_COMPRESSED_BLOCK_HEIGHT:Int = 37160;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNPACK_COMPRESSED_BLOCK_DEPTH:Int = 37161;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNPACK_COMPRESSED_BLOCK_SIZE:Int = 37162;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_PACK_COMPRESSED_BLOCK_WIDTH:Int = 37163;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_PACK_COMPRESSED_BLOCK_HEIGHT:Int = 37164;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_PACK_COMPRESSED_BLOCK_DEPTH:Int = 37165;
/** Accepted by the {@code pname} parameter of PixelStore[fi], GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_PACK_COMPRESSED_BLOCK_SIZE:Int = 37166;
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
/** Accepted by the {@code value} parameter of GetTexParameter{if}v.  */
	inline static public var GL_TEXTURE_IMMUTABLE_FORMAT:Int = 37167;
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
/** Accepted by the {@code pname} parameter of GetInternalformativ.  */
	inline static public var GL_NUM_SAMPLE_COUNTS:Int = 37760;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetInteger64v, GetFloatv, and GetDoublev.  */
	inline static public var GL_MIN_MAP_BUFFER_ALIGNMENT:Int = 37052;
/** Function address.  */
	public var GetActiveAtomicCounterBufferiv:haxe.Int64;
/** Function address.  */
	public var TexStorage1D:haxe.Int64;
/** Function address.  */
	public var TexStorage2D:haxe.Int64;
/** Function address.  */
	public var TexStorage3D:haxe.Int64;
/** Function address.  */
	public var DrawTransformFeedbackInstanced:haxe.Int64;
/** Function address.  */
	public var DrawTransformFeedbackStreamInstanced:haxe.Int64;
/** Function address.  */
	public var DrawArraysInstancedBaseInstance:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstancedBaseInstance:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstancedBaseVertexBaseInstance:haxe.Int64;
/** Function address.  */
	public var BindImageTexture:haxe.Int64;
/** Function address.  */
	public var MemoryBarrier:haxe.Int64;
/** Function address.  */
	public var GetInternalformativ:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindImageTexture.xhtml">OpenGL SDK Reference</a></p>
 * 
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
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveAtomicCounterBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
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
/** JNI method for {@link #glTexStorage2D TexStorage2D}  */
	static public function nglTexStorage2D(target:Int,levels:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMemoryBarrier.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Defines a barrier ordering memory transactions.
 *
 * @param barriers the barriers to insert (bitwise combination). One or more of:<br>{@link #GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT VERTEX_ATTRIB_ARRAY_BARRIER_BIT}, {@link #GL_ELEMENT_ARRAY_BARRIER_BIT ELEMENT_ARRAY_BARRIER_BIT}, {@link #GL_UNIFORM_BARRIER_BIT UNIFORM_BARRIER_BIT}, {@link #GL_TEXTURE_FETCH_BARRIER_BIT TEXTURE_FETCH_BARRIER_BIT}, {@link #GL_SHADER_IMAGE_ACCESS_BARRIER_BIT SHADER_IMAGE_ACCESS_BARRIER_BIT}, {@link #GL_COMMAND_BARRIER_BIT COMMAND_BARRIER_BIT}, {@link #GL_PIXEL_BUFFER_BARRIER_BIT PIXEL_BUFFER_BARRIER_BIT}, {@link #GL_TEXTURE_UPDATE_BARRIER_BIT TEXTURE_UPDATE_BARRIER_BIT}, {@link #GL_BUFFER_UPDATE_BARRIER_BIT BUFFER_UPDATE_BARRIER_BIT}, {@link #GL_FRAMEBUFFER_BARRIER_BIT FRAMEBUFFER_BARRIER_BIT}, {@link #GL_TRANSFORM_FEEDBACK_BARRIER_BIT TRANSFORM_FEEDBACK_BARRIER_BIT}, {@link #GL_ATOMIC_COUNTER_BARRIER_BIT ATOMIC_COUNTER_BARRIER_BIT}, {@link #GL_ALL_BARRIER_BITS ALL_BARRIER_BITS}, {@link GL43#GL_SHADER_STORAGE_BARRIER_BIT SHADER_STORAGE_BARRIER_BIT}
 */
	static public function glMemoryBarrier(barriers:Int):Void;
/** JNI method for {@link #glBindImageTexture BindImageTexture}  */
	static public function nglBindImageTexture(unit:Int,texture:Int,level:Int,layered:Bool,layer:Int,access:Int,format:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveAtomicCounterBufferiv GetActiveAtomicCounterBufferiv}  */
/** JNI method for {@link #glGetActiveAtomicCounterBufferiv GetActiveAtomicCounterBufferiv}  */
	static public function nglGetActiveAtomicCounterBufferiv(program:Int,bufferIndex:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,bufferIndex:Int,pname:Int,params:haxe.Int64):Void {})
/** Alternative version of: {@link #glGetInternalformativ GetInternalformativ}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetInternalformat.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves information about implementation-dependent support for internal formats.
 *
 * @param target         the usage of the internal format. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL30#GL_RENDERBUFFER RENDERBUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}
 * @param internalformat the internal format about which to retrieve information
 * @param pname          the type of information to query
 * @param bufSize        the maximum number of values that may be written to params by the function
 * @param params         a variable into which to write the retrieved information
 */
	static public function glGetInternalformativ(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,pname:Int,params:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetInternalformativ GetInternalformativ}  */
	static public function glGetInternalformati(target:Int,internalformat:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawTransformFeedbackInstanced.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple instances of primitives using a count derived from a transform feedback object.
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param id        the name of a transform feedback object from which to retrieve a primitive count
 * @param primcount the number of instances of the geometry to render
 */
	static public function glDrawTransformFeedbackInstanced(mode:Int,id:Int,primcount:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawTransformFeedbackStreamInstanced.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple instances of primitives using a count derived from a specifed stream of a transform feedback object.
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param id        the name of a transform feedback object from which to retrieve a primitive count
 * @param stream    the index of the transform feedback stream from which to retrieve a primitive count
 * @param primcount the number of instances of the geometry to render
 */
	static public function glDrawTransformFeedbackStreamInstanced(mode:Int,id:Int,stream:Int,primcount:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexStorage3D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Simultaneously specifies storage for all levels of a three-dimensional, two-dimensional array or cube-map array texture.
 *
 * @param target         the target of the operation. One of:<br>{@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL12#GL_PROXY_TEXTURE_3D PROXY_TEXTURE_3D}, {@link GL30#GL_PROXY_TEXTURE_2D_ARRAY PROXY_TEXTURE_2D_ARRAY}, {@link GL40#GL_PROXY_TEXTURE_CUBE_MAP_ARRAY PROXY_TEXTURE_CUBE_MAP_ARRAY}
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 * @param height         the height of the texture, in texels
 * @param depth          the depth of the texture, in texels
 */
	static public function glTexStorage3D(target:Int,levels:Int,internalformat:Int,width:Int,height:Int,depth:Int):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** Alternative version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** Buffer object offset version of: {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawElementsInstancedBaseVertexBaseInstance.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Renders multiple instances of a set of primitives from array data with a per-element offset.
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count        the number of elements to be rendered
 * @param type         the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices      a pointer to the location where the indices are stored
 * @param primcount    the number of instances of the indexed geometry that should be drawn
 * @param basevertex   a constant that should be added to each element of {@code indices} when choosing elements from the enabled vertex arrays
 * @param baseinstance the base instance for use in fetching instanced vertex attributes
 */
	static public function glDrawElementsInstancedBaseVertexBaseInstance(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexStorage1D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Simultaneously specifies storage for all levels of a one-dimensional texture.
 *
 * @param target         the target of the operation. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_PROXY_TEXTURE_1D PROXY_TEXTURE_1D}
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 */
	static public function glTexStorage1D(target:Int,levels:Int,internalformat:Int,width:Int):Void;
/** JNI method for {@link #glTexStorage3D TexStorage3D}  */
	static public function nglTexStorage3D(target:Int,levels:Int,internalformat:Int,width:Int,height:Int,depth:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glMemoryBarrier MemoryBarrier}  */
	static public function nglMemoryBarrier(barriers:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTexStorage1D TexStorage1D}  */
	static public function nglTexStorage1D(target:Int,levels:Int,internalformat:Int,width:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** JNI method for {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
	static public function nglDrawElementsInstancedBaseInstance(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,baseinstance:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,baseinstance:Int):Void {})
/** Unsafe version of {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
/** JNI method for {@link #glDrawElementsInstancedBaseVertexBaseInstance DrawElementsInstancedBaseVertexBaseInstance}  */
	static public function nglDrawElementsInstancedBaseVertexBaseInstance(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,basevertex:Int,baseinstance:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,basevertex:Int,baseinstance:Int):Void {})
/** JNI method for {@link #glDrawArraysInstancedBaseInstance DrawArraysInstancedBaseInstance}  */
	static public function nglDrawArraysInstancedBaseInstance(mode:Int,first:Int,count:Int,primcount:Int,baseinstance:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetActiveAtomicCounterBufferiv GetActiveAtomicCounterBufferiv}  */
	static public function glGetActiveAtomicCounterBufferi(program:Int,bufferIndex:Int,pname:Int):Int;
/** Unsafe version of {@link #glGetInternalformativ GetInternalformativ}  */
/** JNI method for {@link #glGetInternalformativ GetInternalformativ}  */
	static public function nglGetInternalformativ(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,internalformat:Int,pname:Int,bufSize:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glDrawTransformFeedbackInstanced DrawTransformFeedbackInstanced}  */
	static public function nglDrawTransformFeedbackInstanced(mode:Int,id:Int,primcount:Int,__functionAddress:haxe.Int64):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** Alternative version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/** Buffer object offset version of: {@link #glDrawElementsInstancedBaseInstance DrawElementsInstancedBaseInstance}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawElementsInstancedBaseInstance.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Draws multiple instances of a set of elements with an offset applied to instanced attributes
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count        the number of elements to be rendered
 * @param type         the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices      a pointer to the location where the indices are stored
 * @param primcount    the number of instances of the specified range of indices to be rendered
 * @param baseinstance the base instance for use in fetching instanced vertex attributes
 */
	static public function glDrawElementsInstancedBaseInstance(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,baseinstance:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int,baseinstance:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int,baseinstance:Int):Void {})
/** Returns the {@link GL42} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL42;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexStorage2D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Simultaneously specifies storage for all levels of a two-dimensional or one-dimensional array texture.
 *
 * @param target         the target of the operation. One of:<br>{@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL11#GL_PROXY_TEXTURE_2D PROXY_TEXTURE_2D}, {@link GL30#GL_PROXY_TEXTURE_1D_ARRAY PROXY_TEXTURE_1D_ARRAY}, {@link GL31#GL_PROXY_TEXTURE_RECTANGLE PROXY_TEXTURE_RECTANGLE}, {@link GL13#GL_PROXY_TEXTURE_CUBE_MAP PROXY_TEXTURE_CUBE_MAP}
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 * @param height         the height of the texture, in texels
 */
	static public function glTexStorage2D(target:Int,levels:Int,internalformat:Int,width:Int,height:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawArraysInstancedBaseInstance.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Draws multiple instances of a range of elements with an offset applied to instanced attributes.
 *
 * @param mode         what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param first        the starting index in the enabled arrays
 * @param count        the number of indices to be rendered
 * @param primcount    the number of instances of the specified range of indices to be rendered
 * @param baseinstance the base instance for use in fetching instanced vertex attributes
 */
	static public function glDrawArraysInstancedBaseInstance(mode:Int,first:Int,count:Int,primcount:Int,baseinstance:Int):Void;
/** JNI method for {@link #glDrawTransformFeedbackStreamInstanced DrawTransformFeedbackStreamInstanced}  */
	static public function nglDrawTransformFeedbackStreamInstanced(mode:Int,id:Int,stream:Int,primcount:Int,__functionAddress:haxe.Int64):Void;

}
