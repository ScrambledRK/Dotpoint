package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL44")
@:final
/**
 * The core OpenGL 4.4 functionality. OpenGL 4.4 implementations support revision 4.40 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/buffer_storage.txt">ARB_buffer_storage</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/clear_texture.txt">ARB_clear_texture</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/enhanced_layouts.txt">ARB_enhanced_layouts</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/multi_bind.txt">ARB_multi_bind</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/query_buffer_object.txt">ARB_query_buffer_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_mirror_clamp_to_edge.txt">ARB_texture_mirror_clamp_to_edge</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_stencil8.txt">ARB_texture_stencil8</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/vertex_type_10f_11f_11f_rev.txt">ARB_vertex_type_10f_11f_11f_rev</a></li>
 * </ul></p>
 */
extern class GL44 
{
/** Implementation-dependent state which constrains the maximum value of stride parameters to vertex array pointer-setting commands.  */
	inline static public var GL_MAX_VERTEX_ATTRIB_STRIDE:Int = 33509;
/** Accepted in the {@code flags} parameter of {@link #glBufferStorage BufferStorage} and {@link ARBBufferStorage#glNamedBufferStorageEXT NamedBufferStorageEXT}.  */
	inline static public var GL_MAP_PERSISTENT_BIT:Int = 64;
/** Accepted in the {@code flags} parameter of {@link #glBufferStorage BufferStorage} and {@link ARBBufferStorage#glNamedBufferStorageEXT NamedBufferStorageEXT}.  */
	inline static public var GL_MAP_COHERENT_BIT:Int = 128;
/** Accepted in the {@code flags} parameter of {@link #glBufferStorage BufferStorage} and {@link ARBBufferStorage#glNamedBufferStorageEXT NamedBufferStorageEXT}.  */
	inline static public var GL_DYNAMIC_STORAGE_BIT:Int = 256;
/** Accepted in the {@code flags} parameter of {@link #glBufferStorage BufferStorage} and {@link ARBBufferStorage#glNamedBufferStorageEXT NamedBufferStorageEXT}.  */
	inline static public var GL_CLIENT_STORAGE_BIT:Int = 512;
/** Accepted by the {@code pname} parameter of {@code GetBufferParameter&#123;i|i64&#125;v}.  */
	inline static public var GL_BUFFER_IMMUTABLE_STORAGE:Int = 33311;
/** Accepted by the {@code pname} parameter of {@code GetBufferParameter&#123;i|i64&#125;v}.  */
	inline static public var GL_BUFFER_STORAGE_FLAGS:Int = 33312;
/** Accepted by the {@code barriers} parameter of {@link GL42#glMemoryBarrier MemoryBarrier}.  */
	inline static public var GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT:Int = 16384;
/** Accepted by the {@code pname} parameter for {@link GL42#glGetInternalformati GetInternalformati} and {@link GL43#glGetInternalformati64 GetInternalformati64}.  */
	inline static public var GL_CLEAR_TEXTURE:Int = 37733;
/** Accepted in the {@code props} array of {@link GL43#glGetProgramResourceiv GetProgramResourceiv}.  */
	inline static public var GL_LOCATION_COMPONENT:Int = 37706;
/** Accepted in the {@code props} array of {@link GL43#glGetProgramResourceiv GetProgramResourceiv}.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_INDEX:Int = 37707;
/** Accepted in the {@code props} array of {@link GL43#glGetProgramResourceiv GetProgramResourceiv}.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE:Int = 37708;
/** Accepted by the {@code pname} parameter of {@link GL15#glGetQueryObjecti GetQueryObjecti}, {@link GL15#glGetQueryObjectui GetQueryObjectui}, {@link GL33#glGetQueryObjecti64 GetQueryObjecti64} and {@link GL33#glGetQueryObjectui64 GetQueryObjectui64}.  */
	inline static public var GL_QUERY_RESULT_NO_WAIT:Int = 37268;
/**
 * Accepted by the {@code target} parameter of {@link GL15#glBindBuffer BindBuffer}, {@link GL15#glBufferData BufferData}, {@link GL15#glBufferSubData BufferSubData},
 * {@link GL15#glMapBuffer MapBuffer}, {@link GL15#glUnmapBuffer UnmapBuffer}, {@link GL30#glMapBufferRange MapBufferRange}, {@link GL15#glGetBufferSubData GetBufferSubData},
 * {@link GL15#glGetBufferParameteri GetBufferParameteri}, {@link GL32#glGetBufferParameteri64 GetBufferParameteri64}, {@link GL15#glGetBufferPointer GetBufferPointer},
 * {@link GL43#glClearBufferSubData ClearBufferSubData}, and the {@code readtarget} and {@code writetarget} parameters of {@link GL31#glCopyBufferSubData CopyBufferSubData}.
 */
	inline static public var GL_QUERY_BUFFER:Int = 37266;
/**
 * Accepted by the {@code pname} parameter of {@link GL11#glGetBoolean GetBoolean}, {@link GL11#glGetInteger GetInteger}, {@link GL11#glGetFloat GetFloat},
 * and {@link GL11#glGetDouble GetDouble}.
 */
	inline static public var GL_QUERY_BUFFER_BINDING:Int = 37267;
/** Accepted in the {@code barriers} bitfield in {@link GL42#glMemoryBarrier MemoryBarrier}.  */
	inline static public var GL_QUERY_BUFFER_BARRIER_BIT:Int = 32768;
/**
 * Accepted by the {@code param} parameter of TexParameter{if}, SamplerParameter{if} and SamplerParameter{if}v, and by the {@code params} parameter of
 * TexParameter{if}v, TexParameterI{i ui}v and SamplerParameterI{i ui}v when their {@code pname} parameter is {@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, or
 * {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R},
 */
	inline static public var GL_MIRROR_CLAMP_TO_EDGE:Int = 34627;
/** Function address.  */
	public var BufferStorage:haxe.Int64;
/** Function address.  */
	public var ClearTexSubImage:haxe.Int64;
/** Function address.  */
	public var ClearTexImage:haxe.Int64;
/** Function address.  */
	public var BindBuffersBase:haxe.Int64;
/** Function address.  */
	public var BindBuffersRange:haxe.Int64;
/** Function address.  */
	public var BindTextures:haxe.Int64;
/** Function address.  */
	public var BindSamplers:haxe.Int64;
/** Function address.  */
	public var BindImageTextures:haxe.Int64;
/** Function address.  */
	public var BindVertexBuffers:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glBufferStorage BufferStorage}  */
