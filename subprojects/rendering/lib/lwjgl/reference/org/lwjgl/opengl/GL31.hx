package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL31")
@:final
/**
 * The core OpenGL 3.1 functionality. OpenGL 3.1 implementations support revision 1.40 of the OpenGL Shading Language.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/draw_instanced.txt">ARB_draw_instanced</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/copy_buffer.txt">ARB_copy_buffer</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/NV/primitive_restart.txt">NV_primitive_restart</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_buffer_object.txt">ARB_texture_buffer_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/texture_rectangle.txt">ARB_texture_rectangle</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/uniform_buffer_object.txt">ARB_uniform_buffer_object</a></li>
 * </ul></p>
 */
extern class GL31 
{
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RED_SNORM:Int = 36752;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RG_SNORM:Int = 36753;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB_SNORM:Int = 36754;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA_SNORM:Int = 36755;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_R8_SNORM:Int = 36756;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RG8_SNORM:Int = 36757;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB8_SNORM:Int = 36758;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA8_SNORM:Int = 36759;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_R16_SNORM:Int = 36760;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RG16_SNORM:Int = 36761;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB16_SNORM:Int = 36762;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA16_SNORM:Int = 36763;
/** Returned by GetTexLevelParameter and GetFramebufferAttachmentParameter.  */
	inline static public var GL_SIGNED_NORMALIZED:Int = 36764;
/**
 * Accepted by the target parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferPointerv, MapBufferRange,
 * FlushMappedBufferRange, GetBufferParameteriv, BindBufferRange, BindBufferBase, and CopyBufferSubData.
 */
	inline static public var GL_COPY_READ_BUFFER:Int = 36662;
/**
 * Accepted by the target parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferPointerv, MapBufferRange,
 * FlushMappedBufferRange, GetBufferParameteriv, BindBufferRange, BindBufferBase, and CopyBufferSubData.
 */
	inline static public var GL_COPY_WRITE_BUFFER:Int = 36663;
/** Accepted by the {@code cap} parameter of Enable, Disable and IsEnabled.  */
	inline static public var GL_PRIMITIVE_RESTART:Int = 36765;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_PRIMITIVE_RESTART_INDEX:Int = 36766;
/**
 * Accepted by the {@code target} parameter of BindBuffer, BufferData, BufferSubData, MapBuffer, MapBufferRange, BindTexture, UnmapBuffer,
 * GetBufferSubData, GetBufferParameteriv, GetBufferPointerv, and TexBuffer, and the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, and
 * GetIntegerv.
 */
	inline static public var GL_TEXTURE_BUFFER:Int = 35882;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv.  */
	inline static public var GL_MAX_TEXTURE_BUFFER_SIZE:Int = 35883;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv.  */
	inline static public var GL_TEXTURE_BINDING_BUFFER:Int = 35884;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv.  */
	inline static public var GL_TEXTURE_BUFFER_DATA_STORE_BINDING:Int = 35885;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv.  */
	inline static public var GL_TEXTURE_BUFFER_FORMAT:Int = 35886;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable and IsEnabled; by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv and
 * GetDoublev; and by the {@code target} parameter of BindTexture, GetTexParameterfv, GetTexParameteriv, TexParameterf, TexParameteri, TexParameterfv and
 * TexParameteriv.
 */
	inline static public var GL_TEXTURE_RECTANGLE:Int = 34037;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv and GetDoublev.  */
	inline static public var GL_TEXTURE_BINDING_RECTANGLE:Int = 34038;
/** Accepted by the {@code target} parameter of GetTexLevelParameteriv, GetTexLevelParameterfv, GetTexParameteriv and TexImage2D.  */
	inline static public var GL_PROXY_TEXTURE_RECTANGLE:Int = 34039;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_MAX_RECTANGLE_TEXTURE_SIZE:Int = 34040;
/** Returned by {@code type} parameter of GetActiveUniform when the location {@code index} for program object {@code program} is of type sampler2DRect.  */
	inline static public var GL_SAMPLER_2D_RECT:Int = 35683;
/**
 * Returned by {@code type} parameter of GetActiveUniform when the location {@code index} for program object {@code program} is of type
 * sampler2DRectShadow.
 */
	inline static public var GL_SAMPLER_2D_RECT_SHADOW:Int = 35684;
/** Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, and GetBufferPointerv.  */
	inline static public var GL_UNIFORM_BUFFER:Int = 35345;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNIFORM_BUFFER_BINDING:Int = 35368;
/** Accepted by the {@code pname} parameter of GetIntegeri_v.  */
	inline static public var GL_UNIFORM_BUFFER_START:Int = 35369;
/** Accepted by the {@code pname} parameter of GetIntegeri_v.  */
	inline static public var GL_UNIFORM_BUFFER_SIZE:Int = 35370;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_UNIFORM_BLOCKS:Int = 35371;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_UNIFORM_BLOCKS:Int = 35372;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_UNIFORM_BLOCKS:Int = 35373;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_UNIFORM_BLOCKS:Int = 35374;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_UNIFORM_BUFFER_BINDINGS:Int = 35375;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_UNIFORM_BLOCK_SIZE:Int = 35376;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:Int = 35377;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:Int = 35378;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:Int = 35379;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT:Int = 35380;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:Int = 35381;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_ACTIVE_UNIFORM_BLOCKS:Int = 35382;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_TYPE:Int = 35383;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_SIZE:Int = 35384;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_NAME_LENGTH:Int = 35385;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_BLOCK_INDEX:Int = 35386;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_OFFSET:Int = 35387;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_ARRAY_STRIDE:Int = 35388;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_MATRIX_STRIDE:Int = 35389;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_IS_ROW_MAJOR:Int = 35390;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_BINDING:Int = 35391;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_DATA_SIZE:Int = 35392;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_NAME_LENGTH:Int = 35393;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS:Int = 35394;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:Int = 35395;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:Int = 35396;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:Int = 35397;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:Int = 35398;
/** Returned by GetActiveUniformsiv and GetUniformBlockIndex.  */
	inline static public var GL_INVALID_INDEX:Int = -1;
/** Function address.  */
	public var DrawArraysInstanced:haxe.Int64;
/** Function address.  */
	public var DrawElementsInstanced:haxe.Int64;
/** Function address.  */
	public var CopyBufferSubData:haxe.Int64;
/** Function address.  */
	public var PrimitiveRestartIndex:haxe.Int64;
/** Function address.  */
	public var TexBuffer:haxe.Int64;
/** Function address.  */
	public var GetUniformIndices:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformsiv:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformName:haxe.Int64;
/** Function address.  */
	public var GetUniformBlockIndex:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformBlockiv:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformBlockName:haxe.Int64;
/** Function address.  */
	public var UniformBlockBinding:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCopyBufferSubData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Copies all or part of one buffer object's data store to the data store of another buffer object.
 * 
 * <p>An {@link GL11#GL_INVALID_VALUE INVALID_VALUE} error is generated if any of readoffset, writeoffset, or size are negative, if readoffset+size exceeds the size of the buffer object
 * bound to readtarget, or if writeoffset+size exceeds the size of the buffer object bound to writetarget.</p>
 * 
 * <p>An {@link GL11#GL_INVALID_VALUE INVALID_VALUE} error is generated if the same buffer object is bound to both readtarget and writetarget, and the ranges [readoffset, readoffset+size)
 * and [writeoffset, writeoffset+size) overlap.</p>
 * 
 * <p>An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if zero is bound to readtarget or writetarget.</p>
 * 
 * <p>An {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} error is generated if the buffer objects bound to either readtarget or writetarget are mapped.</p>
 *
 * @param readTarget  the source buffer object target. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link #GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link #GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link #GL_UNIFORM_BUFFER UNIFORM_BUFFER}
 * @param writeTarget the destination buffer object target
 * @param readOffset  the source buffer object offset, in bytes
 * @param writeOffset the destination buffer object offset, in bytes
 * @param size        the number of bytes to copy
 */
	static public function glCopyBufferSubData(readTarget:Int,writeTarget:Int,readOffset:haxe.Int64,writeOffset:haxe.Int64,size:haxe.Int64):Void;
/** Unsafe version of {@link #glDrawElementsInstanced DrawElementsInstanced}  */
/** JNI method for {@link #glDrawElementsInstanced DrawElementsInstanced}  */
	static public function nglDrawElementsInstanced(mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,count:Int,type:Int,indices:haxe.Int64,primcount:Int):Void {})
/** Unsafe version of {@link #glGetActiveUniformBlockiv GetActiveUniformBlockiv}  */
/** JNI method for {@link #glGetActiveUniformBlockiv GetActiveUniformBlockiv}  */
	static public function nglGetActiveUniformBlockiv(program:Int,uniformBlockIndex:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,uniformBlockIndex:Int,pname:Int,params:haxe.Int64):Void {})
/** Single value version of: {@link #glGetActiveUniformsiv GetActiveUniformsiv}  */
	static public function glGetActiveUniformsi(program:Int,uniformIndex:Int,pname:Int):Int;
/** JNI method for {@link #glUniformBlockBinding UniformBlockBinding}  */
	static public function nglUniformBlockBinding(program:Int,uniformBlockIndex:Int,uniformBlockBinding:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
/** JNI method for {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
	static public function nglGetActiveUniformBlockName(program:Int,uniformBlockIndex:Int,bufSize:Int,length:haxe.Int64,uniformBlockName:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,uniformBlockIndex:Int,bufSize:Int,length:haxe.Int64,uniformBlockName:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetUniformBlockIndex GetUniformBlockIndex}  */
/** JNI method for {@link #glGetUniformBlockIndex GetUniformBlockIndex}  */
	static public function nglGetUniformBlockIndex(program:Int,uniformBlockName:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,uniformBlockName:haxe.Int64):Int {})
/** JNI method for {@link #glPrimitiveRestartIndex PrimitiveRestartIndex}  */
	static public function nglPrimitiveRestartIndex(index:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glDrawArraysInstanced DrawArraysInstanced}  */
	static public function nglDrawArraysInstanced(mode:Int,first:Int,count:Int,primcount:Int,__functionAddress:haxe.Int64):Void;
/** String return (w/ implicit max length) version of: {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
/** String return version of: {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
/** Alternative version of: {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveUniformBlockName.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the name of an active uniform block.
 *
 * @param program           the name of a program containing the uniform block
 * @param uniformBlockIndex the index of the uniform block within {@code program}
 * @param bufSize           the size of the buffer addressed by {@code uniformBlockName}
 * @param length            the address of a variable to receive the number of characters that were written to {@code uniformBlockName}
 * @param uniformBlockName  an array of characters to receive the name of the uniform block at {@code uniformBlockIndex}
 */
	static public function glGetActiveUniformBlockName(program:Int,uniformBlockIndex:Int,bufSize:Int,length:java.nio.ByteBuffer,uniformBlockName:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformBlockIndex:Int):String {})
	@:overload(function (program:Int,uniformBlockIndex:Int,bufSize:Int):String {})
	@:overload(function (program:Int,uniformBlockIndex:Int,length:java.nio.IntBuffer,uniformBlockName:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetUniformIndices GetUniformIndices}  */
/** JNI method for {@link #glGetUniformIndices GetUniformIndices}  */
	static public function nglGetUniformIndices(program:Int,uniformCount:Int,uniformNames:haxe.Int64,uniformIndices:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,uniformCount:Int,uniformNames:haxe.Int64,uniformIndices:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveUniformBlock.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries information about an active uniform block.
 *
 * @param program           the name of a program containing the uniform block
 * @param uniformBlockIndex the index of the uniform block within {@code program}
 * @param pname             the name of the parameter to query. One of:<br>{@link #GL_UNIFORM_BLOCK_BINDING UNIFORM_BLOCK_BINDING}, {@link #GL_UNIFORM_BLOCK_DATA_SIZE UNIFORM_BLOCK_DATA_SIZE}, {@link #GL_UNIFORM_BLOCK_NAME_LENGTH UNIFORM_BLOCK_NAME_LENGTH}, {@link #GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS UNIFORM_BLOCK_ACTIVE_UNIFORMS}, {@link #GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES}, {@link #GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER}, {@link #GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER}, {@link #GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER}
 * @param params            the address of a variable to receive the result of the query
 */
/** Alternative version of: {@link #glGetActiveUniformBlockiv GetActiveUniformBlockiv}  */
	static public function glGetActiveUniformBlockiv(program:Int,uniformBlockIndex:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,uniformBlockIndex:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches the storage for the buffer object named {@code buffer} to the active buffer texture, and specifies an internal format for the texel array found
 * in the attached buffer object. If {@code buffer} is zero, any buffer object attached to the buffer texture is detached, and no new buffer object is
 * attached. If {@code buffer} is non-zero, but is not the name of an existing buffer object, the error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated.
 * 
 * <p>When a buffer object is attached to a buffer texture, the buffer object's data store is taken as the texture's texel array. The number of texels in the
 * buffer texture's texel array is given by</p>
 * 
 * <p><code style="font-family: monospace">floor(buffer_size / (components * sizeof(base_type))</code>,</p>
 * 
 * <p>where {@code buffer_size} is the size of the buffer object, in basic machine units and {@code components} and {@code base_type} are the element count
 * and base data type for elements. The number of texels in the texel array is then clamped to the implementation-dependent limit {@link #GL_MAX_TEXTURE_BUFFER_SIZE MAX_TEXTURE_BUFFER_SIZE}.
 * When a buffer texture is accessed in a shader, the results of a texel fetch are undefined if the specified texel number is greater than or equal to the
 * clamped number of texels in the texel array.</p>
 * 
 * <p>When a buffer texture is accessed in a shader, an integer is provided to indicate the texel number being accessed. If no buffer object is bound to the
 * buffer texture, the results of the texel access are undefined. Otherwise, the attached buffer object's data store is interpreted as an array of elements
 * of the GL data type corresponding to {@code internalformat}. Each texel consists of one to four elements that are mapped to texture components
 * (R, G, B, A, L, and I). Element {@code m} of the texel numbered {@code n} is taken from element {@code n} * {@code components} + {@code m} of the
 * attached buffer object's data store. Elements and texels are both numbered starting with zero. For texture formats with normalized components, the
 * extracted values are converted to floating-point values. The components of the texture are then converted to an (R,G,B,A) vector, and returned to the
 * shader as a four-component result vector with components of the appropriate data type for the texture's internal format.</p>
 *
 * @param target         the target of the operation. Must be:<br>{@link #GL_TEXTURE_BUFFER TEXTURE_BUFFER}
 * @param internalformat the sized internal format of the data in the store belonging to {@code buffer}
 * @param buffer         the name of the buffer object whose storage to attach to the active buffer texture
 */
	static public function glTexBuffer(target:Int,internalformat:Int,buffer:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawArraysInstanced.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Draw multiple instances of a range of elements.
 *
 * @param mode      the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param first     the index of the first vertex to be rendered
 * @param count     the number of vertices to be rendered
 * @param primcount the number of instances of the specified range of vertices to be rendered
 */
	static public function glDrawArraysInstanced(mode:Int,first:Int,count:Int,primcount:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniformBlockBinding.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Assigns a binding point to an active uniform block.
 *
 * @param program             the name of a program object containing the active uniform block whose binding to assign
 * @param uniformBlockIndex   the index of the active uniform block within {@code program} whose binding to assign
 * @param uniformBlockBinding the binding point to which to bind the uniform block with index {@code uniformBlockIndex} within {@code program}
 */
	static public function glUniformBlockBinding(program:Int,uniformBlockIndex:Int,uniformBlockBinding:Int):Void;
/** Unsafe version of {@link #glGetActiveUniformsiv GetActiveUniformsiv}  */
/** JNI method for {@link #glGetActiveUniformsiv GetActiveUniformsiv}  */
	static public function nglGetActiveUniformsiv(program:Int,uniformCount:Int,uniformIndices:haxe.Int64,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,uniformCount:Int,uniformIndices:haxe.Int64,pname:Int,params:haxe.Int64):Void {})
/** CharSequence version of: {@link #glGetUniformBlockIndex GetUniformBlockIndex}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniformBlockIndex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the index of a named uniform block.
 *
 * @param program          the name of a program containing the uniform block
 * @param uniformBlockName an array of characters to containing the name of the uniform block whose index to retrieve
 */
	static public function glGetUniformBlockIndex(program:Int,uniformBlockName:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,uniformBlockName:java.lang.CharSequence):Int {})
/** Single return value version of: {@link #glGetActiveUniformBlockiv GetActiveUniformBlockiv}  */
	static public function glGetActiveUniformBlocki(program:Int,uniformBlockIndex:Int,pname:Int):Int;
/** String return (w/ implicit max length) version of: {@link #glGetActiveUniformName GetActiveUniformName}  */
/** String return version of: {@link #glGetActiveUniformName GetActiveUniformName}  */
/** Alternative version of: {@link #glGetActiveUniformName GetActiveUniformName}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveUniformName.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the name of an active uniform.
 *
 * @param program      the program containing the active uniform index {@code uniformIndex}
 * @param uniformIndex the index of the active uniform whose name to query
 * @param bufSize      the size of the buffer, in units of {@code GLchar}, of the buffer whose address is specified in {@code uniformName}
 * @param length       the address of a variable that will receive the number of characters that were or would have been written to the buffer addressed by {@code uniformName}
 * @param uniformName  the address of a buffer into which the GL will place the name of the active uniform at {@code uniformIndex} within {@code program}
 */
	static public function glGetActiveUniformName(program:Int,uniformIndex:Int,bufSize:Int,length:java.nio.ByteBuffer,uniformName:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformIndex:Int):String {})
	@:overload(function (program:Int,uniformIndex:Int,bufSize:Int):String {})
	@:overload(function (program:Int,uniformIndex:Int,length:java.nio.IntBuffer,uniformName:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glPrimitiveRestartIndex.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the primitive restart index.
 *
 * @param index the value to be interpreted as the primitive restart index
 */
	static public function glPrimitiveRestartIndex(index:Int):Void;
/** JNI method for {@link #glTexBuffer TexBuffer}  */
	static public function nglTexBuffer(target:Int,internalformat:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glGetActiveUniformsiv GetActiveUniformsiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetActiveUniforms.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns information about several active uniform variables for the specified program object.
 *
 * @param program        the program object to be queried
 * @param uniformCount   the number of elements in the array of indices {@code uniformIndices} and the number of parameters written to {@code params} upon successful return
 * @param uniformIndices an array of {@code uniformCount} integers containing the indices of uniforms within {@code program}
 * @param pname          the property of the each uniform in {@code uniformIndices} that should be written into the corresponding element of {@code params}
 * @param params         an array of {@code uniformCount} integers which are to receive the value of {@code pname} for each uniform in {@code uniformIndices}
 */
	static public function glGetActiveUniformsiv(program:Int,uniformCount:Int,uniformIndices:java.nio.ByteBuffer,pname:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformIndices:java.nio.IntBuffer,pname:Int,params:java.nio.IntBuffer):Void {})
/** GL_UNSIGNED_BYTE version of: {@link #glDrawElementsInstanced DrawElementsInstanced}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawElementsInstanced DrawElementsInstanced}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawElementsInstanced DrawElementsInstanced}  */
/** Alternative version of: {@link #glDrawElementsInstanced DrawElementsInstanced}  */
/** Buffer object offset version of: {@link #glDrawElementsInstanced DrawElementsInstanced}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawElementsInstanced.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Draws multiple instances of a set of elements.
 *
 * @param mode      the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param count     the number of elements to be rendered
 * @param type      the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices   the ByteBuffer containing the indices to be rendered
 * @param primcount the number of instances of the specified range of indices to be rendered
 */
	static public function glDrawElementsInstanced(mode:Int,count:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int):Void;
	@:overload(function (mode:Int,indices:java.nio.ByteBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.IntBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,indices:java.nio.ShortBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,type:Int,indices:java.nio.ByteBuffer,primcount:Int):Void {})
	@:overload(function (mode:Int,count:Int,type:Int,indicesOffset:haxe.Int64,primcount:Int):Void {})
/** JNI method for {@link #glCopyBufferSubData CopyBufferSubData}  */
	static public function nglCopyBufferSubData(readTarget:Int,writeTarget:Int,readOffset:haxe.Int64,writeOffset:haxe.Int64,size:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveUniformName GetActiveUniformName}  */
/** JNI method for {@link #glGetActiveUniformName GetActiveUniformName}  */
	static public function nglGetActiveUniformName(program:Int,uniformIndex:Int,bufSize:Int,length:haxe.Int64,uniformName:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,uniformIndex:Int,bufSize:Int,length:haxe.Int64,uniformName:haxe.Int64):Void {})
/** Returns the {@link GL31} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL31;
/** Single uniformName version of: {@link #glGetUniformIndices GetUniformIndices}  */
/** Array version of: {@link #glGetUniformIndices GetUniformIndices}  */
/** Alternative version of: {@link #glGetUniformIndices GetUniformIndices}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniformIndices.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves the indices of a number of uniforms within a program object
 *
 * @param program        the name of a program containing uniforms whose indices to query
 * @param uniformCount   the number of uniforms whose indices to query
 * @param uniformNames   an array of pointers to buffers containing the names of the queried uniforms
 * @param uniformIndices an array that will receive the indices of the uniforms
 */
	static public function glGetUniformIndices(program:Int,uniformCount:Int,uniformNames:java.nio.ByteBuffer,uniformIndices:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformName:java.lang.CharSequence):Int {})
	@:overload(function (program:Int,uniformNames:java.NativeArray<java.lang.CharSequence>,uniformIndices:java.nio.IntBuffer):Void {})
	@:overload(function (program:Int,uniformNames:org.lwjgl.PointerBuffer,uniformIndices:java.nio.IntBuffer):Void {})

}
