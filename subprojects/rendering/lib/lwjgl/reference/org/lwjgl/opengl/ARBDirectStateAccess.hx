package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDirectStateAccess")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/direct_state_access.txt">ARB_direct_state_access</a> extension.
 * 
 * <p>In unextended OpenGL, most mutation of state contained in objects is through an indirection known as a binding. Objects are attached to a context
 * (either directly or indirectly via a container) and then commands to modify or query their state are issued on that context, indirecting through its
 * attachments and into the underlying object. This is known as `bind-to-edit'.</p>
 * 
 * <p>This extension derives from the GL_EXT_direct_state_access extension, which added accessors for most state on most objects, allowing it to be queried
 * and modified without the object needing to be bound to a context. In cases where a single property of an object is to be modified, directly accessing
 * its state can be more efficient than binding the object to the context and then indirecting through it. Further, directly accessing the state of objects
 * through their names rather than by bind-to-edit does not disturb the bindings of the current context, which is useful for tools, middleware and other
 * applications that are unaware of the outer state but it can also avoid cases of redundant state changes.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}. Promoted to core in {@link GL45 OpenGL 4.5}.</p>
 */
extern class ARBDirectStateAccess 
{
/** Accepted by the {@code pname} parameter of GetTextureParameter{if}v and GetTextureParameterI{i ui}v.  */
	inline static public var GL_TEXTURE_TARGET:Int = 4102;
/** Accepted by the {@code pname} parameter of GetQueryObjectiv.  */
	inline static public var GL_QUERY_TARGET:Int = 33514;
/** Accepted by the {@code pname} parameter of GetIntegeri_v.  */
	inline static public var GL_TEXTURE_BINDING:Int = 33515;
/** Function address.  */
	public var CreateTransformFeedbacks:haxe.Int64;
/** Function address.  */
	public var TransformFeedbackBufferBase:haxe.Int64;
/** Function address.  */
	public var TransformFeedbackBufferRange:haxe.Int64;
/** Function address.  */
	public var GetTransformFeedbackiv:haxe.Int64;
/** Function address.  */
	public var GetTransformFeedbacki_v:haxe.Int64;
/** Function address.  */
	public var GetTransformFeedbacki64_v:haxe.Int64;
/** Function address.  */
	public var CreateBuffers:haxe.Int64;
/** Function address.  */
	public var NamedBufferStorage:haxe.Int64;
/** Function address.  */
	public var NamedBufferData:haxe.Int64;
/** Function address.  */
	public var NamedBufferSubData:haxe.Int64;
/** Function address.  */
	public var CopyNamedBufferSubData:haxe.Int64;
/** Function address.  */
	public var ClearNamedBufferData:haxe.Int64;
/** Function address.  */
	public var ClearNamedBufferSubData:haxe.Int64;
/** Function address.  */
	public var MapNamedBuffer:haxe.Int64;
/** Function address.  */
	public var MapNamedBufferRange:haxe.Int64;
/** Function address.  */
	public var UnmapNamedBuffer:haxe.Int64;
/** Function address.  */
	public var FlushMappedNamedBufferRange:haxe.Int64;
/** Function address.  */
	public var GetNamedBufferParameteriv:haxe.Int64;
/** Function address.  */
	public var GetNamedBufferParameteri64v:haxe.Int64;
/** Function address.  */
	public var GetNamedBufferPointerv:haxe.Int64;
/** Function address.  */
	public var GetNamedBufferSubData:haxe.Int64;
/** Function address.  */
	public var CreateFramebuffers:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferRenderbuffer:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferParameteri:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTexture:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferTextureLayer:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferDrawBuffer:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferDrawBuffers:haxe.Int64;
/** Function address.  */
	public var NamedFramebufferReadBuffer:haxe.Int64;
/** Function address.  */
	public var InvalidateNamedFramebufferData:haxe.Int64;
/** Function address.  */
	public var InvalidateNamedFramebufferSubData:haxe.Int64;
/** Function address.  */
	public var ClearNamedFramebufferiv:haxe.Int64;
/** Function address.  */
	public var ClearNamedFramebufferuiv:haxe.Int64;
/** Function address.  */
	public var ClearNamedFramebufferfv:haxe.Int64;
/** Function address.  */
	public var ClearNamedFramebufferfi:haxe.Int64;
/** Function address.  */
	public var BlitNamedFramebuffer:haxe.Int64;
/** Function address.  */
	public var CheckNamedFramebufferStatus:haxe.Int64;
/** Function address.  */
	public var GetNamedFramebufferParameteriv:haxe.Int64;
/** Function address.  */
	public var GetNamedFramebufferAttachmentParameteriv:haxe.Int64;
/** Function address.  */
	public var CreateRenderbuffers:haxe.Int64;
/** Function address.  */
	public var NamedRenderbufferStorage:haxe.Int64;
/** Function address.  */
	public var NamedRenderbufferStorageMultisample:haxe.Int64;
/** Function address.  */
	public var GetNamedRenderbufferParameteriv:haxe.Int64;
/** Function address.  */
	public var CreateTextures:haxe.Int64;
/** Function address.  */
	public var TextureBuffer:haxe.Int64;
/** Function address.  */
	public var TextureBufferRange:haxe.Int64;
/** Function address.  */
	public var TextureStorage1D:haxe.Int64;
/** Function address.  */
	public var TextureStorage2D:haxe.Int64;
/** Function address.  */
	public var TextureStorage3D:haxe.Int64;
/** Function address.  */
	public var TextureStorage2DMultisample:haxe.Int64;
/** Function address.  */
	public var TextureStorage3DMultisample:haxe.Int64;
/** Function address.  */
	public var TextureSubImage1D:haxe.Int64;
/** Function address.  */
	public var TextureSubImage2D:haxe.Int64;
/** Function address.  */
	public var TextureSubImage3D:haxe.Int64;
/** Function address.  */
	public var CompressedTextureSubImage1D:haxe.Int64;
/** Function address.  */
	public var CompressedTextureSubImage2D:haxe.Int64;
/** Function address.  */
	public var CompressedTextureSubImage3D:haxe.Int64;
/** Function address.  */
	public var CopyTextureSubImage1D:haxe.Int64;
/** Function address.  */
	public var CopyTextureSubImage2D:haxe.Int64;
/** Function address.  */
	public var CopyTextureSubImage3D:haxe.Int64;
/** Function address.  */
	public var TextureParameterf:haxe.Int64;
/** Function address.  */
	public var TextureParameterfv:haxe.Int64;
/** Function address.  */
	public var TextureParameteri:haxe.Int64;
/** Function address.  */
	public var TextureParameterIiv:haxe.Int64;
/** Function address.  */
	public var TextureParameterIuiv:haxe.Int64;
/** Function address.  */
	public var TextureParameteriv:haxe.Int64;
/** Function address.  */
	public var GenerateTextureMipmap:haxe.Int64;
/** Function address.  */
	public var BindTextureUnit:haxe.Int64;
/** Function address.  */
	public var GetTextureImage:haxe.Int64;
/** Function address.  */
	public var GetCompressedTextureImage:haxe.Int64;
/** Function address.  */
	public var GetTextureLevelParameterfv:haxe.Int64;
/** Function address.  */
	public var GetTextureLevelParameteriv:haxe.Int64;
/** Function address.  */
	public var GetTextureParameterfv:haxe.Int64;
/** Function address.  */
	public var GetTextureParameterIiv:haxe.Int64;
/** Function address.  */
	public var GetTextureParameterIuiv:haxe.Int64;
/** Function address.  */
	public var GetTextureParameteriv:haxe.Int64;
/** Function address.  */
	public var CreateVertexArrays:haxe.Int64;
/** Function address.  */
	public var DisableVertexArrayAttrib:haxe.Int64;
/** Function address.  */
	public var EnableVertexArrayAttrib:haxe.Int64;
/** Function address.  */
	public var VertexArrayElementBuffer:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexBuffer:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexBuffers:haxe.Int64;
/** Function address.  */
	public var VertexArrayAttribFormat:haxe.Int64;
/** Function address.  */
	public var VertexArrayAttribIFormat:haxe.Int64;
/** Function address.  */
	public var VertexArrayAttribLFormat:haxe.Int64;
/** Function address.  */
	public var VertexArrayAttribBinding:haxe.Int64;
/** Function address.  */
	public var VertexArrayBindingDivisor:haxe.Int64;
/** Function address.  */
	public var GetVertexArrayiv:haxe.Int64;
/** Function address.  */
	public var GetVertexArrayIndexediv:haxe.Int64;
/** Function address.  */
	public var GetVertexArrayIndexed64iv:haxe.Int64;
/** Function address.  */
	public var CreateSamplers:haxe.Int64;
/** Function address.  */
	public var CreateProgramPipelines:haxe.Int64;
/** Function address.  */
	public var CreateQueries:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * DSA version of {@link GL30#glFlushMappedBufferRange FlushMappedBufferRange}.
 *
 * @param buffer the buffer object name
 * @param offset the start of the buffer subrange, in basic machine units
 * @param length the length of the buffer subrange, in basic machine units
 */
	static public function glFlushMappedNamedBufferRange(buffer:Int,offset:haxe.Int64,length:haxe.Int64):Void;
/**
 * DSA version of {@link GL30#glClearBufferfv ClearBufferfv}.
 *
 * @param framebuffer the framebuffer name
 * @param buffer      the buffer to clear. One of:<br>{@link GL11#GL_COLOR COLOR}, {@link GL11#GL_DEPTH DEPTH}
 * @param drawbuffer  the draw buffer to clear
 * @param value       for color buffers, a pointer to a four-element vector specifying R, G, B and A values to clear the buffer to. For depth buffers, a pointer to a
 *                    single depth value to clear the buffer to.
 */
/** Alternative version of: {@link #glClearNamedFramebufferfv ClearNamedFramebufferfv}  */
	static public function glClearNamedFramebufferfv(framebuffer:Int,buffer:Int,drawbuffer:Int,value:java.nio.FloatBuffer):Void;
	@:overload(function (framebuffer:Int,buffer:Int,drawbuffer:Int,value:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL30#glGetRenderbufferParameteriv GetRenderbufferParameteriv}.
 *
 * @param renderbuffer 
 * @param pname        the parameter whose value to retrieve from the renderbuffer bound to {@code target}. One of:<br>{@link GL30#GL_RENDERBUFFER_WIDTH RENDERBUFFER_WIDTH}, {@link GL30#GL_RENDERBUFFER_HEIGHT RENDERBUFFER_HEIGHT}, {@link GL30#GL_RENDERBUFFER_INTERNAL_FORMAT RENDERBUFFER_INTERNAL_FORMAT}, {@link GL30#GL_RENDERBUFFER_RED_SIZE RENDERBUFFER_RED_SIZE}, {@link GL30#GL_RENDERBUFFER_GREEN_SIZE RENDERBUFFER_GREEN_SIZE}, {@link GL30#GL_RENDERBUFFER_BLUE_SIZE RENDERBUFFER_BLUE_SIZE}, {@link GL30#GL_RENDERBUFFER_ALPHA_SIZE RENDERBUFFER_ALPHA_SIZE}, {@link GL30#GL_RENDERBUFFER_DEPTH_SIZE RENDERBUFFER_DEPTH_SIZE}, {@link GL30#GL_RENDERBUFFER_STENCIL_SIZE RENDERBUFFER_STENCIL_SIZE}, {@link GL30#GL_RENDERBUFFER_SAMPLES RENDERBUFFER_SAMPLES}
 * @param params       an array to receive the value of the queried parameter
 */
/** Alternative version of: {@link #glGetNamedRenderbufferParameteriv GetNamedRenderbufferParameteriv}  */
	static public function glGetNamedRenderbufferParameteriv(renderbuffer:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (renderbuffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetNamedFramebufferParameteriv GetNamedFramebufferParameteriv}  */
	static public function nglGetNamedFramebufferParameteriv(framebuffer:Int,pname:Int,params:haxe.Int64):Void;
/**
 * DSA version of {@link GL42#glTexStorage2D TexStorage2D}.
 *
 * @param texture        the texture name
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 * @param height         the height of the texture, in texels
 */
	static public function glTextureStorage2D(texture:Int,levels:Int,internalformat:Int,width:Int,height:Int):Void;
/** Unsafe version of {@link #glGetTextureParameterfv GetTextureParameterfv}  */
	static public function nglGetTextureParameterfv(texture:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetTransformFeedbacki64_v GetTransformFeedbacki64_v}  */
	static public function glGetTransformFeedbacki64(xfb:Int,pname:Int,index:Int):haxe.Int64;
/**
 * DSA version of {@link GL43#glFramebufferParameteri FramebufferParameteri}.
 *
 * @param framebuffer the framebuffer name
 * @param pname       a token indicating the parameter to be modified. One of:<br>{@link GL43#GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param param       the new value for the parameter named {@code pname}
 */
	static public function glNamedFramebufferParameteri(framebuffer:Int,pname:Int,param:Int):Void;
/** Unsafe version of {@link #glGetTextureLevelParameterfv GetTextureLevelParameterfv}  */
	static public function nglGetTextureLevelParameterfv(texture:Int,level:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glCreateProgramPipelines CreateProgramPipelines}  */
/** Alternative version of: {@link #glCreateProgramPipelines CreateProgramPipelines}  */
/**
 * Returns {@code n} previously unused program pipeline names in {@code pipelines}, each representing a new program pipeline object.
 *
 * @param n         the number of program pipeline names to create
 * @param pipelines the buffer in which to return the created program pipeline names
 */
	static public function glCreateProgramPipelines(n:Int,pipelines:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (pipelines:java.nio.IntBuffer):Void {})
/**
 * DSA version of {@link GL30#glBlitFramebuffer BlitFramebuffer}.
 *
 * @param readFramebuffer the source framebuffer name
 * @param drawFramebuffer the destination framebuffer name
 * @param srcX0           the lower-left coordinate of the source rectangle within the read buffer
 * @param srcY0           the upper-left coordinate of the source rectangle within the read buffer
 * @param srcX1           the lower-right coordinate of the source rectangle within the read buffer
 * @param srcY1           the upper-right coordinate of the source rectangle within the read buffer
 * @param dstX0           the lower-left coordinate of the destination rectangle within the write buffer
 * @param dstY0           the upper-left coordinate of the destination rectangle within the write buffer
 * @param dstX1           the lower-right coordinate of the destination rectangle within the write buffer
 * @param dstY1           the upper-right coordinate of the destination rectangle within the write buffer
 * @param mask            the bitwise OR of the flags indicating which buffers are to be copied. One of:<br>{@link GL11#GL_COLOR_BUFFER_BIT COLOR_BUFFER_BIT}, {@link GL11#GL_DEPTH_BUFFER_BIT DEPTH_BUFFER_BIT}, {@link GL11#GL_STENCIL_BUFFER_BIT STENCIL_BUFFER_BIT}
 * @param filter          the interpolation to be applied if the image is stretched. One of:<br>{@link GL11#GL_NEAREST NEAREST}, {@link GL11#GL_LINEAR LINEAR}
 */
	static public function glBlitNamedFramebuffer(readFramebuffer:Int,drawFramebuffer:Int,srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int):Void;
/** Alternative version of: {@link #glNamedBufferData NamedBufferData}  */
/** ByteBuffer version of: {@link #glNamedBufferData NamedBufferData}  */
/** DoubleBuffer version of: {@link #glNamedBufferData NamedBufferData}  */
/** FloatBuffer version of: {@link #glNamedBufferData NamedBufferData}  */
/** IntBuffer version of: {@link #glNamedBufferData NamedBufferData}  */
/** ShortBuffer version of: {@link #glNamedBufferData NamedBufferData}  */
/**
 * DSA version of {@link GL15#glBufferData BufferData}.
 *
 * @param buffer 
 * @param size   the size in bytes of the buffer object's new data store
 * @param data   a pointer to data that will be copied into the data store for initialization, or NULL if no data is to be copied
 * @param usage  the expected usage pattern of the data store. One of:<br>{@link GL15#GL_STREAM_DRAW STREAM_DRAW}, {@link GL15#GL_STREAM_READ STREAM_READ}, {@link GL15#GL_STREAM_COPY STREAM_COPY}, {@link GL15#GL_STATIC_DRAW STATIC_DRAW}, {@link GL15#GL_STATIC_READ STATIC_READ}, {@link GL15#GL_STATIC_COPY STATIC_COPY}, {@link GL15#GL_DYNAMIC_DRAW DYNAMIC_DRAW}, {@link GL15#GL_DYNAMIC_READ DYNAMIC_READ}, {@link GL15#GL_DYNAMIC_COPY DYNAMIC_COPY}
 */
	static public function glNamedBufferData(buffer:Int,size:haxe.Int64,data:java.nio.ByteBuffer,usage:Int):Void;
	@:overload(function (buffer:Int,size:haxe.Int64,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.ByteBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.DoubleBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.FloatBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.IntBuffer,usage:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.ShortBuffer,usage:Int):Void {})
/**
 * DSA version of {@link GL43#glTexStorage3DMultisample TexStorage3DMultisample}.
 *
 * @param texture              the texture name
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param depth                the depth of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTextureStorage3DMultisample(texture:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool):Void;
/** Single value version of: {@link #glTextureParameterIuiv TextureParameterIuiv}  */
	static public function glTextureParameterIui(texture:Int,pname:Int,param:Int):Void;
/**
 * Returns information about a transform feedback object.
 *
 * @param xfb   zero or the name of an existing transform feedback object
 * @param pname the parameter to query. One of:<br>{@link GL42#GL_TRANSFORM_FEEDBACK_PAUSED TRANSFORM_FEEDBACK_PAUSED}, {@link GL42#GL_TRANSFORM_FEEDBACK_ACTIVE TRANSFORM_FEEDBACK_ACTIVE}
 * @param param the buffer in which to return the parameter value
 */
/** Alternative version of: {@link #glGetTransformFeedbackiv GetTransformFeedbackiv}  */
	static public function glGetTransformFeedbackiv(xfb:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (xfb:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetTextureParameterIiv GetTextureParameterIiv}  */
	static public function nglGetTextureParameterIiv(texture:Int,pname:Int,params:haxe.Int64):Void;
/**
 * DSA version of {@link GL43#glTexStorage2DMultisample TexStorage2DMultisample}.
 *
 * @param texture              the texture name
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTextureStorage2DMultisample(texture:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool):Void;
/**
 * DSA version of {@link GL30#glGetFramebufferAttachmentParameteriv GetFramebufferAttachmentParameteriv}.
 *
 * @param framebuffer the framebuffer name
 * @param attachment  the attachment within {@code target}. One of:<br>{@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link GL30#GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link GL30#GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link GL30#GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link GL30#GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link GL30#GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link GL30#GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link GL30#GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link GL30#GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link GL30#GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link GL30#GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link GL30#GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link GL30#GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link GL30#GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link GL30#GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link GL30#GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link GL30#GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link GL30#GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link GL30#GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param pname       the parameter of {@code attachment} to query. One of:<br>{@link GL30#GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME FRAMEBUFFER_ATTACHMENT_OBJECT_NAME}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE FRAMEBUFFER_ATTACHMENT_RED_SIZE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE FRAMEBUFFER_ATTACHMENT_GREEN_SIZE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE FRAMEBUFFER_ATTACHMENT_BLUE_SIZE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE}, {@link GL30#GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE}
 * @param params      an array to receive the value of the queried parameter
 */
/** Alternative version of: {@link #glGetNamedFramebufferAttachmentParameteriv GetNamedFramebufferAttachmentParameteriv}  */
	static public function glGetNamedFramebufferAttachmentParameteriv(framebuffer:Int,attachment:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (framebuffer:Int,attachment:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL15#glMapBuffer MapBuffer}.
 *
 * @param buffer the buffer object name
 * @param access the access policy, indicating whether it will be possible to read from, write to, or both read from and write to the buffer object's mapped data store. One of:<br>{@link GL15#GL_READ_ONLY READ_ONLY}, {@link GL15#GL_WRITE_ONLY WRITE_ONLY}, {@link GL15#GL_READ_WRITE READ_WRITE}
 */
/** Alternative version of: {@link #glMapNamedBuffer MapNamedBuffer}  */
/** Explicit size alternative version of: {@link #glMapNamedBuffer MapNamedBuffer}  */
	static public function glMapNamedBuffer(buffer:Int,access:Int,length:haxe.Int64,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (buffer:Int,access:Int):java.nio.ByteBuffer {})
	@:overload(function (buffer:Int,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/**
 * DSA version of {@link GL42#glTexStorage1D TexStorage1D}.
 *
 * @param texture        the texture name
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 */
	static public function glTextureStorage1D(texture:Int,levels:Int,internalformat:Int,width:Int):Void;
/** Single return value version of: {@link #glGetNamedBufferParameteri64v GetNamedBufferParameteri64v}  */
	static public function glGetNamedBufferParameteri64(buffer:Int,pname:Int):haxe.Int64;
/** Unsafe version of {@link #glCreateBuffers CreateBuffers}  */
	static public function nglCreateBuffers(n:Int,buffers:haxe.Int64):Void;
/**
 * DSA version of {@link GL12#glCopyTexSubImage3D CopyTexSubImage3D}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail number
 * @param xoffset the x coordinate of the texture subregion to update
 * @param yoffset the y coordinate of the texture subregion to update
 * @param zoffset the z coordinate of the texture subregion to update
 * @param x       the left framebuffer pixel coordinate
 * @param y       the lower framebuffer pixel coordinate
 * @param width   the texture subregion width
 * @param height  the texture subregion height
 */
	static public function glCopyTextureSubImage3D(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,x:Int,y:Int,width:Int,height:Int):Void;
/**
 * DSA version of {@link GL30#glTexParameterIuiv TexParameterIuiv}.
 *
 * @param texture the texture name
 * @param pname   the symbolic name of a single-valued texture parameter
 * @param params  the value of {@code pname}
 */
/** Alternative version of: {@link #glTextureParameterIuiv TextureParameterIuiv}  */
	static public function glTextureParameterIuiv(texture:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single value version of: {@link #glInvalidateNamedFramebufferSubData InvalidateNamedFramebufferSubData}  */
/** Alternative version of: {@link #glInvalidateNamedFramebufferSubData InvalidateNamedFramebufferSubData}  */
/**
 * DSA version of {@link GL43#glInvalidateSubFramebuffer InvalidateSubFramebuffer}.
 *
 * @param framebuffer    the framebuffer name
 * @param numAttachments the number of entries in the {@code attachments} array
 * @param attachments    an array identifying the attachments to be invalidated
 * @param x              the X offset of the region to be invalidated
 * @param y              the Y offset of the region to be invalidated
 * @param width          the width of the region to be invalidated
 * @param height         the height of the region to be invalidated
 */
	static public function glInvalidateNamedFramebufferSubData(framebuffer:Int,numAttachments:Int,attachments:java.nio.ByteBuffer,x:Int,y:Int,width:Int,height:Int):Void;
	@:overload(function (framebuffer:Int,attachment:Int,x:Int,y:Int,width:Int,height:Int):Void {})
	@:overload(function (framebuffer:Int,attachments:java.nio.IntBuffer,x:Int,y:Int,width:Int,height:Int):Void {})
/** Unsafe version of {@link #glGetNamedFramebufferAttachmentParameteriv GetNamedFramebufferAttachmentParameteriv}  */
	static public function nglGetNamedFramebufferAttachmentParameteriv(framebuffer:Int,attachment:Int,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glClearNamedBufferSubData ClearNamedBufferSubData}  */
	static public function nglClearNamedBufferSubData(buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:haxe.Int64):Void;
/**
 * DSA version of {@link GL15#glUnmapBuffer UnmapBuffer}.
 *
 * @param buffer the buffer object name
 */
	static public function glUnmapNamedBuffer(buffer:Int):Bool;
/** Single value version of: {@link #glInvalidateNamedFramebufferData InvalidateNamedFramebufferData}  */
/** Alternative version of: {@link #glInvalidateNamedFramebufferData InvalidateNamedFramebufferData}  */
/**
 * DSA version of {@link GL43#glInvalidateFramebuffer InvalidateFramebuffer}.
 *
 * @param framebuffer    the framebuffer name
 * @param numAttachments the number of entries in the {@code attachments} array
 * @param attachments    the address of an array identifying the attachments to be invalidated
 */
	static public function glInvalidateNamedFramebufferData(framebuffer:Int,numAttachments:Int,attachments:java.nio.ByteBuffer):Void;
	@:overload(function (framebuffer:Int,attachment:Int):Void {})
	@:overload(function (framebuffer:Int,attachments:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glClearNamedFramebufferfv ClearNamedFramebufferfv}  */
	static public function nglClearNamedFramebufferfv(framebuffer:Int,buffer:Int,drawbuffer:Int,value:haxe.Int64):Void;
/** Single return value version of: {@link #glGetNamedFramebufferParameteriv GetNamedFramebufferParameteriv}  */
	static public function glGetNamedFramebufferParameteri(framebuffer:Int,pname:Int):Int;
/**
 * DSA version of {@link GL11#glGetTexLevelParameteriv GetTexLevelParameteriv}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail number
 * @param pname   the parameter to query. One of:<br>{@link GL11#GL_TEXTURE_WIDTH TEXTURE_WIDTH}, {@link GL11#GL_TEXTURE_HEIGHT TEXTURE_HEIGHT}, {@link GL12#GL_TEXTURE_DEPTH TEXTURE_DEPTH}, {@link GL11#GL_TEXTURE_BORDER TEXTURE_BORDER}, {@link GL32#GL_TEXTURE_SAMPLES TEXTURE_SAMPLES}, {@link GL32#GL_TEXTURE_FIXED_SAMPLE_LOCATIONS TEXTURE_FIXED_SAMPLE_LOCATIONS}, {@link GL11#GL_TEXTURE_INTERNAL_FORMAT TEXTURE_INTERNAL_FORMAT}, {@link GL11#GL_TEXTURE_RED_SIZE TEXTURE_RED_SIZE}, {@link GL11#GL_TEXTURE_GREEN_SIZE TEXTURE_GREEN_SIZE}, {@link GL11#GL_TEXTURE_BLUE_SIZE TEXTURE_BLUE_SIZE}, {@link GL11#GL_TEXTURE_ALPHA_SIZE TEXTURE_ALPHA_SIZE}, {@link GL11#GL_TEXTURE_LUMINANCE_SIZE TEXTURE_LUMINANCE_SIZE}, {@link GL11#GL_TEXTURE_INTENSITY_SIZE TEXTURE_INTENSITY_SIZE}, {@link GL14#GL_TEXTURE_DEPTH_SIZE TEXTURE_DEPTH_SIZE}, {@link GL30#GL_TEXTURE_STENCIL_SIZE TEXTURE_STENCIL_SIZE}, {@link GL30#GL_TEXTURE_SHARED_SIZE TEXTURE_SHARED_SIZE}, {@link GL30#GL_TEXTURE_RED_TYPE TEXTURE_RED_TYPE}, {@link GL30#GL_TEXTURE_GREEN_TYPE TEXTURE_GREEN_TYPE}, {@link GL30#GL_TEXTURE_BLUE_TYPE TEXTURE_BLUE_TYPE}, {@link GL30#GL_TEXTURE_ALPHA_TYPE TEXTURE_ALPHA_TYPE}, {@link GL30#GL_TEXTURE_LUMINANCE_TYPE TEXTURE_LUMINANCE_TYPE}, {@link GL30#GL_TEXTURE_INTENSITY_TYPE TEXTURE_INTENSITY_TYPE}, {@link GL30#GL_TEXTURE_DEPTH_TYPE TEXTURE_DEPTH_TYPE}, {@link GL13#GL_TEXTURE_COMPRESSED TEXTURE_COMPRESSED}, {@link GL13#GL_TEXTURE_COMPRESSED_IMAGE_SIZE TEXTURE_COMPRESSED_IMAGE_SIZE}, {@link GL31#GL_TEXTURE_BUFFER_DATA_STORE_BINDING TEXTURE_BUFFER_DATA_STORE_BINDING}, {@link GL43#GL_TEXTURE_BUFFER_OFFSET TEXTURE_BUFFER_OFFSET}, {@link GL43#GL_TEXTURE_BUFFER_SIZE TEXTURE_BUFFER_SIZE}
 * @param params  a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetTextureLevelParameteriv GetTextureLevelParameteriv}  */
	static public function glGetTextureLevelParameteriv(texture:Int,level:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,level:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL32#glFramebufferTexture FramebufferTexture}.
 *
 * @param framebuffer the framebuffer name
 * @param attachment  the attachment point of the framebuffer
 * @param texture     the texture object to attach to the framebuffer attachment point named by {@code attachment}
 * @param level       the mipmap level of {@code texture} to attach
 */
	static public function glNamedFramebufferTexture(framebuffer:Int,attachment:Int,texture:Int,level:Int):Void;
/** Unsafe version of {@link #glCreateTextures CreateTextures}  */
	static public function nglCreateTextures(target:Int,n:Int,textures:haxe.Int64):Void;
/** ByteBuffer version of: {@link #glNamedBufferSubData NamedBufferSubData}  */
/** DoubleBuffer version of: {@link #glNamedBufferSubData NamedBufferSubData}  */
/** FloatBuffer version of: {@link #glNamedBufferSubData NamedBufferSubData}  */
/** IntBuffer version of: {@link #glNamedBufferSubData NamedBufferSubData}  */
/** ShortBuffer version of: {@link #glNamedBufferSubData NamedBufferSubData}  */
/**
 * DSA version of {@link GL15#glBufferSubData BufferSubData}.
 *
 * @param buffer 
 * @param offset the offset into the buffer object's data store where data replacement will begin, measured in bytes
 * @param size   the size in bytes of the data store region being replaced
 * @param data   a pointer to the new data that will be copied into the data store
 */
	static public function glNamedBufferSubData(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.IntBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ShortBuffer):Void {})
/**
 * DSA version of {@link GL15#glGetBufferParameteriv GetBufferParameteriv}.
 *
 * @param buffer the buffer object name
 * @param pname  the symbolic name of a buffer object parameter. One of:<br>{@link GL15#GL_BUFFER_SIZE BUFFER_SIZE}, {@link GL15#GL_BUFFER_USAGE BUFFER_USAGE}, {@link GL15#GL_BUFFER_ACCESS BUFFER_ACCESS}, {@link GL15#GL_BUFFER_MAPPED BUFFER_MAPPED}, {@link GL30#GL_BUFFER_ACCESS_FLAGS BUFFER_ACCESS_FLAGS}, {@link GL30#GL_BUFFER_MAP_LENGTH BUFFER_MAP_LENGTH}, {@link GL30#GL_BUFFER_MAP_OFFSET BUFFER_MAP_OFFSET}, {@link GL44#GL_BUFFER_IMMUTABLE_STORAGE BUFFER_IMMUTABLE_STORAGE}, {@link GL44#GL_BUFFER_STORAGE_FLAGS BUFFER_STORAGE_FLAGS}
 * @param params the requested parameter
 */
/** Alternative version of: {@link #glGetNamedBufferParameteriv GetNamedBufferParameteriv}  */
	static public function glGetNamedBufferParameteriv(buffer:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (buffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** DoubleBuffer version of: {@link #glGetTextureImage GetTextureImage}  */
/** FloatBuffer version of: {@link #glGetTextureImage GetTextureImage}  */
/** IntBuffer version of: {@link #glGetTextureImage GetTextureImage}  */
/** ShortBuffer version of: {@link #glGetTextureImage GetTextureImage}  */
/** Buffer object offset version of: {@link #glGetTextureImage GetTextureImage}  */
/**
 * DSA version of {@link GL11#glGetTexImage GetTexImage}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail number
 * @param format  the pixel format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param bufSize the size of the buffer to receive the retrieved pixel data
 * @param pixels  the buffer in which to place the returned data
 */
	static public function glGetTextureImage(texture:Int,level:Int,format:Int,type:Int,bufSize:Int,pixels:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void {})
	@:overload(function (texture:Int,level:Int,format:Int,type:Int,bufSize:Int,pixelsOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetVertexArrayIndexed64iv GetVertexArrayIndexed64iv}  */
	static public function nglGetVertexArrayIndexed64iv(vaobj:Int,index:Int,pname:Int,param:haxe.Int64):Void;
/** Single return value version of: {@link #glCreateBuffers CreateBuffers}  */
/** Alternative version of: {@link #glCreateBuffers CreateBuffers}  */
/**
 * Returns {@code n} previously unused buffer names in {@code buffers}, each representing a new buffer object initialized as if it had been bound to an
 * unspecified target.
 *
 * @param n       the number of buffer names to create
 * @param buffers the buffer in which to return the names
 */
	static public function glCreateBuffers(n:Int,buffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (buffers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glMapNamedBufferRange MapNamedBufferRange}  */
	static public function nglMapNamedBufferRange(buffer:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):haxe.Int64;
/**
 * Returns information about a transform feedback object.
 *
 * @param xfb   zero or the name of an existing transform feedback object
 * @param pname the parameter to query. Must be:<br>{@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER_BINDING TRANSFORM_FEEDBACK_BUFFER_BINDING}
 * @param index the transform feedback stream index
 * @param param the buffer in which to return the parameter value
 */
/** Alternative version of: {@link #glGetTransformFeedbacki_v GetTransformFeedbacki_v}  */
	static public function glGetTransformFeedbacki_v(xfb:Int,pname:Int,index:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (xfb:Int,pname:Int,index:Int,param:java.nio.ByteBuffer):Void {})
/**
 * Queries parameters of a vertex array object.
 *
 * @param vaobj the vertex array object name
 * @param pname the parameter to query. Must be:<br>{@link GL15#GL_ELEMENT_ARRAY_BUFFER_BINDING ELEMENT_ARRAY_BUFFER_BINDING}
 * @param param the buffer in which to return the parameter values
 */
/** Alternative version of: {@link #glGetVertexArrayiv GetVertexArrayiv}  */
	static public function glGetVertexArrayiv(vaobj:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (vaobj:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL11#glCopyTexSubImage2D CopyTexSubImage2D}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail number
 * @param xoffset the left texel coordinate of the texture subregion to update
 * @param yoffset the lower texel coordinate of the texture subregion to update
 * @param x       the left framebuffer pixel coordinate
 * @param y       the lower framebuffer pixel coordinate
 * @param width   the texture subregion width
 * @param height  the texture subregion height
 */
	static public function glCopyTextureSubImage2D(texture:Int,level:Int,xoffset:Int,yoffset:Int,x:Int,y:Int,width:Int,height:Int):Void;
/**
 * Queries parameters of an attribute of a vertex array object.
 *
 * @param vaobj the vertex array object name
 * @param index the attribute to query
 * @param pname the parameter to query. One of:<br>{@link GL20#GL_VERTEX_ATTRIB_ARRAY_ENABLED VERTEX_ATTRIB_ARRAY_ENABLED}, {@link GL20#GL_VERTEX_ATTRIB_ARRAY_SIZE VERTEX_ATTRIB_ARRAY_SIZE},, {@link GL20#GL_VERTEX_ATTRIB_ARRAY_STRIDE VERTEX_ATTRIB_ARRAY_STRIDE}, {@link GL20#GL_VERTEX_ATTRIB_ARRAY_TYPE VERTEX_ATTRIB_ARRAY_TYPE}, {@link GL20#GL_VERTEX_ATTRIB_ARRAY_NORMALIZED VERTEX_ATTRIB_ARRAY_NORMALIZED}, {@link GL30#GL_VERTEX_ATTRIB_ARRAY_INTEGER VERTEX_ATTRIB_ARRAY_INTEGER}, {@link GL33#GL_VERTEX_ATTRIB_ARRAY_DIVISOR VERTEX_ATTRIB_ARRAY_DIVISOR}, {@link GL43#GL_VERTEX_ATTRIB_ARRAY_LONG VERTEX_ATTRIB_ARRAY_LONG}, {@link GL43#GL_VERTEX_ATTRIB_RELATIVE_OFFSET VERTEX_ATTRIB_RELATIVE_OFFSET}
 * @param param the buffer in which to return the parameter values
 */
/** Alternative version of: {@link #glGetVertexArrayIndexediv GetVertexArrayIndexediv}  */
	static public function glGetVertexArrayIndexediv(vaobj:Int,index:Int,pname:Int,param:java.nio.IntBuffer):Void;
	@:overload(function (vaobj:Int,index:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL31#glCopyBufferSubData CopyBufferSubData}.
 *
 * @param readBuffer  the source buffer object name
 * @param writeBuffer the destination buffer object name
 * @param readOffset  the source buffer object offset, in bytes
 * @param writeOffset the destination buffer object offset, in bytes
 * @param size        the number of bytes to copy
 */
	static public function glCopyNamedBufferSubData(readBuffer:Int,writeBuffer:Int,readOffset:haxe.Int64,writeOffset:haxe.Int64,size:haxe.Int64):Void;
/** Unsafe version of {@link #glCreateFramebuffers CreateFramebuffers}  */
	static public function nglCreateFramebuffers(n:Int,framebuffers:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedTextureSubImage3D CompressedTextureSubImage3D}  */
/** Buffer object offset version of: {@link #glCompressedTextureSubImage3D CompressedTextureSubImage3D}  */
/**
 * DSA version of {@link GL13#glCompressedTexSubImage3D CompressedTexSubImage3D}.
 *
 * @param texture   the texture name
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param yoffset   a texel offset in the y direction within the texture array
 * @param zoffset   a texel offset in the z direction within the texture array
 * @param width     the width of the texture subimage
 * @param height    the height of the texture subimage
 * @param depth     the depth of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTextureSubImage3D(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexArrayVertexBuffers VertexArrayVertexBuffers}  */
	static public function nglVertexArrayVertexBuffers(vaobj:Int,first:Int,count:Int,buffers:haxe.Int64,offsets:haxe.Int64,strides:haxe.Int64):Void;
/** Unsafe version of {@link #glGetTextureParameteriv GetTextureParameteriv}  */
	static public function nglGetTextureParameteriv(texture:Int,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glClearNamedFramebufferiv ClearNamedFramebufferiv}  */
	static public function nglClearNamedFramebufferiv(framebuffer:Int,buffer:Int,drawbuffer:Int,value:haxe.Int64):Void;
/**
 * DSA version of {@link GL30#glCheckFramebufferStatus CheckFramebufferStatus}.
 *
 * @param framebuffer the framebuffer name
 * @param target      the target of the framebuffer completeness check. One of:<br>{@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 */
	static public function glCheckNamedFramebufferStatus(framebuffer:Int,target:Int):Int;
/**
 * DSA version of {@link GL31#glTexBuffer TexBuffer}.
 *
 * @param texture        the texture name
 * @param internalformat the sized internal format of the data in the store belonging to {@code buffer}
 * @param buffer         the name of the buffer object whose storage to attach to the active buffer texture
 */
	static public function glTextureBuffer(texture:Int,internalformat:Int,buffer:Int):Void;
/**
 * DSA version of {@link GL11#glTexParameterfv TexParameterfv}.
 *
 * @param texture the texture name
 * @param pname   the parameter to set
 * @param params  the parameter value
 */
/** Alternative version of: {@link #glTextureParameterfv TextureParameterfv}  */
	static public function glTextureParameterfv(texture:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL30#glClearBufferuiv ClearBufferuiv}.
 *
 * @param framebuffer the framebuffer name
 * @param buffer      the buffer to clear. Must be:<br>{@link GL11#GL_COLOR COLOR}
 * @param drawbuffer  the draw buffer to clear
 * @param value       a pointer to a four-element vector specifying R, G, B and A values to clear the buffer to
 */
/** Alternative version of: {@link #glClearNamedFramebufferuiv ClearNamedFramebufferuiv}  */
	static public function glClearNamedFramebufferuiv(framebuffer:Int,buffer:Int,drawbuffer:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (framebuffer:Int,buffer:Int,drawbuffer:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glTextureSubImage3D TextureSubImage3D}  */
	static public function nglTextureSubImage3D(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:haxe.Int64):Void;
/**
 * Binds a buffer object to the element array buffer bind point of a vertex array object.
 *
 * @param vaobj  the vertex array object name
 * @param buffer the buffer object name. If {@code buffer} is zero, any existing element array buffer binding to {@code vaobj} is removed.
 */
	static public function glVertexArrayElementBuffer(vaobj:Int,buffer:Int):Void;
/**
 * DSA version of {@link GL43#glVertexAttribFormat VertexAttribFormat}.
 *
 * @param vaobj          the vertex array object name
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param normalized     if true then integer data is normalized to the range [-1, 1] or [0, 1] if it is signed or unsigned, respectively. If false then integer data is
 *                       directly converted to floating point.
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexArrayAttribFormat(vaobj:Int,attribindex:Int,size:Int,type:Int,normalized:Bool,relativeoffset:Int):Void;
/** Unsafe version of {@link #glGetTextureImage GetTextureImage}  */
	static public function nglGetTextureImage(texture:Int,level:Int,format:Int,type:Int,bufSize:Int,pixels:haxe.Int64):Void;
/**
 * DSA version of {@link GL43#glVertexAttribIFormat VertexAttribIFormat}.
 *
 * @param vaobj          the vertex array object name
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexArrayAttribIFormat(vaobj:Int,attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/** ByteBuffer version of: {@link #glGetNamedBufferSubData GetNamedBufferSubData}  */
/** DoubleBuffer version of: {@link #glGetNamedBufferSubData GetNamedBufferSubData}  */
/** FloatBuffer version of: {@link #glGetNamedBufferSubData GetNamedBufferSubData}  */
/** IntBuffer version of: {@link #glGetNamedBufferSubData GetNamedBufferSubData}  */
/** ShortBuffer version of: {@link #glGetNamedBufferSubData GetNamedBufferSubData}  */
/**
 * DSA version of {@link GL15#glGetBufferSubData GetBufferSubData}.
 *
 * @param buffer the buffer object name
 * @param offset the offset into the buffer object's data store from which data will be returned, measured in bytes
 * @param size   the size in bytes of the data store region being returned
 * @param data   a pointer to the location where buffer object data is returned
 */
	static public function glGetNamedBufferSubData(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.IntBuffer):Void {})
	@:overload(function (buffer:Int,offset:haxe.Int64,data:java.nio.ShortBuffer):Void {})
/** Single return value version of: {@link #glCreateRenderbuffers CreateRenderbuffers}  */
/** Alternative version of: {@link #glCreateRenderbuffers CreateRenderbuffers}  */
/**
 * Returns {@code n} previously unused renderbuffer names in {@code renderbuffers}, each representing a new renderbuffer object.
 *
 * @param n             the number of renderbuffer names to create
 * @param renderbuffers the buffer in which to store the created renderbuffer names
 */
	static public function glCreateRenderbuffers(n:Int,renderbuffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (renderbuffers:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetTextureParameterIuiv GetTextureParameterIuiv}  */
	static public function glGetTextureParameterIui(texture:Int,pname:Int):Int;
/**
 * DSA version of {@link GL42#glTexStorage3D TexStorage3D}.
 *
 * @param texture        the texture name
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 * @param height         the height of the texture, in texels
 * @param depth          the depth of the texture, in texels
 */
	static public function glTextureStorage3D(texture:Int,levels:Int,internalformat:Int,width:Int,height:Int,depth:Int):Void;
/**
 * Binds a buffer object to a transform feedback object.
 *
 * @param xfb    zero or the name of an existing transform feedback object
 * @param index  the transform feedback stream index
 * @param buffer the name of an existing buffer object
 */
	static public function glTransformFeedbackBufferBase(xfb:Int,index:Int,buffer:Int):Void;
/**
 * DSA version of {@link GL32#glGetBufferParameteri64v GetBufferParameteri64v}.
 *
 * @param buffer the buffer object name
 * @param pname  the symbolic name of a buffer object parameter. One of:<br>{@link GL15#GL_BUFFER_SIZE BUFFER_SIZE}, {@link GL15#GL_BUFFER_USAGE BUFFER_USAGE}, {@link GL15#GL_BUFFER_ACCESS BUFFER_ACCESS}, {@link GL15#GL_BUFFER_MAPPED BUFFER_MAPPED}, {@link GL30#GL_BUFFER_ACCESS_FLAGS BUFFER_ACCESS_FLAGS}, {@link GL30#GL_BUFFER_MAP_LENGTH BUFFER_MAP_LENGTH}, {@link GL30#GL_BUFFER_MAP_OFFSET BUFFER_MAP_OFFSET}, {@link GL44#GL_BUFFER_IMMUTABLE_STORAGE BUFFER_IMMUTABLE_STORAGE}, {@link GL44#GL_BUFFER_STORAGE_FLAGS BUFFER_STORAGE_FLAGS}
 * @param params the requested parameter
 */
/** Alternative version of: {@link #glGetNamedBufferParameteri64v GetNamedBufferParameteri64v}  */
	static public function glGetNamedBufferParameteri64v(buffer:Int,pname:Int,params:java.nio.LongBuffer):Void;
	@:overload(function (buffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL11#glCopyTexSubImage1D CopyTexSubImage1D}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail number
 * @param xoffset the left texel coordinate of the texture subregion to update
 * @param x       the left framebuffer pixel coordinate
 * @param y       the lower framebuffer pixel coordinate
 * @param width   the texture subregion width
 */
	static public function glCopyTextureSubImage1D(texture:Int,level:Int,xoffset:Int,x:Int,y:Int,width:Int):Void;
/** Unsafe version of {@link #glTextureParameterfv TextureParameterfv}  */
	static public function nglTextureParameterfv(texture:Int,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glNamedBufferSubData NamedBufferSubData}  */
	static public function nglNamedBufferSubData(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void;
/** Unsafe version of {@link #glMapNamedBuffer MapNamedBuffer}  */
	static public function nglMapNamedBuffer(buffer:Int,access:Int):haxe.Int64;
/**
 * DSA version of {@link GL30#glGetTexParameterIuiv GetTexParameterIuiv}.
 *
 * @param texture the texture name
 * @param pname   the symbolic name of a texture parameter
 * @param params  returns the texture parameter value
 */
/** Alternative version of: {@link #glGetTextureParameterIuiv GetTextureParameterIuiv}  */
	static public function glGetTextureParameterIuiv(texture:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL43#glClearBufferData ClearBufferData}.
 *
 * @param buffer         the buffer object name
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearNamedBufferData ClearNamedBufferData}  */
/** IntBuffer version of: {@link #glClearNamedBufferData ClearNamedBufferData}  */
/** ShortBuffer version of: {@link #glClearNamedBufferData ClearNamedBufferData}  */
	static public function glClearNamedBufferData(buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetNamedRenderbufferParameteriv GetNamedRenderbufferParameteriv}  */
	static public function nglGetNamedRenderbufferParameteriv(renderbuffer:Int,pname:Int,params:haxe.Int64):Void;
/**
 * DSA version of {@link GL30#glMapBufferRange MapBufferRange}.
 *
 * @param buffer the buffer object name
 * @param offset the starting offset within the buffer of the range to be mapped
 * @param length the length of the range to be mapped
 * @param access a combination of access flags indicating the desired access to the range. One or more of:<br>{@link GL30#GL_MAP_READ_BIT MAP_READ_BIT}, {@link GL30#GL_MAP_WRITE_BIT MAP_WRITE_BIT}, {@link GL30#GL_MAP_INVALIDATE_RANGE_BIT MAP_INVALIDATE_RANGE_BIT}, {@link GL30#GL_MAP_INVALIDATE_BUFFER_BIT MAP_INVALIDATE_BUFFER_BIT}, {@link GL30#GL_MAP_FLUSH_EXPLICIT_BIT MAP_FLUSH_EXPLICIT_BIT}, {@link GL30#GL_MAP_UNSYNCHRONIZED_BIT MAP_UNSYNCHRONIZED_BIT}
 */
/** Alternative version of: {@link #glMapNamedBufferRange MapNamedBufferRange}  */
	static public function glMapNamedBufferRange(buffer:Int,offset:haxe.Int64,length:haxe.Int64,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (buffer:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):java.nio.ByteBuffer {})
/**
 * DSA version of {@link GL11#glDrawBuffer DrawBuffer}.
 *
 * @param framebuffer the framebuffer name
 * @param buf         the color buffer to draw to. One of:<br>{@link GL11#GL_NONE NONE}, {@link GL11#GL_FRONT_LEFT FRONT_LEFT}, {@link GL11#GL_FRONT_RIGHT FRONT_RIGHT}, {@link GL11#GL_BACK_LEFT BACK_LEFT}, {@link GL11#GL_BACK_RIGHT BACK_RIGHT}, {@link GL11#GL_FRONT FRONT}, {@link GL11#GL_BACK BACK}, {@link GL11#GL_LEFT LEFT}, {@link GL11#GL_RIGHT RIGHT}, {@link GL11#GL_FRONT_AND_BACK FRONT_AND_BACK}, {@link GL11#GL_AUX0 AUX0}, {@link GL11#GL_AUX1 AUX1}, {@link GL11#GL_AUX2 AUX2}, {@link GL11#GL_AUX3 AUX3}, {@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, GL30.GL_COLOR_ATTACHMENT[1-15]
 */
	static public function glNamedFramebufferDrawBuffer(framebuffer:Int,buf:Int):Void;
/**
 * DSA version of {@link GL11#glGetTexParameterfv GetTexParameterfv}.
 *
 * @param texture the texture name
 * @param pname   the parameter to query
 * @param params  a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetTextureParameterfv GetTextureParameterfv}  */
	static public function glGetTextureParameterfv(texture:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL43#glVertexAttribBinding VertexAttribBinding}.
 *
 * @param vaobj        the vertex array object name
 * @param attribindex  the index of the attribute to associate with a vertex buffer binding
 * @param bindingindex the index of the vertex buffer binding with which to associate the generic vertex attribute
 */
	static public function glVertexArrayAttribBinding(vaobj:Int,attribindex:Int,bindingindex:Int):Void;
/** Unsafe version of {@link #glGetVertexArrayiv GetVertexArrayiv}  */
	static public function nglGetVertexArrayiv(vaobj:Int,pname:Int,param:haxe.Int64):Void;
/** Alternative version of: {@link #glVertexArrayVertexBuffers VertexArrayVertexBuffers}  */
/**
 * DSA version of {@link GL44#glBindVertexBuffers BindVertexBuffers}.
 *
 * @param vaobj   the vertex array object name
 * @param first   the first vertex buffer binding point
 * @param count   the number of vertex buffer binding points
 * @param buffers an array of zeros or names of existing buffers objects
 * @param offsets an array of offses
 * @param strides an array of stride values
 */
	static public function glVertexArrayVertexBuffers(vaobj:Int,first:Int,count:Int,buffers:java.nio.ByteBuffer,offsets:java.nio.ByteBuffer,strides:java.nio.ByteBuffer):Void;
	@:overload(function (vaobj:Int,first:Int,buffers:java.nio.IntBuffer,offsets:org.lwjgl.PointerBuffer,strides:java.nio.IntBuffer):Void {})
/**
 * DSA version of {@link GL30#glClearBufferfi ClearBufferfi}.
 *
 * @param framebuffer the framebuffer name
 * @param buffer      the buffer to clear. Must be:<br>{@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}
 * @param depth       the depth value to clear the buffer to
 * @param stencil     the stencil value to clear the buffer to
 */
	static public function glClearNamedFramebufferfi(framebuffer:Int,buffer:Int,depth:Float,stencil:Int):Void;
/**
 * DSA version of {@link GL30#glRenderbufferStorageMultisample RenderbufferStorageMultisample}.
 *
 * @param renderbuffer   
 * @param samples        the number of samples to be used for the renderbuffer object's storage
 * @param internalformat the internal format to use for the renderbuffer object's image. Must be a color-renderable, depth-renderable, or stencil-renderable format.
 * @param width          the width of the renderbuffer, in pixels
 * @param height         the height of the renderbuffer, in pixels
 */
	static public function glNamedRenderbufferStorageMultisample(renderbuffer:Int,samples:Int,internalformat:Int,width:Int,height:Int):Void;
/**
 * DSA version of {@link GL30#glTexParameterIiv TexParameterIiv}.
 *
 * @param texture the texture name
 * @param pname   the symbolic name of a single-valued texture parameter
 * @param params  the value of {@code pname}
 */
/** Alternative version of: {@link #glTextureParameterIiv TextureParameterIiv}  */
	static public function glTextureParameterIiv(texture:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glCreateSamplers CreateSamplers}  */
	static public function nglCreateSamplers(n:Int,samplers:haxe.Int64):Void;
/**
 * DSA version of {@link GL30#glFramebufferTextureLayer FramebufferTextureLayer}.
 *
 * @param framebuffer the framebuffer name
 * @param attachment  the attachment point of the framebuffer. One of:<br>{@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link GL30#GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link GL30#GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link GL30#GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link GL30#GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link GL30#GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link GL30#GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link GL30#GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link GL30#GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link GL30#GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link GL30#GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link GL30#GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link GL30#GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link GL30#GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link GL30#GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link GL30#GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link GL30#GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link GL30#GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link GL30#GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param texture     the texture object to attach to the framebuffer attachment point named by {@code attachment}
 * @param level       the mipmap level of {@code texture} to attach
 * @param layer       the layer of {@code texture} to attach.
 */
	static public function glNamedFramebufferTextureLayer(framebuffer:Int,attachment:Int,texture:Int,level:Int,layer:Int):Void;
/** Unsafe version of {@link #glCreateVertexArrays CreateVertexArrays}  */
	static public function nglCreateVertexArrays(n:Int,arrays:haxe.Int64):Void;
/** Unsafe version of {@link #glTextureSubImage2D TextureSubImage2D}  */
	static public function nglTextureSubImage2D(texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:haxe.Int64):Void;
/** Alternative version of: {@link #glNamedBufferStorage NamedBufferStorage}  */
/** ByteBuffer version of: {@link #glNamedBufferStorage NamedBufferStorage}  */
/** DoubleBuffer version of: {@link #glNamedBufferStorage NamedBufferStorage}  */
/** FloatBuffer version of: {@link #glNamedBufferStorage NamedBufferStorage}  */
/** IntBuffer version of: {@link #glNamedBufferStorage NamedBufferStorage}  */
/** ShortBuffer version of: {@link #glNamedBufferStorage NamedBufferStorage}  */
/**
 * DSA version of {@link GL44#glBufferStorage BufferStorage}.
 *
 * @param buffer the buffer object name
 * @param size   the size of the data store in basic machine units
 * @param data   the address in client memory of the data that should be used to initialize the buffer's data store. If {@code data} is {@code NULL}, the data store of the
 *               buffer is created, but contains undefined data. Otherwise, {@code data} should point to an array of at least {@code size} basic machine units.
 * @param flags  the bitwise {@code OR} of flags describing the intended usage of the buffer object's data store by the application. Valid flags and their meanings
 *               are as follows:
 *               <ul>
 *               <li>{@link GL44#GL_DYNAMIC_STORAGE_BIT DYNAMIC_STORAGE_BIT} &ndash; The contents of the data store may be updated after creation through calls to
 *               {@link GL15#glBufferSubData BufferSubData}. If this bit is not set, the buffer content may not be directly updated by the client. The {@code data}
 *               argument may be used to specify the initial content of the buffer's data store regardless of the presence of the {@link GL44#GL_DYNAMIC_STORAGE_BIT DYNAMIC_STORAGE_BIT}.
 *               Regardless of the presence of this bit, buffers may always be updated with server-side calls such as {@link GL31#glCopyBufferSubData CopyBufferSubData} and
 *               {@link GL43#glClearBufferSubData ClearBufferSubData}.</li>
 *               <li>{@link GL30#GL_MAP_READ_BIT MAP_READ_BIT} &ndash; The buffer's data store may be mapped by the client for read access and a pointer in the client's address space
 *               obtained that may be read from.</li>
 *               <li>{@link GL30#GL_MAP_WRITE_BIT MAP_WRITE_BIT} &ndash; The buffer's data store may be mapped by the client for write access and a pointer in the client's address
 *               space obtained that may be written to.</li>
 *               <li>{@link GL44#GL_MAP_PERSISTENT_BIT MAP_PERSISTENT_BIT} &ndash; The client may request that the server read from or write to the buffer while it is mapped. The client's
 *               pointer to the data store remains valid so long as the data store is mapped, even during execution of drawing or dispatch commands.</li>
 *               <li>{@link GL44#GL_MAP_COHERENT_BIT MAP_COHERENT_BIT} &ndash; Shared access to buffers that are simultaneously mapped for client access and are used by the server will be
 *               coherent, so long as that mapping is performed using MapBufferRange. That is, data written to the store by either the client or server will be
 *               immediately visible to the other with no further action taken by the application. In particular:
 *               <ul>
 *               <li>If {@code MAP_COHERENT_BIT} is not set and the client performs a write followed by a call to the {@link GL42#glMemoryBarrier MemoryBarrier} command with
 *               the {@link GL44#GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT CLIENT_MAPPED_BUFFER_BARRIER_BIT} set, then in subsequent commands the server will see the writes.</li>
 *               <li>If {@code MAP_COHERENT_BIT} is set and the client performs a write, then in subsequent commands the server will see the writes.</li>
 *               <li>If {@code MAP_COHERENT_BIT} is not set and the server performs a write, the application must call {@link GL42#glMemoryBarrier MemoryBarrier} with the
 *               {@link GL44#GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT CLIENT_MAPPED_BUFFER_BARRIER_BIT} set and then call {@link GL32#glFenceSync FenceSync} with {@link GL32#GL_SYNC_GPU_COMMANDS_COMPLETE SYNC_GPU_COMMANDS_COMPLETE} (or
 *               {@link GL11#glFinish Finish}). Then the CPU will see the writes after the sync is complete.</li>
 *               <li>If {@code MAP_COHERENT_BIT} is set and the server does a write, the app must call {@link GL32#glFenceSync FenceSync} with
 *               {@link GL32#GL_SYNC_GPU_COMMANDS_COMPLETE SYNC_GPU_COMMANDS_COMPLETE} (or {@link GL11#glFinish Finish}). Then the CPU will see the writes after the sync is complete.</li>
 *               </ul></li>
 *               <li>{@link GL44#GL_CLIENT_STORAGE_BIT CLIENT_STORAGE_BIT} &ndash; When all other criteria for the buffer storage allocation are met, this bit may be used by an
 *               implementation to determine whether to use storage that is local to the server or to the client to serve as the backing store for the buffer.</li>
 *               </ul>
 *               If {@code flags} contains {@link GL44#GL_MAP_PERSISTENT_BIT MAP_PERSISTENT_BIT}, it must also contain at least one of {@link GL30#GL_MAP_READ_BIT MAP_READ_BIT} or {@link GL30#GL_MAP_WRITE_BIT MAP_WRITE_BIT}.
 *               
 *               <p>It is an error to specify {@link GL44#GL_MAP_COHERENT_BIT MAP_COHERENT_BIT} without also specifying {@link GL44#GL_MAP_PERSISTENT_BIT MAP_PERSISTENT_BIT}.</p>
 */
	static public function glNamedBufferStorage(buffer:Int,size:haxe.Int64,data:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (buffer:Int,size:haxe.Int64,flags:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.ByteBuffer,flags:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.DoubleBuffer,flags:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.FloatBuffer,flags:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.IntBuffer,flags:Int):Void {})
	@:overload(function (buffer:Int,data:java.nio.ShortBuffer,flags:Int):Void {})
/** Unsafe version of {@link #glCreateRenderbuffers CreateRenderbuffers}  */
	static public function nglCreateRenderbuffers(n:Int,renderbuffers:haxe.Int64):Void;
/** Unsafe version of {@link #glGetTransformFeedbacki64_v GetTransformFeedbacki64_v}  */
	static public function nglGetTransformFeedbacki64_v(xfb:Int,pname:Int,index:Int,param:haxe.Int64):Void;
/** Single return value version of: {@link #glCreateFramebuffers CreateFramebuffers}  */
/** Alternative version of: {@link #glCreateFramebuffers CreateFramebuffers}  */
/**
 * Returns {@code n} previously unused framebuffer names in {@code framebuffers}, each representing a new framebuffer object.
 *
 * @param n            the number of framebuffer names to create
 * @param framebuffers the buffer in which to store the framebuffer names
 */
	static public function glCreateFramebuffers(n:Int,framebuffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (framebuffers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glNamedFramebufferDrawBuffers NamedFramebufferDrawBuffers}  */
	static public function nglNamedFramebufferDrawBuffers(framebuffer:Int,n:Int,bufs:haxe.Int64):Void;
/** Unsafe version of {@link #glClearNamedFramebufferuiv ClearNamedFramebufferuiv}  */
	static public function nglClearNamedFramebufferuiv(framebuffer:Int,buffer:Int,drawbuffer:Int,value:haxe.Int64):Void;
/**
 * Binds a region of a buffer object to a transform feedback object.
 *
 * @param xfb    zero or the name of an existing transform feedback object
 * @param index  the transform feedback stream index
 * @param buffer the name of an existing buffer object
 * @param offset the starting offset in basic machine units into the buffer object
 * @param size   the amount of data in machine units
 */
	static public function glTransformFeedbackBufferRange(xfb:Int,index:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;
/** Single return value version of: {@link #glGetVertexArrayIndexediv GetVertexArrayIndexediv}  */
	static public function glGetVertexArrayIndexedi(vaobj:Int,index:Int,pname:Int):Int;
/** Single return value version of: {@link #glCreateSamplers CreateSamplers}  */
/** Alternative version of: {@link #glCreateSamplers CreateSamplers}  */
/**
 * Returns {@code n} previously unused sampler names in {@code samplers}, each representing a new sampler object.
 *
 * @param n        the number of sampler object names to create
 * @param samplers the buffer in which to return the created sampler object names
 */
	static public function glCreateSamplers(n:Int,samplers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (samplers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glTextureParameterIuiv TextureParameterIuiv}  */
	static public function nglTextureParameterIuiv(texture:Int,pname:Int,params:haxe.Int64):Void;
/**
 * DSA version of {@link GL43#glTexBufferRange TexBufferRange}.
 *
 * @param texture        the texture name
 * @param internalformat the internal format of the data in the store belonging to {@code buffer}
 * @param buffer         the name of the buffer object whose storage to attach to the active buffer texture
 * @param offset         the offset of the start of the range of the buffer's data store to attach
 * @param size           the size of the range of the buffer's data store to attach
 */
	static public function glTextureBufferRange(texture:Int,internalformat:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;
/** Alternative version of: {@link #glCompressedTextureSubImage1D CompressedTextureSubImage1D}  */
/** Buffer object offset version of: {@link #glCompressedTextureSubImage1D CompressedTextureSubImage1D}  */
/**
 * DSA version of {@link GL13#glCompressedTexSubImage1D CompressedTexSubImage1D}.
 *
 * @param texture   the texture name
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param width     the width of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTextureSubImage1D(texture:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,width:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Single return value version of: {@link #glCreateQueries CreateQueries}  */
/** Alternative version of: {@link #glCreateQueries CreateQueries}  */
/**
 * Returns {@code n} previously unused query object names in {@code ids}, each representing a new query object with the specified {@code target}.
 *
 * @param target the query target. One of:<br>{@link GL15#GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param n      the number of query object names to create
 * @param ids    the buffer in which to return the created query object names
 */
	static public function glCreateQueries(target:Int,n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int):Int {})
	@:overload(function (target:Int,ids:java.nio.IntBuffer):Void {})
/**
 * DSA version of {@link GL30#glFramebufferRenderbuffer FramebufferRenderbuffer}.
 *
 * @param framebuffer        the framebuffer name
 * @param attachment         the attachment point of the framebuffer. One of:<br>{@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link GL30#GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link GL30#GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link GL30#GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link GL30#GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link GL30#GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link GL30#GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link GL30#GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link GL30#GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link GL30#GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link GL30#GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link GL30#GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link GL30#GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link GL30#GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link GL30#GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link GL30#GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link GL30#GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link GL30#GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link GL30#GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param renderbuffertarget the renderbuffer target. Must be:<br>{@link GL30#GL_RENDERBUFFER RENDERBUFFER}
 * @param renderbuffer       the name of an existing renderbuffer object of type {@code renderbuffertarget} to attach
 */
	static public function glNamedFramebufferRenderbuffer(framebuffer:Int,attachment:Int,renderbuffertarget:Int,renderbuffer:Int):Void;
/** Unsafe version of {@link #glGetCompressedTextureImage GetCompressedTextureImage}  */
	static public function nglGetCompressedTextureImage(texture:Int,level:Int,bufSize:Int,pixels:haxe.Int64):Void;
/**
 * DSA version of {@link GL20#glDisableVertexAttribArray DisableVertexAttribArray}.
 *
 * @param vaobj the vertex array object name
 * @param index the index of the generic vertex attribute to be disabled
 */
	static public function glDisableVertexArrayAttrib(vaobj:Int,index:Int):Void;
/** Unsafe version of {@link #glTextureParameteriv TextureParameteriv}  */
	static public function nglTextureParameteriv(texture:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glCreateTransformFeedbacks CreateTransformFeedbacks}  */
/** Alternative version of: {@link #glCreateTransformFeedbacks CreateTransformFeedbacks}  */
/**
 * Returns {@code n} previously unused transform feedback object names in {@code ids}, each representing a new state vector.
 *
 * @param n   the number of transform feedback object names to create
 * @param ids the buffer in which to return the names
 */
	static public function glCreateTransformFeedbacks(n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (ids:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glCompressedTextureSubImage1D CompressedTextureSubImage1D}  */
	static public function nglCompressedTextureSubImage1D(texture:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64):Void;
/** Unsafe version of {@link #glCreateTransformFeedbacks CreateTransformFeedbacks}  */
	static public function nglCreateTransformFeedbacks(n:Int,ids:haxe.Int64):Void;
/** Unsafe version of {@link #glCreateProgramPipelines CreateProgramPipelines}  */
	static public function nglCreateProgramPipelines(n:Int,pipelines:haxe.Int64):Void;
/** Unsafe version of {@link #glTextureSubImage1D TextureSubImage1D}  */
	static public function nglTextureSubImage1D(texture:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:haxe.Int64):Void;
/**
 * DSA version of {@link GL20#glEnableVertexAttribArray EnableVertexAttribArray}.
 *
 * @param vaobj the vertex array object name
 * @param index the index of the generic vertex attribute to be enabled
 */
	static public function glEnableVertexArrayAttrib(vaobj:Int,index:Int):Void;
/** Single return value version of: {@link #glGetTextureParameteriv GetTextureParameteriv}  */
	static public function glGetTextureParameteri(texture:Int,pname:Int):Int;
/** Single return value version of: {@link #glCreateVertexArrays CreateVertexArrays}  */
/** Alternative version of: {@link #glCreateVertexArrays CreateVertexArrays}  */
/**
 * Returns {@code n} previously unused vertex array object names in {@code arrays}.
 *
 * @param n      the number of vertex array object names to create
 * @param arrays the buffer in which to return the created vertex array object names
 */
	static public function glCreateVertexArrays(n:Int,arrays:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (arrays:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetVertexArrayiv GetVertexArrayiv}  */
	static public function glGetVertexArrayi(vaobj:Int,pname:Int):Int;
/** Single return value version of: {@link #glGetTextureParameterfv GetTextureParameterfv}  */
	static public function glGetTextureParameterf(texture:Int,pname:Int):Float;
/** Unsafe version of {@link #glGetNamedBufferPointerv GetNamedBufferPointerv}  */
	static public function nglGetNamedBufferPointerv(buffer:Int,pname:Int,params:haxe.Int64):Void;
/** Buffer object offset version of: {@link #glTextureSubImage3D TextureSubImage3D}  */
/**
 * DSA version of {@link GL12#glTexSubImage3D TexSubImage3D}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail-number
 * @param xoffset the x coordinate of the texel subregion
 * @param yoffset the y coordinate of the texel subregion
 * @param zoffset the z coordinate of the texel subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param depth   the subregion depth
 * @param format  the pixel data format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param pixels  the pixel data
 */
/** DoubleBuffer version of: {@link #glTextureSubImage3D TextureSubImage3D}  */
/** FloatBuffer version of: {@link #glTextureSubImage3D TextureSubImage3D}  */
/** IntBuffer version of: {@link #glTextureSubImage3D TextureSubImage3D}  */
/** ShortBuffer version of: {@link #glTextureSubImage3D TextureSubImage3D}  */
	static public function glTextureSubImage3D(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetTransformFeedbackiv GetTransformFeedbackiv}  */
	static public function nglGetTransformFeedbackiv(xfb:Int,pname:Int,param:haxe.Int64):Void;
/**
 * Binds an existing texture object to the texture unit numbered {@code unit}.
 * 
 * <p>{@code texture} must be zero or the name of an existing texture object. When {@code texture} is the name of an existing texture object, that object is
 * bound to the target, in the corresponding texture unit, that was specified when the object was created. When {@code texture} is zero, each of the targets
 * enumerated at the beginning of this section is reset to its default texture for the corresponding texture image unit.</p>
 *
 * @param unit    the texture unit number
 * @param texture the texture name
 */
	static public function glBindTextureUnit(unit:Int,texture:Int):Void;
/** Alternative version of: {@link #glCompressedTextureSubImage2D CompressedTextureSubImage2D}  */
/** Buffer object offset version of: {@link #glCompressedTextureSubImage2D CompressedTextureSubImage2D}  */
/**
 * DSA version of {@link GL13#glCompressedTexSubImage2D CompressedTexSubImage2D}.
 *
 * @param texture   the texture name
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param yoffset   a texel offset in the y direction within the texture array
 * @param width     the width of the texture subimage
 * @param height    the height of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTextureSubImage2D(texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glCreateQueries CreateQueries}  */
	static public function nglCreateQueries(target:Int,n:Int,ids:haxe.Int64):Void;
/** Single return value version of: {@link #glGetNamedBufferParameteriv GetNamedBufferParameteriv}  */
	static public function glGetNamedBufferParameteri(buffer:Int,pname:Int):Int;
/** Unsafe version of {@link #glCompressedTextureSubImage2D CompressedTextureSubImage2D}  */
	static public function nglCompressedTextureSubImage2D(texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64):Void;
/** Single value version of: {@link #glNamedFramebufferDrawBuffers NamedFramebufferDrawBuffers}  */
/** Alternative version of: {@link #glNamedFramebufferDrawBuffers NamedFramebufferDrawBuffers}  */
/**
 * DSA version of {@link GL20#glDrawBuffers DrawBuffers}.
 *
 * @param framebuffer the framebuffer name
 * @param n           the number of buffers in {@code bufs}
 * @param bufs        an array of symbolic constants specifying the buffers into which fragment colors or data values will be written. One of:<br>{@link GL11#GL_NONE NONE}, {@link GL11#GL_FRONT_LEFT FRONT_LEFT}, {@link GL11#GL_FRONT_RIGHT FRONT_RIGHT}, {@link GL11#GL_BACK_LEFT BACK_LEFT}, {@link GL11#GL_BACK_RIGHT BACK_RIGHT}, {@link GL11#GL_AUX0 AUX0}, {@link GL11#GL_AUX1 AUX1}, {@link GL11#GL_AUX2 AUX2}, {@link GL11#GL_AUX3 AUX3}, {@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, GL30.GL_COLOR_ATTACHMENT[1-15]
 */
	static public function glNamedFramebufferDrawBuffers(framebuffer:Int,n:Int,bufs:java.nio.ByteBuffer):Void;
	@:overload(function (framebuffer:Int,buf:Int):Void {})
	@:overload(function (framebuffer:Int,bufs:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glInvalidateNamedFramebufferSubData InvalidateNamedFramebufferSubData}  */
	static public function nglInvalidateNamedFramebufferSubData(framebuffer:Int,numAttachments:Int,attachments:haxe.Int64,x:Int,y:Int,width:Int,height:Int):Void;
/** Unsafe version of {@link #glTextureParameterIiv TextureParameterIiv}  */
	static public function nglTextureParameterIiv(texture:Int,pname:Int,params:haxe.Int64):Void;
/**
 * DSA version of {@link GL30#glGenerateMipmap GenerateMipmap}.
 *
 * @param texture the texture name
 */
	static public function glGenerateTextureMipmap(texture:Int):Void;
/** Unsafe version of {@link #glGetTextureParameterIuiv GetTextureParameterIuiv}  */
	static public function nglGetTextureParameterIuiv(texture:Int,pname:Int,params:haxe.Int64):Void;
/**
 * DSA version of {@link GL30#glRenderbufferStorage RenderbufferStorage}.
 *
 * @param renderbuffer   
 * @param internalformat the internal format to use for the renderbuffer object's image. Must be a color-renderable, depth-renderable, or stencil-renderable format.
 * @param width          the width of the renderbuffer, in pixels
 * @param height         the height of the renderbuffer, in pixels
 */
	static public function glNamedRenderbufferStorage(renderbuffer:Int,internalformat:Int,width:Int,height:Int):Void;
/**
 * DSA version of {@link GL30#glGetTexParameterIiv GetTexParameterIiv}.
 *
 * @param texture the texture name
 * @param pname   the symbolic name of a texture parameter
 * @param params  returns the texture parameter value
 */
/** Alternative version of: {@link #glGetTextureParameterIiv GetTextureParameterIiv}  */
	static public function glGetTextureParameterIiv(texture:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetNamedBufferSubData GetNamedBufferSubData}  */
	static public function nglGetNamedBufferSubData(buffer:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void;
/** Single return value version of: {@link #glGetTextureParameterIiv GetTextureParameterIiv}  */
	static public function glGetTextureParameterIi(texture:Int,pname:Int):Int;
/**
 * Queries parameters of an attribute of a vertex array object.
 *
 * @param vaobj the vertex array object name
 * @param index the attribute to query
 * @param pname the parameter to query. Must be:<br>{@link GL43#GL_VERTEX_BINDING_OFFSET VERTEX_BINDING_OFFSET}
 * @param param the buffer in which to return the parameter values
 */
/** Alternative version of: {@link #glGetVertexArrayIndexed64iv GetVertexArrayIndexed64iv}  */
	static public function glGetVertexArrayIndexed64iv(vaobj:Int,index:Int,pname:Int,param:java.nio.LongBuffer):Void;
	@:overload(function (vaobj:Int,index:Int,pname:Int,param:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetTextureLevelParameterfv GetTextureLevelParameterfv}  */
	static public function glGetTextureLevelParameterf(texture:Int,level:Int,pname:Int):Float;
/**
 * DSA version of {@link GL11#glTexParameteriv TexParameteriv}.
 *
 * @param texture the texture name
 * @param pname   the parameter to set
 * @param params  the parameter value
 */
/** Alternative version of: {@link #glTextureParameteriv TextureParameteriv}  */
	static public function glTextureParameteriv(texture:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glNamedBufferData NamedBufferData}  */
	static public function nglNamedBufferData(buffer:Int,size:haxe.Int64,data:haxe.Int64,usage:Int):Void;
/**
 * DSA version of {@link GL15#glGetBufferPointerv GetBufferPointerv}.
 *
 * @param buffer the buffer object name
 * @param pname  the pointer to be returned. Must be:<br>{@link GL15#GL_BUFFER_MAP_POINTER BUFFER_MAP_POINTER}
 * @param params the pointer value specified by {@code pname}
 */
/** Alternative version of: {@link #glGetNamedBufferPointerv GetNamedBufferPointerv}  */
	static public function glGetNamedBufferPointerv(buffer:Int,pname:Int,params:org.lwjgl.PointerBuffer):Void;
	@:overload(function (buffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetNamedBufferPointerv GetNamedBufferPointerv}  */
	static public function glGetNamedBufferPointer(buffer:Int,pname:Int):haxe.Int64;
/** Buffer object offset version of: {@link #glTextureSubImage2D TextureSubImage2D}  */
/**
 * DSA version of {@link GL11#glTexSubImage2D TexSubImage2D}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail-number
 * @param xoffset the left coordinate of the texel subregion
 * @param yoffset the bottom coordinate of the texel subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param format  the pixel data format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param pixels  the pixel data
 */
/** DoubleBuffer version of: {@link #glTextureSubImage2D TextureSubImage2D}  */
/** FloatBuffer version of: {@link #glTextureSubImage2D TextureSubImage2D}  */
/** IntBuffer version of: {@link #glTextureSubImage2D TextureSubImage2D}  */
/** ShortBuffer version of: {@link #glTextureSubImage2D TextureSubImage2D}  */
	static public function glTextureSubImage2D(texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * DSA version of {@link GL11#glReadBuffer ReadBuffer}.
 *
 * @param framebuffer the framebuffer name
 * @param src         the color buffer to read from. One of:<br>{@link GL11#GL_NONE NONE}, {@link GL11#GL_FRONT_LEFT FRONT_LEFT}, {@link GL11#GL_FRONT_RIGHT FRONT_RIGHT}, {@link GL11#GL_BACK_LEFT BACK_LEFT}, {@link GL11#GL_BACK_RIGHT BACK_RIGHT}, {@link GL11#GL_FRONT FRONT}, {@link GL11#GL_BACK BACK}, {@link GL11#GL_LEFT LEFT}, {@link GL11#GL_RIGHT RIGHT}, {@link GL11#GL_FRONT_AND_BACK FRONT_AND_BACK}, {@link GL11#GL_AUX0 AUX0}, {@link GL11#GL_AUX1 AUX1}, {@link GL11#GL_AUX2 AUX2}, {@link GL11#GL_AUX3 AUX3}, {@link GL30#GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, GL30.GL_COLOR_ATTACHMENT[1-15]
 */
	static public function glNamedFramebufferReadBuffer(framebuffer:Int,src:Int):Void;
/** Unsafe version of {@link #glClearNamedBufferData ClearNamedBufferData}  */
	static public function nglClearNamedBufferData(buffer:Int,internalformat:Int,format:Int,type:Int,data:haxe.Int64):Void;
/** Unsafe version of {@link #glGetNamedBufferParameteri64v GetNamedBufferParameteri64v}  */
	static public function nglGetNamedBufferParameteri64v(buffer:Int,pname:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetTextureLevelParameteriv GetTextureLevelParameteriv}  */
	static public function glGetTextureLevelParameteri(texture:Int,level:Int,pname:Int):Int;
/** Single value version of: {@link #glTextureParameterIiv TextureParameterIiv}  */
	static public function glTextureParameterIi(texture:Int,pname:Int,param:Int):Void;
/** Unsafe version of {@link #glCompressedTextureSubImage3D CompressedTextureSubImage3D}  */
	static public function nglCompressedTextureSubImage3D(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64):Void;
/**
 * DSA version of {@link GL11#glGetTexParameteriv GetTexParameteriv}.
 *
 * @param texture the texture name
 * @param pname   the parameter to query. One of:<br>{@link GL12#GL_TEXTURE_BASE_LEVEL TEXTURE_BASE_LEVEL}, {@link GL11#GL_TEXTURE_BORDER_COLOR TEXTURE_BORDER_COLOR}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MAX_LEVEL TEXTURE_MAX_LEVEL}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL11#GL_TEXTURE_PRIORITY TEXTURE_PRIORITY}, {@link GL33#GL_TEXTURE_SWIZZLE_R TEXTURE_SWIZZLE_R}, {@link GL33#GL_TEXTURE_SWIZZLE_G TEXTURE_SWIZZLE_G}, {@link GL33#GL_TEXTURE_SWIZZLE_B TEXTURE_SWIZZLE_B}, {@link GL33#GL_TEXTURE_SWIZZLE_A TEXTURE_SWIZZLE_A}, {@link GL33#GL_TEXTURE_SWIZZLE_RGBA TEXTURE_SWIZZLE_RGBA}, {@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL14#GL_DEPTH_TEXTURE_MODE DEPTH_TEXTURE_MODE}, {@link GL14#GL_GENERATE_MIPMAP GENERATE_MIPMAP}, {@link GL42#GL_IMAGE_FORMAT_COMPATIBILITY_TYPE IMAGE_FORMAT_COMPATIBILITY_TYPE}, {@link GL42#GL_TEXTURE_IMMUTABLE_FORMAT TEXTURE_IMMUTABLE_FORMAT}, {@link GL43#GL_TEXTURE_IMMUTABLE_LEVELS TEXTURE_IMMUTABLE_LEVELS}, {@link GL43#GL_TEXTURE_VIEW_MIN_LEVEL TEXTURE_VIEW_MIN_LEVEL}, {@link GL43#GL_TEXTURE_VIEW_NUM_LEVELS TEXTURE_VIEW_NUM_LEVELS}, {@link GL43#GL_TEXTURE_VIEW_MIN_LAYER TEXTURE_VIEW_MIN_LAYER}, {@link GL43#GL_TEXTURE_VIEW_NUM_LAYERS TEXTURE_VIEW_NUM_LAYERS}, {@link GL11#GL_TEXTURE_RESIDENT TEXTURE_RESIDENT}
 * @param params  a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetTextureParameteriv GetTextureParameteriv}  */
	static public function glGetTextureParameteriv(texture:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (texture:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL43#glGetFramebufferParameteriv GetFramebufferParameteriv}.
 *
 * @param framebuffer the framebuffer name
 * @param pname       a token indicating the parameter to be retrieved. One of:<br>{@link GL43#GL_FRAMEBUFFER_DEFAULT_WIDTH FRAMEBUFFER_DEFAULT_WIDTH}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_HEIGHT FRAMEBUFFER_DEFAULT_HEIGHT}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_LAYERS FRAMEBUFFER_DEFAULT_LAYERS}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_SAMPLES FRAMEBUFFER_DEFAULT_SAMPLES}, {@link GL43#GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS}
 * @param params      a variable to receive the value of the parameter named {@code pname}
 */
/** Alternative version of: {@link #glGetNamedFramebufferParameteriv GetNamedFramebufferParameteriv}  */
	static public function glGetNamedFramebufferParameteriv(framebuffer:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (framebuffer:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * DSA version of {@link GL11#glGetTexLevelParameterfv GetTexLevelParameterfv}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail number
 * @param pname   the parameter to query
 * @param params  a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetTextureLevelParameterfv GetTextureLevelParameterfv}  */
	static public function glGetTextureLevelParameterfv(texture:Int,level:Int,pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (texture:Int,level:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glCreateTextures CreateTextures}  */
/** Alternative version of: {@link #glCreateTextures CreateTextures}  */
/**
 * Returns {@code n} previously unused texture names in {@code textures}, each representing a new texture object.
 *
 * @param target   the texture target. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}
 * @param n        the number of texture names to create
 * @param textures the buffer in which to store the created texture names
 */
	static public function glCreateTextures(target:Int,n:Int,textures:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int):Int {})
	@:overload(function (target:Int,textures:java.nio.IntBuffer):Void {})
/**
 * DSA version of {@link GL43#glVertexAttribLFormat VertexAttribLFormat}.
 *
 * @param vaobj          the vertex array object name
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexArrayAttribLFormat(vaobj:Int,attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/** Unsafe version of {@link #glGetVertexArrayIndexediv GetVertexArrayIndexediv}  */
	static public function nglGetVertexArrayIndexediv(vaobj:Int,index:Int,pname:Int,param:haxe.Int64):Void;
/**
 * DSA version of {@link GL43#glClearBufferSubData ClearBufferSubData}.
 *
 * @param buffer         the buffer object name
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param offset         the offset, in basic machine units into the buffer object's data store at which to start filling
 * @param size           the size, in basic machine units of the range of the data store to fill
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearNamedBufferSubData ClearNamedBufferSubData}  */
/** IntBuffer version of: {@link #glClearNamedBufferSubData ClearNamedBufferSubData}  */
/** ShortBuffer version of: {@link #glClearNamedBufferSubData ClearNamedBufferSubData}  */
	static public function glClearNamedBufferSubData(buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/**
 * DSA version of {@link GL43#glBindVertexBuffer BindVertexBuffer}.
 *
 * @param vaobj        the vertex array object name
 * @param bindingindex the index of the vertex buffer binding point to which to bind the buffer
 * @param buffer       the name of an existing buffer to bind to the vertex buffer binding point
 * @param offset       the offset of the first element of the buffer
 * @param stride       the distance between elements within the buffer
 */
	static public function glVertexArrayVertexBuffer(vaobj:Int,bindingindex:Int,buffer:Int,offset:haxe.Int64,stride:Int):Void;
/** Unsafe version of {@link #glGetNamedBufferParameteriv GetNamedBufferParameteriv}  */
	static public function nglGetNamedBufferParameteriv(buffer:Int,pname:Int,params:haxe.Int64):Void;
/**
 * DSA version of {@link GL30#glClearBufferiv ClearBufferiv}.
 *
 * @param framebuffer the framebuffer name
 * @param buffer      the buffer to clear. One of:<br>{@link GL11#GL_COLOR COLOR}, {@link GL11#GL_STENCIL STENCIL}
 * @param drawbuffer  the draw buffer to clear
 * @param value       for color buffers, a pointer to a four-element vector specifying R, G, B and A values to clear the buffer to. For stencil buffers, a pointer to a
 *                    single stencil value to clear the buffer to.
 */
/** Alternative version of: {@link #glClearNamedFramebufferiv ClearNamedFramebufferiv}  */
	static public function glClearNamedFramebufferiv(framebuffer:Int,buffer:Int,drawbuffer:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (framebuffer:Int,buffer:Int,drawbuffer:Int,value:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetNamedRenderbufferParameteriv GetNamedRenderbufferParameteriv}  */
	static public function glGetNamedRenderbufferParameteri(renderbuffer:Int,pname:Int):Int;
/**
 * DSA version of {@link GL11#glTexParameteri TexParameteri}.
 *
 * @param texture the texture name
 * @param pname   the parameter to set. One of:<br>{@link GL12#GL_TEXTURE_BASE_LEVEL TEXTURE_BASE_LEVEL}, {@link GL11#GL_TEXTURE_BORDER_COLOR TEXTURE_BORDER_COLOR}, {@link GL14#GL_TEXTURE_COMPARE_MODE TEXTURE_COMPARE_MODE}, {@link GL14#GL_TEXTURE_COMPARE_FUNC TEXTURE_COMPARE_FUNC}, {@link GL14#GL_TEXTURE_LOD_BIAS TEXTURE_LOD_BIAS}, {@link GL11#GL_TEXTURE_MAG_FILTER TEXTURE_MAG_FILTER}, {@link GL12#GL_TEXTURE_MAX_LEVEL TEXTURE_MAX_LEVEL}, {@link GL12#GL_TEXTURE_MAX_LOD TEXTURE_MAX_LOD}, {@link GL11#GL_TEXTURE_MIN_FILTER TEXTURE_MIN_FILTER}, {@link GL12#GL_TEXTURE_MIN_LOD TEXTURE_MIN_LOD}, {@link GL11#GL_TEXTURE_PRIORITY TEXTURE_PRIORITY}, {@link GL33#GL_TEXTURE_SWIZZLE_R TEXTURE_SWIZZLE_R}, {@link GL33#GL_TEXTURE_SWIZZLE_G TEXTURE_SWIZZLE_G}, {@link GL33#GL_TEXTURE_SWIZZLE_B TEXTURE_SWIZZLE_B}, {@link GL33#GL_TEXTURE_SWIZZLE_A TEXTURE_SWIZZLE_A}, {@link GL33#GL_TEXTURE_SWIZZLE_RGBA TEXTURE_SWIZZLE_RGBA}, {@link GL11#GL_TEXTURE_WRAP_S TEXTURE_WRAP_S}, {@link GL11#GL_TEXTURE_WRAP_T TEXTURE_WRAP_T}, {@link GL12#GL_TEXTURE_WRAP_R TEXTURE_WRAP_R}, {@link GL14#GL_DEPTH_TEXTURE_MODE DEPTH_TEXTURE_MODE}, {@link GL14#GL_GENERATE_MIPMAP GENERATE_MIPMAP}
 * @param param   the parameter value
 */
	static public function glTextureParameteri(texture:Int,pname:Int,param:Int):Void;
/** Unsafe version of {@link #glInvalidateNamedFramebufferData InvalidateNamedFramebufferData}  */
	static public function nglInvalidateNamedFramebufferData(framebuffer:Int,numAttachments:Int,attachments:haxe.Int64):Void;
/**
 * DSA version of {@link GL11#glTexParameterf TexParameterf}.
 *
 * @param texture the texture name
 * @param pname   the parameter to set
 * @param param   the parameter value
 */
	static public function glTextureParameterf(texture:Int,pname:Int,param:Float):Void;
/** Buffer object offset version of: {@link #glTextureSubImage1D TextureSubImage1D}  */
/**
 * DSA version of {@link GL11#glTexSubImage1D TexSubImage1D}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail-number
 * @param xoffset the left coordinate of the texel subregion
 * @param width   the subregion width
 * @param format  the pixel data format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param pixels  the pixel data
 */
/** DoubleBuffer version of: {@link #glTextureSubImage1D TextureSubImage1D}  */
/** FloatBuffer version of: {@link #glTextureSubImage1D TextureSubImage1D}  */
/** IntBuffer version of: {@link #glTextureSubImage1D TextureSubImage1D}  */
/** ShortBuffer version of: {@link #glTextureSubImage1D TextureSubImage1D}  */
	static public function glTextureSubImage1D(texture:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,width:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetTransformFeedbackiv GetTransformFeedbackiv}  */
/** Single return value version of: {@link #glGetTransformFeedbacki_v GetTransformFeedbacki_v}  */
	static public function glGetTransformFeedbacki(xfb:Int,pname:Int,index:Int):Int;
	@:overload(function (xfb:Int,pname:Int):Int {})
/** Unsafe version of {@link #glNamedBufferStorage NamedBufferStorage}  */
	static public function nglNamedBufferStorage(buffer:Int,size:haxe.Int64,data:haxe.Int64,flags:Int):Void;
/**
 * DSA version of {@link GL43#glVertexBindingDivisor VertexBindingDivisor}.
 *
 * @param vaobj        the vertex array object name
 * @param bindingindex the index of the generic vertex attribute
 * @param divisor      the number of instances that will pass between updates of the generic attribute at slot {@code index}
 */
	static public function glVertexArrayBindingDivisor(vaobj:Int,bindingindex:Int,divisor:Int):Void;
/** Single return value version of: {@link #glGetNamedFramebufferAttachmentParameteriv GetNamedFramebufferAttachmentParameteriv}  */
	static public function glGetNamedFramebufferAttachmentParameteri(framebuffer:Int,attachment:Int,pname:Int):Int;
/** Unsafe version of {@link #glGetTextureLevelParameteriv GetTextureLevelParameteriv}  */
	static public function nglGetTextureLevelParameteriv(texture:Int,level:Int,pname:Int,params:haxe.Int64):Void;
/** Alternative version of: {@link #glGetCompressedTextureImage GetCompressedTextureImage}  */
/** Buffer object offset version of: {@link #glGetCompressedTextureImage GetCompressedTextureImage}  */
/**
 * DSA version of {@link GL13#glGetCompressedTexImage GetCompressedTexImage}.
 *
 * @param texture the texture name
 * @param level   the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param bufSize the size of the buffer to receive the retrieved pixel data
 * @param pixels  a buffer in which to return the compressed texture image
 */
	static public function glGetCompressedTextureImage(texture:Int,level:Int,bufSize:Int,pixels:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,level:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (texture:Int,level:Int,bufSize:Int,pixelsOffset:haxe.Int64):Void {})
/** Returns the {@link ARBDirectStateAccess} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBDirectStateAccess;
/** Unsafe version of {@link #glGetTransformFeedbacki_v GetTransformFeedbacki_v}  */
	static public function nglGetTransformFeedbacki_v(xfb:Int,pname:Int,index:Int,param:haxe.Int64):Void;
/** Single return value version of: {@link #glGetVertexArrayIndexed64iv GetVertexArrayIndexed64iv}  */
	static public function glGetVertexArrayIndexed64i(vaobj:Int,index:Int,pname:Int):haxe.Int64;
/**
 * Returns information about a transform feedback object.
 *
 * @param xfb   zero or the name of an existing transform feedback object
 * @param pname the parameter to query. One of:<br>{@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER_START TRANSFORM_FEEDBACK_BUFFER_START}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER_SIZE TRANSFORM_FEEDBACK_BUFFER_SIZE}
 * @param index the transform feedback stream index
 * @param param the buffer in which to return the parameter value
 */
/** Alternative version of: {@link #glGetTransformFeedbacki64_v GetTransformFeedbacki64_v}  */
	static public function glGetTransformFeedbacki64_v(xfb:Int,pname:Int,index:Int,param:java.nio.LongBuffer):Void;
	@:overload(function (xfb:Int,pname:Int,index:Int,param:java.nio.ByteBuffer):Void {})

}