/** JNI method for {@link #glBufferStorage BufferStorage}  */
	static public function nglBufferStorage(target:Int,size:haxe.Int64,data:haxe.Int64,flags:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,size:haxe.Int64,data:haxe.Int64,flags:Int):Void {})
/** Alternative version of: {@link #glBindTextures BindTextures}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindTextures.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds {@code count} existing texture objects to texture image units numbered {@code first} through {@code first+count-1}. If {@code textures} is not
 * {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name of an existing texture object. When an entry in
 * {@code textures} is the name of an existing texture object, that object is bound to corresponding texture unit for the target specified when the texture
 * object was created. When an entry in {@code textures} is zero, each of the targets enumerated at the beginning of this section is reset to its default
 * texture for the corresponding texture image unit. If {@code textures} is {@code NULL}, each target of each affected texture image unit from {@code first}
 * through {@code first+count-1} is reset to its default texture.
 * 
 * <p>{@code BindTextures} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	uint texture;
 * 	if ( textures == NULL ) {
 * 		texture = 0;
 * 	} else {
 * 		texture = textures[i];
 * 	}
 * 	ActiveTexture(TEXTURE0 + first + i);
 * 	if ( texture != 0 ) {
 * 		enum target; // target of texture object textures[i]
 * 		BindTexture(target, textures[i]);
 * 	} else {
 * 		for ( target in all supported targets ) {
 * 			BindTexture(target, 0);
 * 		}
 * 	}
 * }</code></pre>
 * except that the active texture selector retains its original value upon completion of the command, and that textures will not be created if they do not
 * exist.</p>
 * 
 * <p>The values specified in {@code textures} will be checked separately for each texture image unit. When a value for a specific texture image unit is
 * invalid, the state for that texture image unit will be unchanged and an error will be generated. However, state for other texture image units will still
 * be changed if their corresponding values are valid.</p>
 *
 * @param first    the first texture objects
 * @param count    the number of texture objects
 * @param textures an array of zeros or names of existing texture objects
 */
	static public function glBindTextures(first:Int,count:Int,textures:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,textures:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glBindSamplers BindSamplers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindSamplers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds {@code count} existing sampler objects to texture image units numbered {@code first} through {@code first+count-1}. If {@code samplers} is not
 * {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name of an existing sampler object. If {@code samplers} is {@code NULL},
 * each affected texture image unit from {@code first} through {@code first+count-1} will be reset to have no bound sampler object.
 * 
 * <p>{@code BindSamplers} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( samplers == NULL ) {
 * 		glBindSampler(first + i, 0);
 * 	} else {
 * 		glBindSampler(first + i, samplers[i]);
 * 	}
 * }</code></pre>
 * The values specified in {@code samplers} will be checked separately for each texture image unit. When a value for a specific texture image unit is
 * invalid, the state for that texture image unit will be unchanged and an error will be generated. However, state for other texture image units will still
 * be changed if their corresponding values are valid.</p>
 *
 * @param first    the first sampler object
 * @param count    the number of sampler objects
 * @param samplers an array of zeros or names of existing sampler objects
 */
	static public function glBindSamplers(first:Int,count:Int,samplers:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,samplers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glBindTextures BindTextures}  */
/** JNI method for {@link #glBindTextures BindTextures}  */
	static public function nglBindTextures(first:Int,count:Int,textures:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (first:Int,count:Int,textures:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearTexImage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Is equivalent to calling {@link #glClearTexSubImage ClearTexSubImage} with {@code xoffset}, {@code yoffset}, and {@code zoffset} equal to -{@code b} and {@code width},
 * {@code height}, and {@code depth} equal to the dimensions of the texture image plus {@code 2xb} (or zero and one for dimensions the texture doesn't
 * have).
 *
 * @param texture the texture to clear. It is an error if {@code texture} is zero or not the name of a texture object, if {@code texture} is a buffer texture, or if
 *                the texture image has a compressed internal format
 * @param level   the texture level to clear
 * @param format  the format of the source data. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the type of the source data. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data    an array of between one and four components of texel data that will be used as the source for the constant fill value. If {@code data} is {@code NULL},
 *                then the pointer is ignored and the sub-range of the texture image is filled with zeros.
 */
/** DoubleBuffer version of: {@link #glClearTexImage ClearTexImage}  */
/** FloatBuffer version of: {@link #glClearTexImage ClearTexImage}  */
/** IntBuffer version of: {@link #glClearTexImage ClearTexImage}  */
/** ShortBuffer version of: {@link #glClearTexImage ClearTexImage}  */
	static public function glClearTexImage(texture:Int,level:Int,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glClearTexImage ClearTexImage}  */
/** JNI method for {@link #glClearTexImage ClearTexImage}  */
	static public function nglClearTexImage(texture:Int,level:Int,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glBindBuffersRange BindBuffersRange}  */
/** JNI method for {@link #glBindBuffersRange BindBuffersRange}  */
	static public function nglBindBuffersRange(target:Int,first:Int,count:Int,buffers:haxe.Int64,offsets:haxe.Int64,sizes:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,first:Int,count:Int,buffers:haxe.Int64,offsets:haxe.Int64,sizes:haxe.Int64):Void {})
/** Unsafe version of {@link #glBindSamplers BindSamplers}  */
/** JNI method for {@link #glBindSamplers BindSamplers}  */
	static public function nglBindSamplers(first:Int,count:Int,samplers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (first:Int,count:Int,samplers:haxe.Int64):Void {})
/** Alternative version of: {@link #glBindBuffersBase BindBuffersBase}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindBuffersBase.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds {@code count} existing buffer objects to bindings numbered {@code first} through {@code first+count-1} in the array of buffer binding points
 * corresponding to {@code target}. If {@code buffers} is not {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name
 * of an existing buffer object. It is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( buffers == NULL ) {
 * 		glBindBufferBase(target, first + i, 0);
 * 	} else {
 * 		glBindBufferBase(target, first + i, buffers[i]);
 * 	}
 * }</code></pre>
 * except that the single general buffer binding corresponding to {@code target} is unmodified, and that buffers will not be created if they do not exist.
 *
 * @param target  the buffer object target. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param first   the first binding
 * @param count   the number of bindings
 * @param buffers an array of zeros or names of existing buffers objects
 */
	static public function glBindBuffersBase(target:Int,first:Int,count:Int,buffers:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,first:Int,buffers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glBindBuffersBase BindBuffersBase}  */
/** JNI method for {@link #glBindBuffersBase BindBuffersBase}  */
	static public function nglBindBuffersBase(target:Int,first:Int,count:Int,buffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,first:Int,count:Int,buffers:haxe.Int64):Void {})
/** Unsafe version of {@link #glBindImageTextures BindImageTextures}  */
/** JNI method for {@link #glBindImageTextures BindImageTextures}  */
	static public function nglBindImageTextures(first:Int,count:Int,textures:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (first:Int,count:Int,textures:haxe.Int64):Void {})
/** Alternative version of: {@link #glBindVertexBuffers BindVertexBuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindVertexBuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds {@code count} existing buffer objects to vertex buffer binding points numbered {@code first} through {@code first+count-1}. If {@code buffers} is
 * not {@code NULL}, it specifies an array of {@code count} values, each of which must be zero or the name of an existing buffer object. {@code offsets} and
 * {@code strides} specify arrays of {@code count} values indicating the offset of the first element and stride between elements in each buffer,
 * respectively. If {@code buffers} is {@code NULL}, each affected vertex buffer binding point from {@code first} through {@code first+count-1} will be reset to
 * have no bound buffer object. In this case, the offsets and strides associated with the binding points are set to default values, ignoring
 * {@code offsets} and {@code strides}.
 * 
 * <p>{@code BindVertexBuffers} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( buffers == NULL ) {
 * 		glBindVertexBuffer(first + i, 0, 0, 16);
 * 	} else {
 * 		glBindVertexBuffer(first + i, buffers[i], offsets[i], strides[i]);
 * 	}
 * }</code></pre>
 * except that buffers will not be created if they do not exist.</p>
 * 
 * <p>The values specified in {@code buffers}, {@code offsets}, and {@code strides} will be checked separately for each vertex buffer binding point. When a
 * value for a specific binding point is invalid, the state for that binding point will be unchanged and an error will be generated. However, state for
 * other binding points will still be changed if their corresponding values are valid.</p>
 *
 * @param first   the first vertex buffer binding point
 * @param count   the number of vertex buffer binding points
 * @param buffers an array of zeros or names of existing buffers objects
 * @param offsets an array of offses
 * @param strides an array of stride values
 */
	static public function glBindVertexBuffers(first:Int,count:Int,buffers:java.nio.ByteBuffer,offsets:java.nio.ByteBuffer,strides:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,buffers:java.nio.IntBuffer,offsets:org.lwjgl.PointerBuffer,strides:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glBufferStorage BufferStorage}  */
/** ByteBuffer version of: {@link #glBufferStorage BufferStorage}  */
/** DoubleBuffer version of: {@link #glBufferStorage BufferStorage}  */
/** FloatBuffer version of: {@link #glBufferStorage BufferStorage}  */
/** IntBuffer version of: {@link #glBufferStorage BufferStorage}  */
/** ShortBuffer version of: {@link #glBufferStorage BufferStorage}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBufferStorage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Creates the data store of a buffer object.
 * 
 * <p>The data store of the buffer object bound to {@code target} is allocated as a result of a call to this function and cannot be de-allocated until the
 * buffer is deleted with a call to {@link GL15#glDeleteBuffers DeleteBuffers}. Such a store may not be re-allocated through further calls to {@code BufferStorage}
 * or {@link GL15#glBufferData BufferData}.</p>
 * 
 * <p>{@code BufferStorage} deletes any existing data store. If any portion of the buffer object is mapped in the current context or any context current to
 * another thread, it is as though {@link GL15#glUnmapBuffer UnmapBuffer} is executed in each such context prior to deleting the existing data store.</p>
 *
 * @param target the buffer object target. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param size   the size of the data store in basic machine units
 * @param data   the address in client memory of the data that should be used to initialize the buffer's data store. If {@code data} is {@code NULL}, the data store of the
 *               buffer is created, but contains undefined data. Otherwise, {@code data} should point to an array of at least {@code size} basic machine units.
 * @param flags  the bitwise {@code OR} of flags describing the intended usage of the buffer object's data store by the application. Valid flags and their meanings
 *               are as follows:
 *               <ul>
 *               <li>{@link #GL_DYNAMIC_STORAGE_BIT DYNAMIC_STORAGE_BIT} &ndash; The contents of the data store may be updated after creation through calls to
 *               {@link GL15#glBufferSubData BufferSubData}. If this bit is not set, the buffer content may not be directly updated by the client. The {@code data}
 *               argument may be used to specify the initial content of the buffer's data store regardless of the presence of the {@link #GL_DYNAMIC_STORAGE_BIT DYNAMIC_STORAGE_BIT}.
 *               Regardless of the presence of this bit, buffers may always be updated with server-side calls such as {@link GL31#glCopyBufferSubData CopyBufferSubData} and
 *               {@link GL43#glClearBufferSubData ClearBufferSubData}.</li>
 *               <li>{@link GL30#GL_MAP_READ_BIT MAP_READ_BIT} &ndash; The buffer's data store may be mapped by the client for read access and a pointer in the client's address space
 *               obtained that may be read from.</li>
 *               <li>{@link GL30#GL_MAP_WRITE_BIT MAP_WRITE_BIT} &ndash; The buffer's data store may be mapped by the client for write access and a pointer in the client's address
 *               space obtained that may be written to.</li>
 *               <li>{@link #GL_MAP_PERSISTENT_BIT MAP_PERSISTENT_BIT} &ndash; The client may request that the server read from or write to the buffer while it is mapped. The client's
 *               pointer to the data store remains valid so long as the data store is mapped, even during execution of drawing or dispatch commands.</li>
 *               <li>{@link #GL_MAP_COHERENT_BIT MAP_COHERENT_BIT} &ndash; Shared access to buffers that are simultaneously mapped for client access and are used by the server will be
 *               coherent, so long as that mapping is performed using MapBufferRange. That is, data written to the store by either the client or server will be
 *               immediately visible to the other with no further action taken by the application. In particular:
 *               <ul>
 *               <li>If {@code MAP_COHERENT_BIT} is not set and the client performs a write followed by a call to the {@link GL42#glMemoryBarrier MemoryBarrier} command with
 *               the {@link #GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT CLIENT_MAPPED_BUFFER_BARRIER_BIT} set, then in subsequent commands the server will see the writes.</li>
 *               <li>If {@code MAP_COHERENT_BIT} is set and the client performs a write, then in subsequent commands the server will see the writes.</li>
 *               <li>If {@code MAP_COHERENT_BIT} is not set and the server performs a write, the application must call {@link GL42#glMemoryBarrier MemoryBarrier} with the
 *               {@link #GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT CLIENT_MAPPED_BUFFER_BARRIER_BIT} set and then call {@link GL32#glFenceSync FenceSync} with {@link GL32#GL_SYNC_GPU_COMMANDS_COMPLETE SYNC_GPU_COMMANDS_COMPLETE} (or
 *               {@link GL11#glFinish Finish}). Then the CPU will see the writes after the sync is complete.</li>
 *               <li>If {@code MAP_COHERENT_BIT} is set and the server does a write, the app must call {@link GL32#glFenceSync FenceSync} with
 *               {@link GL32#GL_SYNC_GPU_COMMANDS_COMPLETE SYNC_GPU_COMMANDS_COMPLETE} (or {@link GL11#glFinish Finish}). Then the CPU will see the writes after the sync is complete.</li>
 *               </ul></li>
 *               <li>{@link #GL_CLIENT_STORAGE_BIT CLIENT_STORAGE_BIT} &ndash; When all other criteria for the buffer storage allocation are met, this bit may be used by an
 *               implementation to determine whether to use storage that is local to the server or to the client to serve as the backing store for the buffer.</li>
 *               </ul>
 *               If {@code flags} contains {@link #GL_MAP_PERSISTENT_BIT MAP_PERSISTENT_BIT}, it must also contain at least one of {@link GL30#GL_MAP_READ_BIT MAP_READ_BIT} or {@link GL30#GL_MAP_WRITE_BIT MAP_WRITE_BIT}.
 *               
 *               <p>It is an error to specify {@link #GL_MAP_COHERENT_BIT MAP_COHERENT_BIT} without also specifying {@link #GL_MAP_PERSISTENT_BIT MAP_PERSISTENT_BIT}.</p>
 */
	static public function glBufferStorage(target:Int,size:haxe.Int64,data:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (target:Int,size:haxe.Int64,flags:Int):Void {})
	@:overload(function (target:Int,data:java.nio.ByteBuffer,flags:Int):Void {})
	@:overload(function (target:Int,data:java.nio.DoubleBuffer,flags:Int):Void {})
	@:overload(function (target:Int,data:java.nio.FloatBuffer,flags:Int):Void {})
	@:overload(function (target:Int,data:java.nio.IntBuffer,flags:Int):Void {})
	@:overload(function (target:Int,data:java.nio.ShortBuffer,flags:Int):Void {})
/** Alternative version of: {@link #glBindBuffersRange BindBuffersRange}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindBuffersRange.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds {@code count} existing buffer objects to bindings numbered {@code first} through {@code first+count-1} in the array of buffer binding points
 * corresponding to {@code target}. {@code offsets} and {@code sizes} specify arrays of {@code count} values indicating the range of each buffer to bind.
 * If {@code buffers} is {@code NULL}, all bindings from {@code first} through {@code first+count-1} are reset to their unbound (zero) state. In this
 * case, the offsets and sizes associated with the binding points are set to default values, ignoring {@code offsets} and {@code sizes}. It is equivalent
 * to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( buffers == NULL ) {
 * 		glBindBufferRange(target, first + i, 0, 0, 0);
 * 	} else {
 * 		glBindBufferRange(target, first + i, buffers[i], offsets[i], sizes[i]);
 * 	}
 * }</code></pre>
 * except that the single general buffer binding corresponding to {@code target} is unmodified, and that buffers will not be created if they do not exist.
 * 
 * <p>The values specified in {@code buffers}, {@code offsets}, and {@code sizes} will be checked separately for each binding point. When values for a
 * specific binding point are invalid, the state for that binding point will be unchanged and an error will be generated. However, state for other binding
 * points will still be changed if their corresponding values are valid.</p>
 *
 * @param target  the buffer object target. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param first   the first binding
 * @param count   the number of bindings
 * @param buffers an array of names of existing buffers objects
 * @param offsets an array of offsets
 * @param sizes   an array of sizes
 */
	static public function glBindBuffersRange(target:Int,first:Int,count:Int,buffers:java.nio.ByteBuffer,offsets:java.nio.ByteBuffer,sizes:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,first:Int,buffers:java.nio.IntBuffer,offsets:org.lwjgl.PointerBuffer,sizes:org.lwjgl.PointerBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearTexSubImage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Fills all or part of a texture image with a constant value.
 * 
 * <p>Arguments {@code xoffset}, {@code yoffset}, and {@code zoffset} specify the lower left texel coordinates of a {@code width}-wide by {@code height}-high
 * by {@code depth}-deep rectangular subregion of the texel array and are interpreted as they are in {@link GL12#glTexSubImage3D TexSubImage3D}.</p>
 * 
 * <p>For 1D array textures, {@code yoffset} is interpreted as the first layer to be cleared and {@code height} is the number of layers to clear. For 2D array
 * textures, {@code zoffset} is interpreted as the first layer to be cleared and {@code depth} is the number of layers to clear. Cube map textures are
 * treated as an array of six slices in the z-dimension, where the value of {@code zoffset} is interpreted as specifying the cube map face for the
 * corresponding {@code layer} and {@code depth} is the number of faces to clear. For cube map array textures, {@code zoffset} is the first layer-face to
 * clear, and {@code depth} is the number of layer-faces to clear. Each layer-face is translated into an array layer and a cube map face.</p>
 * 
 * <p>Negative values of {@code xoffset}, {@code yoffset}, and {@code zoffset} correspond to the coordinates of border texels.</p>
 *
 * @param texture the texture to clear. It is an error if {@code texture} is zero or not the name of a texture object, if {@code texture} is a buffer texture, or if
 *                the texture image has a compressed internal format
 * @param level   the texture level to clear
 * @param xoffset the x coordinate of the texel subregion
 * @param yoffset the y coordinate of the texel subregion
 * @param zoffset the z coordinate of the texel subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param depth   the subregion depth
 * @param format  the format of the source data. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the type of the source data. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data    an array of between one and four components of texel data that will be used as the source for the constant fill value. If {@code data} is {@code NULL},
 *                then the pointer is ignored and the sub-range of the texture image is filled with zeros.
 */
/** DoubleBuffer version of: {@link #glClearTexSubImage ClearTexSubImage}  */
/** FloatBuffer version of: {@link #glClearTexSubImage ClearTexSubImage}  */
/** IntBuffer version of: {@link #glClearTexSubImage ClearTexSubImage}  */
/** ShortBuffer version of: {@link #glClearTexSubImage ClearTexSubImage}  */
	static public function glClearTexSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/** Returns the {@link GL44} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL44;
/** Alternative version of: {@link #glBindImageTextures BindImageTextures}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindImageTextures.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds {@code count} existing texture objects to image units numbered {@code first} through {@code first+count-1}. If {@code textures} is not {@code NULL}, it
 * specifies an array of {@code count} values, each of which must be zero or the name of an existing texture object. If {@code textures} is {@code NULL}, each
 * affected image unit from {@code first} through {@code first+count-1} will be reset to have no bound texture object.
 * 
 * <p>When binding a non-zero texture object to an image unit, the image unit {@code level}, {@code layered}, {@code layer}, and {@code access} parameters are
 * set to zero, {@link GL11#GL_TRUE TRUE}, zero, and {@link GL15#GL_READ_WRITE READ_WRITE}, respectively. The image unit {@code format} parameter is taken from the internal
 * format of the texture image at level zero of the texture object identified by {@code textures}. For cube map textures, the internal format of the
 * {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_X TEXTURE_CUBE_MAP_POSITIVE_X} image of level zero is used. For multisample, multisample array, buffer, and rectangle textures, the internal
 * format of the single texture level is used.</p>
 * 
 * <p>When unbinding a texture object from an image unit, the image unit parameters {@code level}, {@code layered}, {@code layer}, and {@code format} will be
 * reset to their default values of zero, {@link GL11#GL_FALSE FALSE}, 0, and {@link GL30#GL_R8 R8}, respectively.</p>
 * 
 * <p>{@code BindImageTextures} is equivalent to:
 * <pre><code style="font-family: monospace">
 * for ( i = 0; i < count; i++ ) {
 * 	if ( textures == NULL || textures[i] = 0 ) {
 * 		glBindImageTexture(first + i, 0, 0, FALSE, 0, READ_ONLY, R8);
 * 	} else {
 * 		glBindImageTexture(first + i, textures[i], 0, TRUE, 0, READ_WRITE, lookupInternalFormat(textures[i]));
 * 	}
 * }</code></pre>
 * where {@code lookupInternalFormat} returns the internal format of the specified texture object.</p>
 * 
 * <p>The values specified in {@code textures} will be checked separately for each image unit. When a value for a specific image unit is invalid, the state
 * for that image unit will be unchanged and an error will be generated. However, state for other image units will still be changed if their corresponding
 * values are valid.</p>
 *
 * @param first    the first image unit
 * @param count    the number of image units
 * @param textures an array of zeros or names of existing texture objects
 */
	static public function glBindImageTextures(first:Int,count:Int,textures:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,textures:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glBindVertexBuffers BindVertexBuffers}  */
/** JNI method for {@link #glBindVertexBuffers BindVertexBuffers}  */
	static public function nglBindVertexBuffers(first:Int,count:Int,buffers:haxe.Int64,offsets:haxe.Int64,strides:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (first:Int,count:Int,buffers:haxe.Int64,offsets:haxe.Int64,strides:haxe.Int64):Void {})
/** Unsafe version of {@link #glClearTexSubImage ClearTexSubImage}  */
/** JNI method for {@link #glClearTexSubImage ClearTexSubImage}  */
	static public function nglClearTexSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:haxe.Int64):Void {})

}
