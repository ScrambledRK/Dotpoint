package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL30")
@:final
/**
 * The core OpenGL 3.0 functionality. OpenGL 3.0 implementations are guaranteed to support at least versions 1.10, 1.20 and 1.30 of the shading language,
 * although versions 1.10 and 1.20 are deprecated in a forward-compatible context.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/gpu_shader4.txt">EXT_gpu_shader4</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/NV/conditional_render.txt">NV_conditional_render</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/APPLE/flush_buffer_range.txt">APPLE_flush_buffer_range</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/color_buffer_float.txt">ARB_color_buffer_float</a>, <a href="http://www.opengl.org/registry/specs/NV/depth_buffer_float.txt">NV_depth_buffer_float</a>, <a href="http://www.opengl.org/registry/specs/ARB/texture_float.txt">ARB_texture_float</a>,
 * <a href="http://www.opengl.org/registry/specs/EXT/packed_float.txt">EXT_packed_float</a> and <a href="http://www.opengl.org/registry/specs/EXT/texture_shared_exponent.txt">EXT_texture_shared_exponent</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/framebuffer_object.txt">EXT_framebuffer_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/NV/half_float.txt">NV_half_float</a> and <a href="http://www.opengl.org/registry/specs/ARB/half_float_pixel.txt">ARB_half_float_pixel</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/framebuffer_multisample.txt">EXT_framebuffer_multisample</a> and <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_blit.txt">EXT_framebuffer_blit</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/texture_integer.txt">EXT_texture_integer</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/texture_array.txt">EXT_texture_array</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/packed_depth_stencil.txt">EXT_packed_depth_stencil</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/draw_buffers2.txt">EXT_draw_buffers2</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/texture_compression_rgtc.txt">EXT_texture_compression_rgtc</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/transform_feedback.txt">EXT_transform_feedback</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/APPLE/vertex_array_object.txt">APPLE_vertex_array_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/framebuffer_sRGB.txt">EXT_framebuffer_sRGB</a></li>
 * </ul></p>
 */
extern class GL30 
{
/** GetTarget  */
	inline static public var GL_MAJOR_VERSION:Int = 33307;
/** GetTarget  */
	inline static public var GL_MINOR_VERSION:Int = 33308;
/** GetTarget  */
	inline static public var GL_NUM_EXTENSIONS:Int = 33309;
/** GetTarget  */
	inline static public var GL_CONTEXT_FLAGS:Int = 33310;
/** GetTarget  */
	inline static public var GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT:Int = 1;
/** Renamed tokens.  */
	inline static public var GL_COMPARE_REF_TO_TEXTURE:Int = 34894;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE0:Int = 12288;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE1:Int = 12289;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE2:Int = 12290;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE3:Int = 12291;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE4:Int = 12292;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE5:Int = 12293;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE6:Int = 12294;
/** Renamed tokens.  */
	inline static public var GL_CLIP_DISTANCE7:Int = 12295;
/** Renamed tokens.  */
	inline static public var GL_MAX_CLIP_DISTANCES:Int = 3378;
/** Renamed tokens.  */
	inline static public var GL_MAX_VARYING_COMPONENTS:Int = 35659;
/** Accepted by the {@code pname} parameters of GetVertexAttribdv, GetVertexAttribfv, GetVertexAttribiv, GetVertexAttribIuiv and GetVertexAttribIiv.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_INTEGER:Int = 35069;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_1D_ARRAY:Int = 36288;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_2D_ARRAY:Int = 36289;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_BUFFER:Int = 36290;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_1D_ARRAY_SHADOW:Int = 36291;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_2D_ARRAY_SHADOW:Int = 36292;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_CUBE_SHADOW:Int = 36293;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_VEC2:Int = 36294;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_VEC3:Int = 36295;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_VEC4:Int = 36296;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_1D:Int = 36297;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_2D:Int = 36298;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_3D:Int = 36299;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_CUBE:Int = 36300;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_2D_RECT:Int = 36301;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_1D_ARRAY:Int = 36302;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_2D_ARRAY:Int = 36303;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_BUFFER:Int = 36304;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_1D:Int = 36305;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_2D:Int = 36306;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_3D:Int = 36307;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_CUBE:Int = 36308;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_2D_RECT:Int = 36309;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_1D_ARRAY:Int = 36310;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_2D_ARRAY:Int = 36311;
/** Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_BUFFER:Int = 36312;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MIN_PROGRAM_TEXEL_OFFSET:Int = 35076;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PROGRAM_TEXEL_OFFSET:Int = 35077;
/** Accepted by the {@code mode} parameter of BeginConditionalRender.  */
	inline static public var GL_QUERY_WAIT:Int = 36371;
/** Accepted by the {@code mode} parameter of BeginConditionalRender.  */
	inline static public var GL_QUERY_NO_WAIT:Int = 36372;
/** Accepted by the {@code mode} parameter of BeginConditionalRender.  */
	inline static public var GL_QUERY_BY_REGION_WAIT:Int = 36373;
/** Accepted by the {@code mode} parameter of BeginConditionalRender.  */
	inline static public var GL_QUERY_BY_REGION_NO_WAIT:Int = 36374;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_READ_BIT:Int = 1;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_WRITE_BIT:Int = 2;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_INVALIDATE_RANGE_BIT:Int = 4;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_INVALIDATE_BUFFER_BIT:Int = 8;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_FLUSH_EXPLICIT_BIT:Int = 16;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_UNSYNCHRONIZED_BIT:Int = 32;
/** Accepted by the {@code pname} parameter of GetBufferParameteriv.  */
	inline static public var GL_BUFFER_ACCESS_FLAGS:Int = 37151;
/** Accepted by the {@code pname} parameter of GetBufferParameteriv.  */
	inline static public var GL_BUFFER_MAP_LENGTH:Int = 37152;
/** Accepted by the {@code pname} parameter of GetBufferParameteriv.  */
	inline static public var GL_BUFFER_MAP_OFFSET:Int = 37153;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_RGBA_FLOAT_MODE:Int = 34848;
/** Accepted by the {@code target} parameter of ClampColor and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLAMP_VERTEX_COLOR:Int = 35098;
/** Accepted by the {@code target} parameter of ClampColor and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLAMP_FRAGMENT_COLOR:Int = 35099;
/** Accepted by the {@code target} parameter of ClampColor and the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_CLAMP_READ_COLOR:Int = 35100;
/** Accepted by the {@code clamp} parameter of ClampColor.  */
	inline static public var GL_FIXED_ONLY:Int = 35101;
/**
 * Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorage, and
 * returned in the {@code data} parameter of GetTexLevelParameter and GetRenderbufferParameteriv.
 */
	inline static public var GL_DEPTH_COMPONENT32F:Int = 36012;
/**
 * Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorage, and
 * returned in the {@code data} parameter of GetTexLevelParameter and GetRenderbufferParameteriv.
 */
	inline static public var GL_DEPTH32F_STENCIL8:Int = 36013;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and
 * GetTexImage.
 */
	inline static public var GL_FLOAT_32_UNSIGNED_INT_24_8_REV:Int = 36269;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_RED_TYPE:Int = 35856;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_GREEN_TYPE:Int = 35857;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_BLUE_TYPE:Int = 35858;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_ALPHA_TYPE:Int = 35859;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_LUMINANCE_TYPE:Int = 35860;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_INTENSITY_TYPE:Int = 35861;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_DEPTH_TYPE:Int = 35862;
/** Returned by the {@code params} parameter of GetTexLevelParameter.  */
	inline static public var GL_UNSIGNED_NORMALIZED:Int = 35863;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA32F:Int = 34836;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB32F:Int = 34837;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA16F:Int = 34842;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB16F:Int = 34843;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorage.  */
	inline static public var GL_R11F_G11F_B10F:Int = 35898;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * GetSeparableFilter, ColorTable, ColorSubTable, and GetColorTable.
 */
	inline static public var GL_UNSIGNED_INT_10F_11F_11F_REV:Int = 35899;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorage.  */
	inline static public var GL_RGB9_E5:Int = 35901;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * GetSeparableFilter, ColorTable, ColorSubTable, and GetColorTable.
 */
	inline static public var GL_UNSIGNED_INT_5_9_9_9_REV:Int = 35902;
/** Accepted by the {@code pname} parameter of GetTexLevelParameterfv and GetTexLevelParameteriv.  */
	inline static public var GL_TEXTURE_SHARED_SIZE:Int = 35903;
/**
 * Accepted by the {@code target} parameter of BindFramebuffer, CheckFramebufferStatus, FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and
 * GetFramebufferAttachmentParameteriv.
 */
	inline static public var GL_FRAMEBUFFER:Int = 36160;
/**
 * Accepted by the {@code target} parameter of BindFramebuffer, CheckFramebufferStatus, FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and
 * GetFramebufferAttachmentParameteriv.
 */
	inline static public var GL_READ_FRAMEBUFFER:Int = 36008;
/**
 * Accepted by the {@code target} parameter of BindFramebuffer, CheckFramebufferStatus, FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and
 * GetFramebufferAttachmentParameteriv.
 */
	inline static public var GL_DRAW_FRAMEBUFFER:Int = 36009;
/**
 * Accepted by the {@code target} parameter of BindRenderbuffer, RenderbufferStorage, and GetRenderbufferParameteriv, and returned by
 * GetFramebufferAttachmentParameteriv.
 */
	inline static public var GL_RENDERBUFFER:Int = 36161;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorage.  */
	inline static public var GL_STENCIL_INDEX1:Int = 36166;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorage.  */
	inline static public var GL_STENCIL_INDEX4:Int = 36167;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorage.  */
	inline static public var GL_STENCIL_INDEX8:Int = 36168;
/** Accepted by the {@code internalformat} parameter of RenderbufferStorage.  */
	inline static public var GL_STENCIL_INDEX16:Int = 36169;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_WIDTH:Int = 36162;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_HEIGHT:Int = 36163;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_INTERNAL_FORMAT:Int = 36164;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_RED_SIZE:Int = 36176;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_GREEN_SIZE:Int = 36177;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_BLUE_SIZE:Int = 36178;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_ALPHA_SIZE:Int = 36179;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_DEPTH_SIZE:Int = 36180;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_STENCIL_SIZE:Int = 36181;
/** Accepted by the {@code pname} parameter of GetRenderbufferParameteriv.  */
	inline static public var GL_RENDERBUFFER_SAMPLES:Int = 36011;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int = 36048;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int = 36049;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int = 36050;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int = 36051;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:Int = 36052;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING:Int = 33296;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE:Int = 33297;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE:Int = 33298;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE:Int = 33299;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE:Int = 33300;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE:Int = 33301;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE:Int = 33302;
/** Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE:Int = 33303;
/** Returned in {@code params} by GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_FRAMEBUFFER_DEFAULT:Int = 33304;
/** Returned in {@code params} by GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_INDEX:Int = 33314;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT0:Int = 36064;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT1:Int = 36065;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT2:Int = 36066;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT3:Int = 36067;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT4:Int = 36068;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT5:Int = 36069;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT6:Int = 36070;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT7:Int = 36071;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT8:Int = 36072;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT9:Int = 36073;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT10:Int = 36074;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT11:Int = 36075;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT12:Int = 36076;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT13:Int = 36077;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT14:Int = 36078;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_COLOR_ATTACHMENT15:Int = 36079;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_DEPTH_ATTACHMENT:Int = 36096;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_STENCIL_ATTACHMENT:Int = 36128;
/** Accepted by the {@code attachment} parameter of FramebufferTexture{1D|2D|3D}, FramebufferRenderbuffer, and GetFramebufferAttachmentParameteriv.  */
	inline static public var GL_DEPTH_STENCIL_ATTACHMENT:Int = 33306;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_SAMPLES:Int = 36183;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_COMPLETE:Int = 36053;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int = 36054;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int = 36055;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER:Int = 36059;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER:Int = 36060;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_UNSUPPORTED:Int = 36061;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:Int = 36182;
/** Returned by CheckFramebufferStatus().  */
	inline static public var GL_FRAMEBUFFER_UNDEFINED:Int = 33305;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv,  and GetDoublev.  */
	inline static public var GL_FRAMEBUFFER_BINDING:Int = 36006;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv,  and GetDoublev.  */
	inline static public var GL_DRAW_FRAMEBUFFER_BINDING:Int = 36006;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv,  and GetDoublev.  */
	inline static public var GL_READ_FRAMEBUFFER_BINDING:Int = 36010;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv,  and GetDoublev.  */
	inline static public var GL_RENDERBUFFER_BINDING:Int = 36007;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv,  and GetDoublev.  */
	inline static public var GL_MAX_COLOR_ATTACHMENTS:Int = 36063;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv,  and GetDoublev.  */
	inline static public var GL_MAX_RENDERBUFFER_SIZE:Int = 34024;
/** Returned by GetError().  */
	inline static public var GL_INVALID_FRAMEBUFFER_OPERATION:Int = 1286;
/**
 * Accepted by the {@code format} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and
 * GetTexImage, by the {@code type} parameter of CopyPixels, by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D,
 * CopyTexImage2D, and RenderbufferStorage, and returned in the {@code data} parameter of GetTexLevelParameter and GetRenderbufferParameteriv.
 */
	inline static public var GL_DEPTH_STENCIL:Int = 34041;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and
 * GetTexImage.
 */
	inline static public var GL_UNSIGNED_INT_24_8:Int = 34042;
/**
 * Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorage, and
 * returned in the {@code data} parameter of GetTexLevelParameter and GetRenderbufferParameteriv.
 */
	inline static public var GL_DEPTH24_STENCIL8:Int = 35056;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_STENCIL_SIZE:Int = 35057;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, GetTexImage, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, GetConvolutionFilter, SeparableFilter2D, GetSeparableFilter,
 * ColorTable, ColorSubTable, and GetColorTable.
 * 
 * <p>Accepted by the {@code type} argument of VertexPointer, NormalPointer, ColorPointer, SecondaryColorPointer, FogCoordPointer, TexCoordPointer, and
 * VertexAttribPointer.</p>
 */
	inline static public var GL_HALF_FLOAT:Int = 5131;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_RGBA_INTEGER_MODE:Int = 36254;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA32UI:Int = 36208;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB32UI:Int = 36209;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA16UI:Int = 36214;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB16UI:Int = 36215;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA8UI:Int = 36220;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB8UI:Int = 36221;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA32I:Int = 36226;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB32I:Int = 36227;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA16I:Int = 36232;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB16I:Int = 36233;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA8I:Int = 36238;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB8I:Int = 36239;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_RED_INTEGER:Int = 36244;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_GREEN_INTEGER:Int = 36245;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_BLUE_INTEGER:Int = 36246;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_ALPHA_INTEGER:Int = 36247;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_RGB_INTEGER:Int = 36248;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_RGBA_INTEGER:Int = 36249;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_BGR_INTEGER:Int = 36250;
/** Accepted by the {@code format} parameter of TexImage1D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, DrawPixels and ReadPixels.  */
	inline static public var GL_BGRA_INTEGER:Int = 36251;
/** Accepted by the {@code target} parameter of TexParameteri, TexParameteriv, TexParameterf, TexParameterfv, GenerateMipmap, and BindTexture.  */
	inline static public var GL_TEXTURE_1D_ARRAY:Int = 35864;
/** Accepted by the {@code target} parameter of TexParameteri, TexParameteriv, TexParameterf, TexParameterfv, GenerateMipmap, and BindTexture.  */
	inline static public var GL_TEXTURE_2D_ARRAY:Int = 35866;
/** Accepted by the {@code target} parameter of TexImage3D, TexSubImage3D, CopyTexSubImage3D, CompressedTexImage3D, and CompressedTexSubImage3D.  */
	inline static public var GL_PROXY_TEXTURE_2D_ARRAY:Int = 35867;
/**
 * Accepted by the {@code target} parameter of TexImage2D, TexSubImage2D, CopyTexImage2D, CopyTexSubImage2D, CompressedTexImage2D, and
 * CompressedTexSubImage2D.
 */
	inline static public var GL_PROXY_TEXTURE_1D_ARRAY:Int = 35865;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_1D_ARRAY:Int = 35868;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_2D_ARRAY:Int = 35869;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_MAX_ARRAY_TEXTURE_LAYERS:Int = 35071;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RED_RGTC1:Int = 36283;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_SIGNED_RED_RGTC1:Int = 36284;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_RG_RGTC2:Int = 36285;
/**
 * Accepted by the {@code internalformat} parameter of TexImage2D, CopyTexImage2D, and CompressedTexImage2D and the {@code format} parameter of
 * CompressedTexSubImage2D.
 */
	inline static public var GL_COMPRESSED_SIGNED_RG_RGTC2:Int = 36286;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R8:Int = 33321;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16:Int = 33322;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG8:Int = 33323;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16:Int = 33324;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16F:Int = 33325;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R32F:Int = 33326;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16F:Int = 33327;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG32F:Int = 33328;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R8I:Int = 33329;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R8UI:Int = 33330;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16I:Int = 33331;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R16UI:Int = 33332;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R32I:Int = 33333;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_R32UI:Int = 33334;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG8I:Int = 33335;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG8UI:Int = 33336;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16I:Int = 33337;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG16UI:Int = 33338;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG32I:Int = 33339;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG32UI:Int = 33340;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_RG:Int = 33319;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RED:Int = 33317;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RG:Int = 33318;
/** Accepted by the {@code format} parameter of TexImage3D, TexImage2D, TexImage3D, TexSubImage1D, TexSubImage2D, TexSubImage3D, and ReadPixels.  */
	inline static public var GL_RG_INTEGER:Int = 33320;
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, GetBufferPointerv,
 * BindBufferRange, BindBufferOffset and BindBufferBase.
 */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER:Int = 35982;
/** Accepted by the {@code param} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_START:Int = 35972;
/** Accepted by the {@code param} parameter of GetIntegeri_v and GetBooleani_v.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_SIZE:Int = 35973;
/**
 * Accepted by the {@code param} parameter of GetIntegeri_v and GetBooleani_v, and by the {@code pname} parameter of GetBooleanv,
 * GetDoublev, GetIntegerv, and GetFloatv.
 */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_BINDING:Int = 35983;
/** Accepted by the {@code bufferMode} parameter of TransformFeedbackVaryings.  */
	inline static public var GL_INTERLEAVED_ATTRIBS:Int = 35980;
/** Accepted by the {@code bufferMode} parameter of TransformFeedbackVaryings.  */
	inline static public var GL_SEPARATE_ATTRIBS:Int = 35981;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_PRIMITIVES_GENERATED:Int = 35975;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN:Int = 35976;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_RASTERIZER_DISCARD:Int = 35977;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS:Int = 35978;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS:Int = 35979;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS:Int = 35968;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_VARYINGS:Int = 35971;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_BUFFER_MODE:Int = 35967;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH:Int = 35958;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_VERTEX_ARRAY_BINDING:Int = 34229;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_FRAMEBUFFER_SRGB:Int = 36281;
/** Function address.  */
	public var GetStringi:haxe.Int64;
/** Function address.  */
	public var ClearBufferiv:haxe.Int64;
/** Function address.  */
	public var ClearBufferuiv:haxe.Int64;
/** Function address.  */
	public var ClearBufferfv:haxe.Int64;
/** Function address.  */
	public var ClearBufferfi:haxe.Int64;
/** Function address.  */
	public var VertexAttribI1i:haxe.Int64;
/** Function address.  */
	public var VertexAttribI2i:haxe.Int64;
/** Function address.  */
	public var VertexAttribI3i:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4i:haxe.Int64;
/** Function address.  */
	public var VertexAttribI1ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribI2ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribI3ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4ui:haxe.Int64;
/** Function address.  */
	public var VertexAttribI1iv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI2iv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI3iv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4iv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI1uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI2uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI3uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4uiv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4bv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4sv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4ubv:haxe.Int64;
/** Function address.  */
	public var VertexAttribI4usv:haxe.Int64;
/** Function address.  */
	public var VertexAttribIPointer:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribIiv:haxe.Int64;
/** Function address.  */
	public var GetVertexAttribIuiv:haxe.Int64;
/** Function address.  */
	public var Uniform1ui:haxe.Int64;
/** Function address.  */
	public var Uniform2ui:haxe.Int64;
/** Function address.  */
	public var Uniform3ui:haxe.Int64;
/** Function address.  */
	public var Uniform4ui:haxe.Int64;
/** Function address.  */
	public var Uniform1uiv:haxe.Int64;
/** Function address.  */
	public var Uniform2uiv:haxe.Int64;
/** Function address.  */
	public var Uniform3uiv:haxe.Int64;
/** Function address.  */
	public var Uniform4uiv:haxe.Int64;
/** Function address.  */
	public var GetUniformuiv:haxe.Int64;
/** Function address.  */
	public var BindFragDataLocation:haxe.Int64;
/** Function address.  */
	public var GetFragDataLocation:haxe.Int64;
/** Function address.  */
	public var BeginConditionalRender:haxe.Int64;
/** Function address.  */
	public var EndConditionalRender:haxe.Int64;
/** Function address.  */
	public var MapBufferRange:haxe.Int64;
/** Function address.  */
	public var FlushMappedBufferRange:haxe.Int64;
/** Function address.  */
	public var ClampColor:haxe.Int64;
/** Function address.  */
	public var IsRenderbuffer:haxe.Int64;
/** Function address.  */
	public var BindRenderbuffer:haxe.Int64;
/** Function address.  */
	public var DeleteRenderbuffers:haxe.Int64;
/** Function address.  */
	public var GenRenderbuffers:haxe.Int64;
/** Function address.  */
	public var RenderbufferStorage:haxe.Int64;
/** Function address.  */
	public var RenderbufferStorageMultisample:haxe.Int64;
/** Function address.  */
	public var GetRenderbufferParameteriv:haxe.Int64;
/** Function address.  */
	public var IsFramebuffer:haxe.Int64;
/** Function address.  */
	public var BindFramebuffer:haxe.Int64;
/** Function address.  */
	public var DeleteFramebuffers:haxe.Int64;
/** Function address.  */
	public var GenFramebuffers:haxe.Int64;
/** Function address.  */
	public var CheckFramebufferStatus:haxe.Int64;
/** Function address.  */
	public var FramebufferTexture1D:haxe.Int64;
/** Function address.  */
	public var FramebufferTexture2D:haxe.Int64;
/** Function address.  */
	public var FramebufferTexture3D:haxe.Int64;
/** Function address.  */
	public var FramebufferTextureLayer:haxe.Int64;
/** Function address.  */
	public var FramebufferRenderbuffer:haxe.Int64;
/** Function address.  */
	public var GetFramebufferAttachmentParameteriv:haxe.Int64;
/** Function address.  */
	public var BlitFramebuffer:haxe.Int64;
/** Function address.  */
	public var GenerateMipmap:haxe.Int64;
/** Function address.  */
	public var TexParameterIiv:haxe.Int64;
/** Function address.  */
	public var TexParameterIuiv:haxe.Int64;
/** Function address.  */
	public var GetTexParameterIiv:haxe.Int64;
/** Function address.  */
	public var GetTexParameterIuiv:haxe.Int64;
/** Function address.  */
	public var ColorMaski:haxe.Int64;
/** Function address.  */
	public var GetBooleani_v:haxe.Int64;
/** Function address.  */
	public var GetIntegeri_v:haxe.Int64;
/** Function address.  */
	public var Enablei:haxe.Int64;
/** Function address.  */
	public var Disablei:haxe.Int64;
/** Function address.  */
	public var IsEnabledi:haxe.Int64;
/** Function address.  */
	public var BindBufferRange:haxe.Int64;
/** Function address.  */
	public var BindBufferBase:haxe.Int64;
/** Function address.  */
	public var BeginTransformFeedback:haxe.Int64;
/** Function address.  */
	public var EndTransformFeedback:haxe.Int64;
/** Function address.  */
	public var TransformFeedbackVaryings:haxe.Int64;
/** Function address.  */
	public var GetTransformFeedbackVarying:haxe.Int64;
/** Function address.  */
	public var BindVertexArray:haxe.Int64;
/** Function address.  */
	public var DeleteVertexArrays:haxe.Int64;
/** Function address.  */
	public var GenVertexArrays:haxe.Int64;
/** Function address.  */
	public var IsVertexArray:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glUniform3ui Uniform3ui}  */
	static public function nglUniform3ui(location:Int,v0:Int,v1:Int,v2:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Short version of {@link #glVertexAttribI4iv VertexAttribI4iv}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI4sv VertexAttribI4sv}  */
	static public function glVertexAttribI4sv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glDeleteRenderbuffers DeleteRenderbuffers}  */
/** JNI method for {@link #glDeleteRenderbuffers DeleteRenderbuffers}  */
	static public function nglDeleteRenderbuffers(n:Int,renderbuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,renderbuffers:haxe.Int64):Void {})
/** Unsafe version of {@link #glClearBufferfv ClearBufferfv}  */
/** JNI method for {@link #glClearBufferfv ClearBufferfv}  */
	static public function nglClearBufferfv(buffer:Int,drawbuffer:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,drawbuffer:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glRenderbufferStorage.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Establishes data storage, format and dimensions of a renderbuffer object's image.
 *
 * @param target         the target of the allocation. Must be:<br>{@link #GL_RENDERBUFFER RENDERBUFFER}
 * @param internalformat the internal format to use for the renderbuffer object's image. Must be a color-renderable, depth-renderable, or stencil-renderable format.
 * @param width          the width of the renderbuffer, in pixels
 * @param height         the height of the renderbuffer, in pixels
 */
	static public function glRenderbufferStorage(target:Int,internalformat:Int,width:Int,height:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the integer value of a texture parameter.
 *
 * @param target the texture target
 * @param pname  the symbolic name of a single-valued texture parameter
 * @param params the value of {@code pname}
 */
/** Alternative version of: {@link #glTexParameterIiv TexParameterIiv}  */
	static public function glTexParameterIiv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribI2iv VertexAttribI2iv}  */
/** JNI method for {@link #glVertexAttribI2iv VertexAttribI2iv}  */
	static public function nglVertexAttribI2iv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI4ui VertexAttribI4ui}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI4uiv VertexAttribI4uiv}  */
	static public function glVertexAttribI4uiv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetBooleani_v GetBooleani_v}  */
/** JNI method for {@link #glGetBooleani_v GetBooleani_v}  */
	static public function nglGetBooleani_v(target:Int,index:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,data:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI3i VertexAttribI3i}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI3iv VertexAttribI3iv}  */
	static public function glVertexAttribI3iv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glRenderbufferStorageMultisample.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Establishes data storage, format, dimensions and sample count of a renderbuffer object's image.
 * 
 * <p>{@link #glRenderbufferStorage RenderbufferStorage} is equivalent to calling this method with the samples set to zero.</p>
 *
 * @param target         the target of the allocation. Must be:<br>{@link #GL_RENDERBUFFER RENDERBUFFER}
 * @param samples        the number of samples to be used for the renderbuffer object's storage
 * @param internalformat the internal format to use for the renderbuffer object's image. Must be a color-renderable, depth-renderable, or stencil-renderable format.
 * @param width          the width of the renderbuffer, in pixels
 * @param height         the height of the renderbuffer, in pixels
 */
	static public function glRenderbufferStorageMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsVertexArray.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a vertex array object.
 *
 * @param array a value that may be the name of a vertex array object
 */
	static public function glIsVertexArray(array:Int):Bool;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindFramebuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a framebuffer to a framebuffer target.
 *
 * @param target      the framebuffer target of the binding operation. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param framebuffer the name of the framebuffer object to bind
 */
	static public function glBindFramebuffer(target:Int,framebuffer:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFramebufferTexture1D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches a level of a 1D texture object as a logical buffer to the currently bound framebuffer object.
 *
 * @param target     the framebuffer target. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param attachment the attachment point of the framebuffer. One of:<br>{@link #GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link #GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link #GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link #GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link #GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link #GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link #GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link #GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link #GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link #GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link #GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link #GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link #GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link #GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link #GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link #GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link #GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link #GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link #GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param textarget  the type of texture
 * @param texture    the texture object to attach to the framebuffer attachment point named by {@code attachment}
 * @param level      the mipmap level of {@code texture} to attach
 */
	static public function glFramebufferTexture1D(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindBufferRange.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a range within a buffer object to an indexed buffer target.
 *
 * @param target the target of the bind operation. One of:<br>{@link #GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}
 * @param index  the index of the binding point within the array specified by {@code target}
 * @param buffer a buffer object to bind to the specified binding point
 * @param offset the starting offset in basic machine units into the buffer object {@code buffer}
 * @param size   the amount of data in machine units that can be read from the buffer object while used as an indexed target
 */
	static public function glBindBufferRange(target:Int,index:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;
/** JNI method for {@link #glEndConditionalRender EndConditionalRender}  */
	static public function nglEndConditionalRender(__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttribI4ui VertexAttribI4ui}  */
	static public function nglVertexAttribI4ui(index:Int,x:Int,y:Int,z:Int,w:Int,__functionAddress:haxe.Int64):Void;
/** Alternative version of: {@link #glUniform2uiv Uniform2uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uvec2 uniform variable or a uvec2 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform2uiv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsRenderbuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a renderbuffer object.
 *
 * @param renderbuffer a value that may be the name of a renderbuffer object
 */
	static public function glIsRenderbuffer(renderbuffer:Int):Bool;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a pure integer generic vertex attribute.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 * @param w     the vertex attribute w component
 */
	static public function glVertexAttribI4i(index:Int,x:Int,y:Int,z:Int,w:Int):Void;
/** Unsafe version of {@link #glGenVertexArrays GenVertexArrays}  */
/** JNI method for {@link #glGenVertexArrays GenVertexArrays}  */
	static public function nglGenVertexArrays(n:Int,arrays:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,arrays:haxe.Int64):Void {})
/** JNI method for {@link #glIsVertexArray IsVertexArray}  */
	static public function nglIsVertexArray(array:Int,__functionAddress:haxe.Int64):Bool;
/** JNI method for {@link #glBeginConditionalRender BeginConditionalRender}  */
	static public function nglBeginConditionalRender(id:Int,mode:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBeginTransformFeedback BeginTransformFeedback}  */
	static public function nglBeginTransformFeedback(primitiveMode:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetTexParameterIuiv GetTexParameterIuiv}  */
	static public function glGetTexParameterIui(target:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uvec3 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 */
	static public function glUniform3ui(location:Int,v0:Int,v1:Int,v2:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGet.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the boolean value of an indexed state variable.
 *
 * @param target the indexed state to query
 * @param index  the index of the element being queried
 * @param data   a scalar or buffer in which to place the returned data
 */
	static public function glGetBooleani_v(target:Int,index:Int,data:java.nio.ByteBuffer):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4ub.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Byte version of {@link #glVertexAttribI4uiv VertexAttribI4uiv}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
	static public function glVertexAttribI4ubv(index:Int,v:java.nio.ByteBuffer):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindVertexArray.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a vertex array object
 *
 * @param array the name of the vertex array to bind
 */
	static public function glBindVertexArray(array:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Clears an individual buffer of the currently bound framebuffer object to the {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER} binding.
 *
 * @param buffer     the buffer to clear. One of:<br>{@link GL11#GL_COLOR COLOR}, {@link GL11#GL_DEPTH DEPTH}
 * @param drawbuffer the draw buffer to clear
 * @param value      for color buffers, a pointer to a four-element vector specifying R, G, B and A values to clear the buffer to. For depth buffers, a pointer to a
 *                   single depth value to clear the buffer to.
 */
/** Alternative version of: {@link #glClearBufferfv ClearBufferfv}  */
	static public function glClearBufferfv(buffer:Int,drawbuffer:Int,value:java.nio.FloatBuffer):Void;
	@:overload(function (buffer:Int,drawbuffer:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glClearBufferuiv ClearBufferuiv}  */
/** JNI method for {@link #glClearBufferuiv ClearBufferuiv}  */
	static public function nglClearBufferuiv(buffer:Int,drawbuffer:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,drawbuffer:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribI1uiv VertexAttribI1uiv}  */
/** JNI method for {@link #glVertexAttribI1uiv VertexAttribI1uiv}  */
	static public function nglVertexAttribI1uiv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindRenderbuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a renderbuffer to a renderbuffer target.
 *
 * @param target       the renderbuffer target of the binding operation. Must be:<br>{@link #GL_RENDERBUFFER RENDERBUFFER}
 * @param renderbuffer the name of the renderbuffer object to bind
 */
	static public function glBindRenderbuffer(target:Int,renderbuffer:Int):Void;
/** JNI method for {@link #glClampColor ClampColor}  */
	static public function nglClampColor(target:Int,clamp:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetTexParameterIuiv GetTexParameterIuiv}  */
/** JNI method for {@link #glGetTexParameterIuiv GetTexParameterIuiv}  */
	static public function nglGetTexParameterIuiv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glClearBufferfi ClearBufferfi}  */
	static public function nglClearBufferfi(buffer:Int,drawbuffer:Int,depth:Float,stencil:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Short version of {@link #glVertexAttribI4uiv VertexAttribI4uiv}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI4usv VertexAttribI4usv}  */
	static public function glVertexAttribI4usv(index:Int,v:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glDeleteFramebuffers DeleteFramebuffers}  */
/** JNI method for {@link #glDeleteFramebuffers DeleteFramebuffers}  */
	static public function nglDeleteFramebuffers(n:Int,framebuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,framebuffers:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearBufferfi.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Clears an individual buffer of the currently bound framebuffer object to the {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER} binding.
 *
 * @param buffer     the buffer to clear. Must be:<br>{@link #GL_DEPTH_STENCIL DEPTH_STENCIL}
 * @param drawbuffer the draw buffer to clear
 * @param depth      the depth value to clear the buffer to
 * @param stencil    the stencil value to clear the buffer to
 */
	static public function glClearBufferfi(buffer:Int,drawbuffer:Int,depth:Float,stencil:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an unsigned pure integer generic vertex attribute.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 * @param w     the vertex attribute w component
 */
	static public function glVertexAttribI4ui(index:Int,x:Int,y:Int,z:Int,w:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsEnabledi.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Tests whether an indexed capability is enabled.
 *
 * @param target the indexed capability to query
 * @param index  the index to query
 */
	static public function glIsEnabledi(target:Int,index:Int):Bool;
/** JNI method for {@link #glBindVertexArray BindVertexArray}  */
	static public function nglBindVertexArray(array:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glIsFramebuffer IsFramebuffer}  */
	static public function nglIsFramebuffer(framebuffer:Int,__functionAddress:haxe.Int64):Bool;
/** JNI method for {@link #glBindBufferBase BindBufferBase}  */
	static public function nglBindBufferBase(target:Int,index:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniform4uiv Uniform4uiv}  */
/** JNI method for {@link #glUniform4uiv Uniform4uiv}  */
	static public function nglUniform4uiv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFlushMappedBufferRange.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Indicates modifications to a range of a mapped buffer.
 *
 * @param target the target of the flush operation. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link #GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the start of the buffer subrange, in basic machine units
 * @param length the length of the buffer subrange, in basic machine units
 */
	static public function glFlushMappedBufferRange(target:Int,offset:haxe.Int64,length:haxe.Int64):Void;
/** JNI method for {@link #glUniform2ui Uniform2ui}  */
	static public function nglUniform2ui(location:Int,v0:Int,v1:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribI3iv VertexAttribI3iv}  */
/** JNI method for {@link #glVertexAttribI3iv VertexAttribI3iv}  */
	static public function nglVertexAttribI3iv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginConditionalRender.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Starts conditional rendering.
 *
 * @param id   the name of an occlusion query object whose results are used to determine if the rendering commands are discarded
 * @param mode how {@code glBeginConditionalRender} interprets the results of the occlusion query. One of:<br>{@link #GL_QUERY_WAIT QUERY_WAIT}, {@link #GL_QUERY_NO_WAIT QUERY_NO_WAIT}, {@link #GL_QUERY_BY_REGION_WAIT QUERY_BY_REGION_WAIT}, {@link #GL_QUERY_BY_REGION_NO_WAIT QUERY_BY_REGION_NO_WAIT}, {@link GL45#GL_QUERY_WAIT_INVERTED QUERY_WAIT_INVERTED}, {@link GL45#GL_QUERY_NO_WAIT_INVERTED QUERY_NO_WAIT_INVERTED}, {@link GL45#GL_QUERY_BY_REGION_WAIT_INVERTED QUERY_BY_REGION_WAIT_INVERTED}, {@link GL45#GL_QUERY_BY_REGION_NO_WAIT_INVERTED QUERY_BY_REGION_NO_WAIT_INVERTED}
 */
	static public function glBeginConditionalRender(id:Int,mode:Int):Void;
/** Alternative version of: {@link #glUniform1uiv Uniform1uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uint uniform variable or a uint uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform1uiv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenerateMipmap.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Generate mipmaps for a specified texture target.
 *
 * @param target the target to which the texture whose mimaps to generate is bound. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link #GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link #GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}
 */
	static public function glGenerateMipmap(target:Int):Void;
/** JNI method for {@link #glEndTransformFeedback EndTransformFeedback}  */
	static public function nglEndTransformFeedback(__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClampColor.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Controls color clamping.
 *
 * @param target target for color clamping. One of:<br>{@link #GL_CLAMP_VERTEX_COLOR CLAMP_VERTEX_COLOR}, {@link #GL_CLAMP_FRAGMENT_COLOR CLAMP_FRAGMENT_COLOR}, {@link #GL_CLAMP_READ_COLOR CLAMP_READ_COLOR}
 * @param clamp  whether to apply color clamping. One of:<br>{@link GL11#GL_TRUE TRUE}, {@link GL11#GL_FALSE FALSE}, {@link #GL_FIXED_ONLY FIXED_ONLY}
 */
	static public function glClampColor(target:Int,clamp:Int):Void;
/** Unsafe version of {@link #glGetUniformuiv GetUniformuiv}  */
/** JNI method for {@link #glGetUniformuiv GetUniformuiv}  */
	static public function nglGetUniformuiv(program:Int,location:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,location:Int,params:haxe.Int64):Void {})
/** Single varying version of: {@link #glTransformFeedbackVaryings TransformFeedbackVaryings}  */
/** Array version of: {@link #glTransformFeedbackVaryings TransformFeedbackVaryings}  */
/** Alternative version of: {@link #glTransformFeedbackVaryings TransformFeedbackVaryings}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTransformFeedbackVaryings.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies values to record in transform feedback buffers.
 *
 * @param program    the target program object
 * @param count      the number of varying variables used for transform feedback
 * @param varyings   an array of {@code count} zero-terminated strings specifying the names of the varying variables to use for transform feedback
 * @param bufferMode the mode used to capture the varying variables when transform feedback is active. One of:<br>{@link #GL_INTERLEAVED_ATTRIBS INTERLEAVED_ATTRIBS}, {@link #GL_SEPARATE_ATTRIBS SEPARATE_ATTRIBS}
 */
	static public function glTransformFeedbackVaryings(program:Int,count:Int,varyings:java.nio.ByteBuffer,bufferMode:Int):Void;
	@:overload(function (program:Int,varying:java.lang.CharSequence,bufferMode:Int):Void {})
	@:overload(function (program:Int,varyings:java.NativeArray<java.lang.CharSequence>,bufferMode:Int):Void {})
	@:overload(function (program:Int,varyings:org.lwjgl.PointerBuffer,bufferMode:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Clears an individual buffer of the currently bound framebuffer object to the {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER} binding.
 *
 * @param buffer     the buffer to clear. One of:<br>{@link GL11#GL_COLOR COLOR}, {@link GL11#GL_STENCIL STENCIL}
 * @param drawbuffer the draw buffer to clear
 * @param value      for color buffers, a pointer to a four-element vector specifying R, G, B and A values to clear the buffer to. For stencil buffers, a pointer to a
 *                   single stencil value to clear the buffer to.
 */
/** Alternative version of: {@link #glClearBufferiv ClearBufferiv}  */
	static public function glClearBufferiv(buffer:Int,drawbuffer:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (buffer:Int,drawbuffer:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGenFramebuffers GenFramebuffers}  */
/** JNI method for {@link #glGenFramebuffers GenFramebuffers}  */
	static public function nglGenFramebuffers(n:Int,framebuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,framebuffers:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI4i VertexAttribI4i}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI4iv VertexAttribI4iv}  */
	static public function glVertexAttribI4iv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Single value version of: {@link #glTexParameterIiv TexParameterIiv}  */
	static public function glTexParameterIi(target:Int,pname:Int,param:Int):Void;
/** JNI method for {@link #glBindBufferRange BindBufferRange}  */
	static public function nglBindBufferRange(target:Int,index:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetVertexAttribIuiv GetVertexAttribIuiv}  */
/** JNI method for {@link #glGetVertexAttribIuiv GetVertexAttribIuiv}  */
	static public function nglGetVertexAttribIuiv(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribI4sv VertexAttribI4sv}  */
/** JNI method for {@link #glVertexAttribI4sv VertexAttribI4sv}  */
	static public function nglVertexAttribI4sv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFramebufferTexture3D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches a layer of a 3D texture object as a logical buffer to the currently bound framebuffer object.
 *
 * @param target     the framebuffer target. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param attachment the attachment point of the framebuffer. One of:<br>{@link #GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link #GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link #GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link #GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link #GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link #GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link #GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link #GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link #GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link #GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link #GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link #GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link #GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link #GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link #GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link #GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link #GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link #GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link #GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param textarget  the type of texture
 * @param texture    the texture object to attach to the framebuffer attachment point named by {@code attachment}
 * @param level      the mipmap level of {@code texture} to attach
 * @param layer      the layer of a 2-dimensional image within the 3-dimensional texture.
 */
	static public function glFramebufferTexture3D(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,layer:Int):Void;
/** Unsafe version of {@link #glGetIntegeri_v GetIntegeri_v}  */
/** JNI method for {@link #glGetIntegeri_v GetIntegeri_v}  */
	static public function nglGetIntegeri_v(target:Int,index:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,index:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribI4bv VertexAttribI4bv}  */
/** JNI method for {@link #glVertexAttribI4bv VertexAttribI4bv}  */
	static public function nglVertexAttribI4bv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Alternative version of: {@link #glUniform4uiv Uniform4uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uvec4 uniform variable or a uvec4 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform4uiv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glTexParameterIuiv TexParameterIuiv}  */
/** JNI method for {@link #glTexParameterIuiv TexParameterIuiv}  */
	static public function nglTexParameterIuiv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI2i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a pure integer generic vertex attribute. The z component is implicitly set to 0 and w to 1.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 */
	static public function glVertexAttribI2i(index:Int,x:Int,y:Int):Void;
/** Single return value version of: {@link #glGetVertexAttribIuiv GetVertexAttribIuiv}  */
	static public function glGetVertexAttribIui(index:Int,pname:Int):Int;
/** JNI method for {@link #glColorMaski ColorMaski}  */
	static public function nglColorMaski(buf:Int,r:Bool,g:Bool,b:Bool,a:Bool,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexAttribI4i VertexAttribI4i}  */
	static public function nglVertexAttribI4i(index:Int,x:Int,y:Int,z:Int,w:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniform2uiv Uniform2uiv}  */
/** JNI method for {@link #glUniform2uiv Uniform2uiv}  */
	static public function nglUniform2uiv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribI3uiv VertexAttribI3uiv}  */
/** JNI method for {@link #glVertexAttribI3uiv VertexAttribI3uiv}  */
	static public function nglVertexAttribI3uiv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetTexParameterIiv GetTexParameterIiv}  */
	static public function glGetTexParameterIi(target:Int,pname:Int):Int;
/** JNI method for {@link #glVertexAttribI1ui VertexAttribI1ui}  */
	static public function nglVertexAttribI1ui(index:Int,x:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glIsEnabledi IsEnabledi}  */
	static public function nglIsEnabledi(target:Int,index:Int,__functionAddress:haxe.Int64):Bool;
/** Single value version of: {@link #glDeleteRenderbuffers DeleteRenderbuffers}  */
/** Alternative version of: {@link #glDeleteRenderbuffers DeleteRenderbuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteRenderbuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes renderbuffer objects.
 *
 * @param n             the number of renderbuffer objects to be deleted
 * @param renderbuffers an array containing {@code n} renderbuffer objects to be deleted
 */
	static public function glDeleteRenderbuffers(n:Int,renderbuffers:java.nio.ByteBuffer):Void;
	@:overload(function (renderbuffer:Int):Void {})
	@:overload(function (renderbuffers:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI1ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an unsigned pure integer generic vertex attribute. The y and z components are implicitly set to 0 and w to 1.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 */
	static public function glVertexAttribI1ui(index:Int,x:Int):Void;
/** JNI method for {@link #glBindRenderbuffer BindRenderbuffer}  */
	static public function nglBindRenderbuffer(target:Int,renderbuffer:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetRenderbufferParameteriv GetRenderbufferParameteriv}  */
	static public function glGetRenderbufferParameteri(target:Int,pname:Int):Int;
/**
 * Queries indexed string state.
 *
 * @param name  the indexed state to query. One of:<br>{@link GL11#GL_EXTENSIONS EXTENSIONS}, {@link GL20#GL_SHADING_LANGUAGE_VERSION SHADING_LANGUAGE_VERSION}
 * @param index the index of the particular element being queried
 */
	static public function glGetStringi(name:Int,index:Int):String;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glEnablei.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Enables an indexed capability.
 *
 * @param cap   the indexed capability to enable
 * @param index the index to enable
 */
	static public function glEnablei(cap:Int,index:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI1ui VertexAttribI1ui}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI1uiv VertexAttribI1uiv}  */
	static public function glVertexAttribI1uiv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform2ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uvec2 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 */
	static public function glUniform2ui(location:Int,v0:Int,v1:Int):Void;
/** Single value version of: {@link #glTexParameterIuiv TexParameterIuiv}  */
	static public function glTexParameterIui(target:Int,pname:Int,param:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI4b.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Byte version of {@link #glVertexAttribI4iv VertexAttribI4iv}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
	static public function glVertexAttribI4bv(index:Int,v:java.nio.ByteBuffer):Void;
/** Unsafe version of {@link #glMapBufferRange MapBufferRange}  */
/** JNI method for {@link #glMapBufferRange MapBufferRange}  */
	static public function nglMapBufferRange(target:Int,offset:haxe.Int64,length:haxe.Int64,access:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (target:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):haxe.Int64 {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFramebufferTexture2D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches a level of a 2D texture object as a logical buffer to the currently bound framebuffer object.
 *
 * @param target     the framebuffer target. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param attachment the attachment point of the framebuffer. One of:<br>{@link #GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link #GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link #GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link #GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link #GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link #GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link #GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link #GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link #GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link #GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link #GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link #GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link #GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link #GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link #GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link #GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link #GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link #GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link #GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param textarget  the type of texture
 * @param texture    the texture object to attach to the framebuffer attachment point named by {@code attachment}
 * @param level      the mipmap level of {@code texture} to attach
 */
	static public function glFramebufferTexture2D(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI3i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a pure integer generic vertex attribute. The w component is implicitly set to 1.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 */
	static public function glVertexAttribI3i(index:Int,x:Int,y:Int,z:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Sets the unsigned integer value of a texture parameter.
 *
 * @param target the texture target
 * @param pname  the symbolic name of a single-valued texture parameter
 * @param params the value of {@code pname}
 */
/** Alternative version of: {@link #glTexParameterIuiv TexParameterIuiv}  */
	static public function glTexParameterIuiv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetRenderbufferParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves information about a bound renderbuffer object.
 *
 * @param target the target of the query operation. Must be:<br>{@link #GL_RENDERBUFFER RENDERBUFFER}
 * @param pname  the parameter whose value to retrieve from the renderbuffer bound to {@code target}. One of:<br>{@link #GL_RENDERBUFFER_WIDTH RENDERBUFFER_WIDTH}, {@link #GL_RENDERBUFFER_HEIGHT RENDERBUFFER_HEIGHT}, {@link #GL_RENDERBUFFER_INTERNAL_FORMAT RENDERBUFFER_INTERNAL_FORMAT}, {@link #GL_RENDERBUFFER_RED_SIZE RENDERBUFFER_RED_SIZE}, {@link #GL_RENDERBUFFER_GREEN_SIZE RENDERBUFFER_GREEN_SIZE}, {@link #GL_RENDERBUFFER_BLUE_SIZE RENDERBUFFER_BLUE_SIZE}, {@link #GL_RENDERBUFFER_ALPHA_SIZE RENDERBUFFER_ALPHA_SIZE}, {@link #GL_RENDERBUFFER_DEPTH_SIZE RENDERBUFFER_DEPTH_SIZE}, {@link #GL_RENDERBUFFER_STENCIL_SIZE RENDERBUFFER_STENCIL_SIZE}, {@link #GL_RENDERBUFFER_SAMPLES RENDERBUFFER_SAMPLES}
 * @param params an array to receive the value of the queried parameter
 */
/** Alternative version of: {@link #glGetRenderbufferParameteriv GetRenderbufferParameteriv}  */
	static public function glGetRenderbufferParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glColorMaski.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Enables and disables writing of frame buffer color components.
 *
 * @param buf the index of the draw buffer whose color mask to set
 * @param r   whether R values are written or not
 * @param g   whether G values are written or not
 * @param b   whether B values are written or not
 * @param a   whether A values are written or not
 */
	static public function glColorMaski(buf:Int,r:Bool,g:Bool,b:Bool,a:Bool):Void;
/** JNI method for {@link #glVertexAttribI3i VertexAttribI3i}  */
	static public function nglVertexAttribI3i(index:Int,x:Int,y:Int,z:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glUniform1ui Uniform1ui}  */
	static public function nglUniform1ui(location:Int,v0:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glUniform3uiv Uniform3uiv}  */
/** JNI method for {@link #glUniform3uiv Uniform3uiv}  */
	static public function nglUniform3uiv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glVertexAttribI4iv VertexAttribI4iv}  */
/** JNI method for {@link #glVertexAttribI4iv VertexAttribI4iv}  */
	static public function nglVertexAttribI4iv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetUniformuiv GetUniformuiv}  */
	static public function glGetUniformui(program:Int,location:Int):Int;
/** Unsafe version of {@link #glVertexAttribI2uiv VertexAttribI2uiv}  */
/** JNI method for {@link #glVertexAttribI2uiv VertexAttribI2uiv}  */
	static public function nglVertexAttribI2uiv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI1.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI1i VertexAttribI1i}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI1iv VertexAttribI1iv}  */
	static public function glVertexAttribI1iv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glFlushMappedBufferRange FlushMappedBufferRange}  */
	static public function nglFlushMappedBufferRange(target:Int,offset:haxe.Int64,length:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetUniform.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the uint value(s) of a uniform variable.
 *
 * @param program  the program object to be queried
 * @param location the location of the uniform variable to be queried
 * @param params   the value of the specified uniform variable
 */
/** Alternative version of: {@link #glGetUniformuiv GetUniformuiv}  */
	static public function glGetUniformuiv(program:Int,location:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,location:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginConditionalRender.xhtml">OpenGL SDK Reference</a></p>
 * 
 *Ends conditional rendering.
 */
	static public function glEndConditionalRender():Void;
/** JNI method for {@link #glFramebufferTextureLayer FramebufferTextureLayer}  */
	static public function nglFramebufferTextureLayer(target:Int,attachment:Int,texture:Int,level:Int,layer:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glFramebufferTexture1D FramebufferTexture1D}  */
	static public function nglFramebufferTexture1D(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGet.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the integer value of an indexed state variable.
 *
 * @param target the indexed state to query
 * @param index  the index of the element being queried
 * @param data   a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetIntegeri_v GetIntegeri_v}  */
	static public function glGetIntegeri_v(target:Int,index:Int,data:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,index:Int,data:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGenVertexArrays GenVertexArrays}  */
/** Alternative version of: {@link #glGenVertexArrays GenVertexArrays}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenVertexArrays.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Generates vertex array object names.
 *
 * @param n      the number of vertex array object names to generate
 * @param arrays a buffer in which the generated vertex array object names are stored
 */
	static public function glGenVertexArrays(n:Int,arrays:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (arrays:java.nio.IntBuffer):Void {})
/** JNI method for {@link #glBindFramebuffer BindFramebuffer}  */
	static public function nglBindFramebuffer(target:Int,framebuffer:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFramebufferTextureLayer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches a single layer of a texture to a framebuffer
 *
 * @param target     the framebuffer target. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param attachment the attachment point of the framebuffer. One of:<br>{@link #GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link #GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link #GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link #GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link #GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link #GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link #GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link #GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link #GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link #GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link #GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link #GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link #GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link #GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link #GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link #GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link #GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link #GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link #GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param texture    the texture object to attach to the framebuffer attachment point named by {@code attachment}
 * @param level      the mipmap level of {@code texture} to attach
 * @param layer      the layer of {@code texture} to attach.
 */
	static public function glFramebufferTextureLayer(target:Int,attachment:Int,texture:Int,level:Int,layer:Int):Void;
/** Unsafe version of {@link #glGetRenderbufferParameteriv GetRenderbufferParameteriv}  */
/** JNI method for {@link #glGetRenderbufferParameteriv GetRenderbufferParameteriv}  */
	static public function nglGetRenderbufferParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** String return (w/ implicit max length) version of: {@link #glGetTransformFeedbackVarying GetTransformFeedbackVarying}  */
/** String return version of: {@link #glGetTransformFeedbackVarying GetTransformFeedbackVarying}  */
/** Alternative version of: {@link #glGetTransformFeedbackVarying GetTransformFeedbackVarying}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetTransformFeedbackVarying.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrieves information about varying variables selected for transform feedback.
 *
 * @param program the target program object
 * @param index   the index of the varying variable whose information to retrieve
 * @param bufSize the maximum number of characters, including the null terminator, that may be written into {@code name}
 * @param length  a variable which will receive the number of characters written into {@code name}, excluding the null-terminator. If {@code length} is NULL no length is returned.
 * @param size    a variable that will receive the size of the varying
 * @param type    a variable that will receive the type of the varying
 * @param name    a buffer into which will be written the name of the varying
 */
	static public function glGetTransformFeedbackVarying(program:Int,index:Int,bufSize:Int,length:java.nio.ByteBuffer,size:java.nio.ByteBuffer,type:java.nio.ByteBuffer,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,index:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,bufSize:Int,size:java.nio.IntBuffer,type:java.nio.IntBuffer):String {})
	@:overload(function (program:Int,index:Int,length:java.nio.IntBuffer,size:java.nio.IntBuffer,type:java.nio.IntBuffer,name:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glVertexAttribI4usv VertexAttribI4usv}  */
/** JNI method for {@link #glVertexAttribI4usv VertexAttribI4usv}  */
	static public function nglVertexAttribI4usv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribI2i VertexAttribI2i}  */
	static public function nglVertexAttribI2i(index:Int,x:Int,y:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGenRenderbuffers GenRenderbuffers}  */
/** JNI method for {@link #glGenRenderbuffers GenRenderbuffers}  */
	static public function nglGenRenderbuffers(n:Int,renderbuffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,renderbuffers:haxe.Int64):Void {})
/** JNI method for {@link #glVertexAttribI2ui VertexAttribI2ui}  */
	static public function nglVertexAttribI2ui(index:Int,x:Int,y:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGetFramebufferAttachmentParameteriv GetFramebufferAttachmentParameteriv}  */
/** JNI method for {@link #glGetFramebufferAttachmentParameteriv GetFramebufferAttachmentParameteriv}  */
	static public function nglGetFramebufferAttachmentParameteriv(target:Int,attachment:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,attachment:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginTransformFeedback.xhtml">OpenGL SDK Reference</a></p>
 * 
 *Ends transform feedback operation.
 */
	static public function glEndTransformFeedback():Void;
/** Single return value version of: {@link #glGenFramebuffers GenFramebuffers}  */
/** Alternative version of: {@link #glGenFramebuffers GenFramebuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenFramebuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Generates framebuffer object names.
 *
 * @param n            the number of framebuffer object names to generate
 * @param framebuffers a buffer in which the generated framebuffer object names are stored
 */
	static public function glGenFramebuffers(n:Int,framebuffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (framebuffers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glClearBufferiv ClearBufferiv}  */
/** JNI method for {@link #glClearBufferiv ClearBufferiv}  */
	static public function nglClearBufferiv(buffer:Int,drawbuffer:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,drawbuffer:Int,value:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetFragDataLocation GetFragDataLocation}  */
/** JNI method for {@link #glGetFragDataLocation GetFragDataLocation}  */
	static public function nglGetFragDataLocation(program:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (program:Int,name:haxe.Int64):Int {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI3ui VertexAttribI3ui}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI3uiv VertexAttribI3uiv}  */
	static public function glVertexAttribI3uiv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glEnablei Enablei}  */
	static public function nglEnablei(cap:Int,index:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform1ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uint uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform value
 */
	static public function glUniform1ui(location:Int,v0:Int):Void;
/** JNI method for {@link #glIsRenderbuffer IsRenderbuffer}  */
	static public function nglIsRenderbuffer(renderbuffer:Int,__functionAddress:haxe.Int64):Bool;
/** JNI method for {@link #glFramebufferTexture2D FramebufferTexture2D}  */
	static public function nglFramebufferTexture2D(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI2ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an unsigned pure integer generic vertex attribute. The z component is implicitly set to 0 and w to 1.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 */
	static public function glVertexAttribI2ui(index:Int,x:Int,y:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glClearBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Clears an individual buffer of the currently bound framebuffer object to the {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER} binding.
 *
 * @param buffer     the buffer to clear. Must be:<br>{@link GL11#GL_COLOR COLOR}
 * @param drawbuffer the draw buffer to clear
 * @param value      a pointer to a four-element vector specifying R, G, B and A values to clear the buffer to
 */
/** Alternative version of: {@link #glClearBufferuiv ClearBufferuiv}  */
	static public function glClearBufferuiv(buffer:Int,drawbuffer:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (buffer:Int,drawbuffer:Int,value:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glUniform3uiv Uniform3uiv}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform3.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a single uvec3 uniform variable or a uvec3 uniform variable array for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param count    the number of elements that are to be modified. This should be 1 if the targeted uniform variable is not an array, and 1 or more if it is an array.
 * @param value    a pointer to an array of {@code count} values that will be used to update the specified uniform variable
 */
	static public function glUniform3uiv(location:Int,count:Int,value:java.nio.ByteBuffer):Void;
	@:overload(function (location:Int,value:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glBindFragDataLocation BindFragDataLocation}  */
/** JNI method for {@link #glBindFragDataLocation BindFragDataLocation}  */
	static public function nglBindFragDataLocation(program:Int,colorNumber:Int,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,colorNumber:Int,name:haxe.Int64):Void {})
/** JNI method for {@link #glCheckFramebufferStatus CheckFramebufferStatus}  */
	static public function nglCheckFramebufferStatus(target:Int,__functionAddress:haxe.Int64):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI1i.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a pure integer generic vertex attribute. The y and z components are implicitly set to 0 and w to 1.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 */
	static public function glVertexAttribI1i(index:Int,x:Int):Void;
/** JNI method for {@link #glVertexAttribI1i VertexAttribI1i}  */
	static public function nglVertexAttribI1i(index:Int,x:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glFramebufferRenderbuffer FramebufferRenderbuffer}  */
	static public function nglFramebufferRenderbuffer(target:Int,attachment:Int,renderbuffertarget:Int,renderbuffer:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMapBufferRange.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Maps a section of a buffer object's data store.
 * 
 * <p><b>LWJGL note</b>: This method comes in 2 flavors:
 * <ol>
 * <li>{@link #glMapBufferRange(int, long, long, int)} - Always returns a new ByteBuffer instance.</li>
 * <li>{@link #glMapBufferRange(int, long, long, int, ByteBuffer)} - The {@code old_buffer} parameter is reused if the specified length and returned pointer match the buffer capacity and address, respectively.</li>
 * </ol></p>
 *
 * @param target a binding to which the target buffer is bound. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link #GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the starting offset within the buffer of the range to be mapped
 * @param length the length of the range to be mapped
 * @param access a combination of access flags indicating the desired access to the range. One or more of:<br>{@link #GL_MAP_READ_BIT MAP_READ_BIT}, {@link #GL_MAP_WRITE_BIT MAP_WRITE_BIT}, {@link #GL_MAP_INVALIDATE_RANGE_BIT MAP_INVALIDATE_RANGE_BIT}, {@link #GL_MAP_INVALIDATE_BUFFER_BIT MAP_INVALIDATE_BUFFER_BIT}, {@link #GL_MAP_FLUSH_EXPLICIT_BIT MAP_FLUSH_EXPLICIT_BIT}, {@link #GL_MAP_UNSYNCHRONIZED_BIT MAP_UNSYNCHRONIZED_BIT}
 */
/** Alternative version of: {@link #glMapBufferRange MapBufferRange}  */
	static public function glMapBufferRange(target:Int,offset:haxe.Int64,length:haxe.Int64,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (target:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):java.nio.ByteBuffer {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsFramebuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a framebuffer object.
 *
 * @param framebuffer a value that may be the name of a framebuffer object
 */
	static public function glIsFramebuffer(framebuffer:Int):Bool;
/** Unsafe version of {@link #glGetStringi GetStringi}  */
/** JNI method for {@link #glGetStringi GetStringi}  */
	static public function nglGetStringi(name:Int,index:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (name:Int,index:Int):haxe.Int64 {})
/** JNI method for {@link #glUniform4ui Uniform4ui}  */
	static public function nglUniform4ui(location:Int,v0:Int,v1:Int,v2:Int,v3:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribIPointer VertexAttribIPointer}  */
/** JNI method for {@link #glVertexAttribIPointer VertexAttribIPointer}  */
	static public function nglVertexAttribIPointer(index:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointer:haxe.Int64):Void {})
/** Unsafe version of {@link #glUniform1uiv Uniform1uiv}  */
/** JNI method for {@link #glUniform1uiv Uniform1uiv}  */
	static public function nglUniform1uiv(location:Int,count:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (location:Int,count:Int,value:haxe.Int64):Void {})
/** JNI method for {@link #glDisablei Disablei}  */
	static public function nglDisablei(target:Int,index:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glVertexAttribI4uiv VertexAttribI4uiv}  */
/** JNI method for {@link #glVertexAttribI4uiv VertexAttribI4uiv}  */
	static public function nglVertexAttribI4uiv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetFramebufferAttachmentParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Retrievees information about attachments of a bound framebuffer object.
 *
 * @param target     the target of the query operation. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param attachment the attachment within {@code target}. One of:<br>{@link #GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link #GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link #GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link #GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link #GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link #GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link #GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link #GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link #GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link #GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link #GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link #GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link #GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link #GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link #GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link #GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link #GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link #GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link #GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param pname      the parameter of {@code attachment} to query. One of:<br>{@link #GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME FRAMEBUFFER_ATTACHMENT_OBJECT_NAME}, {@link #GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL}, {@link #GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER}, {@link #GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING}, {@link #GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE FRAMEBUFFER_ATTACHMENT_RED_SIZE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE FRAMEBUFFER_ATTACHMENT_GREEN_SIZE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE FRAMEBUFFER_ATTACHMENT_BLUE_SIZE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE}, {@link #GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE}
 * @param params     an array to receive the value of the queried parameter
 */
/** Alternative version of: {@link #glGetFramebufferAttachmentParameteriv GetFramebufferAttachmentParameteriv}  */
	static public function glGetFramebufferAttachmentParameteriv(target:Int,attachment:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,attachment:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glBlitFramebuffer BlitFramebuffer}  */
	static public function nglBlitFramebuffer(srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetVertexAttribIiv GetVertexAttribIiv}  */
	static public function glGetVertexAttribIi(index:Int,pname:Int):Int;
/** CharSequence version of: {@link #glGetFragDataLocation GetFragDataLocation}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetFragDataLocation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Queries the bindings of color numbers to user-defined varying out variables.
 *
 * @param program the name of the program containing varying out variable whose binding to query
 * @param name    the name of the user-defined varying out variable whose binding to query
 */
	static public function glGetFragDataLocation(program:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glVertexAttribI1iv VertexAttribI1iv}  */
/** JNI method for {@link #glVertexAttribI1iv VertexAttribI1iv}  */
	static public function nglVertexAttribI1iv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI2i VertexAttribI2i}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI2iv VertexAttribI2iv}  */
	static public function glVertexAttribI2iv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI2.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Pointer version of {@link #glVertexAttribI2ui VertexAttribI2ui}.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param v     the pure integer vertex attribute buffer
 */
/** Alternative version of: {@link #glVertexAttribI2uiv VertexAttribI2uiv}  */
	static public function glVertexAttribI2uiv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glRenderbufferStorageMultisample RenderbufferStorageMultisample}  */
	static public function nglRenderbufferStorageMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glFramebufferTexture3D FramebufferTexture3D}  */
	static public function nglFramebufferTexture3D(target:Int,attachment:Int,textarget:Int,texture:Int,level:Int,layer:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindBufferBase.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a buffer object to an indexed buffer target.
 *
 * @param target the target of the bind operation. One of:<br>{@link #GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}
 * @param index  the index of the binding point within the array specified by {@code target}
 * @param buffer a buffer object to bind to the specified binding point
 */
	static public function glBindBufferBase(target:Int,index:Int,buffer:Int):Void;
/** Unsafe version of {@link #glTexParameterIiv TexParameterIiv}  */
/** JNI method for {@link #glTexParameterIiv TexParameterIiv}  */
	static public function nglTexParameterIiv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Single value version of: {@link #glDeleteVertexArrays DeleteVertexArrays}  */
/** Alternative version of: {@link #glDeleteVertexArrays DeleteVertexArrays}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteVertexArrays.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes vertex array objects.
 *
 * @param n      the number of vertex array objects to be deleted
 * @param arrays an array containing the n names of the objects to be deleted
 */
	static public function glDeleteVertexArrays(n:Int,arrays:java.nio.ByteBuffer):Void;
	@:overload(function (array:Int):Void {})
	@:overload(function (arrays:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetVertexAttribI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Unsigned version of {@link #glGetVertexAttribIiv GetVertexAttribIiv}.
 *
 * @param index  the index of the pure integer generic vertex attribute to be modified
 * @param pname  the symbolic name of the vertex attribute parameter to be queried. Must be:<br>{@link GL20#GL_CURRENT_VERTEX_ATTRIB CURRENT_VERTEX_ATTRIB}
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribIuiv GetVertexAttribIuiv}  */
	static public function glGetVertexAttribIuiv(index:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetIntegeri_v GetIntegeri_v}  */
	static public function glGetIntegeri(target:Int,index:Int):Int;
/** Unsafe version of {@link #glGetVertexAttribIiv GetVertexAttribIiv}  */
/** JNI method for {@link #glGetVertexAttribIiv GetVertexAttribIiv}  */
	static public function nglGetVertexAttribIiv(index:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTransformFeedbackVarying GetTransformFeedbackVarying}  */
/** JNI method for {@link #glGetTransformFeedbackVarying GetTransformFeedbackVarying}  */
	static public function nglGetTransformFeedbackVarying(program:Int,index:Int,bufSize:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,index:Int,bufSize:Int,length:haxe.Int64,size:haxe.Int64,type:haxe.Int64,name:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTexParameterIiv GetTexParameterIiv}  */
/** JNI method for {@link #glGetTexParameterIiv GetTexParameterIiv}  */
	static public function nglGetTexParameterIiv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glVertexAttribIPointer VertexAttribIPointer}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribIPointer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the location and organization of a pure integer vertex attribute array.
 *
 * @param index   the index of the pure integer generic vertex attribute to be modified
 * @param size    the number of values per vertex that are stored in the array. The initial value is 4. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type    the data type of each component in the array. One of:<br>{@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_INT INT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param stride  the byte offset between consecutive generic vertex attributes. If stride is 0, the generic vertex attributes are understood to be tightly packed in
 *                the array. The initial value is 0.
 * @param pointer the vertex attribute data or the offset of the first component of the first generic vertex attribute in the array in the data store of the buffer
 *                currently bound to the {@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER} target. The initial value is 0.
 */
/** IntBuffer version of: {@link #glVertexAttribIPointer VertexAttribIPointer}  */
/** ShortBuffer version of: {@link #glVertexAttribIPointer VertexAttribIPointer}  */
	static public function glVertexAttribIPointer(index:Int,size:Int,type:Int,stride:Int,pointer:java.nio.ShortBuffer):Void;
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointerOffset:haxe.Int64):Void {})
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointer:java.nio.ByteBuffer):Void {})
	@:overload(function (index:Int,size:Int,type:Int,stride:Int,pointer:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUniform4ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of a uvec4 uniform variable for the current program object.
 *
 * @param location the location of the uniform variable to be modified
 * @param v0       the uniform x value
 * @param v1       the uniform y value
 * @param v2       the uniform z value
 * @param v3       the uniform w value
 */
	static public function glUniform4ui(location:Int,v0:Int,v1:Int,v2:Int,v3:Int):Void;
/** JNI method for {@link #glVertexAttribI3ui VertexAttribI3ui}  */
	static public function nglVertexAttribI3ui(index:Int,x:Int,y:Int,z:Int,__functionAddress:haxe.Int64):Void;
/** Single value version of: {@link #glDeleteFramebuffers DeleteFramebuffers}  */
/** Alternative version of: {@link #glDeleteFramebuffers DeleteFramebuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteFramebuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes framebuffer objects.
 *
 * @param n            the number of framebuffer objects to be deleted
 * @param framebuffers an array containing {@code n} framebuffer objects to be deleted
 */
	static public function glDeleteFramebuffers(n:Int,framebuffers:java.nio.ByteBuffer):Void;
	@:overload(function (framebuffer:Int):Void {})
	@:overload(function (framebuffers:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginTransformFeedback.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Starts transform feedback operation.
 *
 * @param primitiveMode the output type of the primitives that will be recorded into the buffer objects that are bound for transform feedback. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_TRIANGLES TRIANGLES}
 */
	static public function glBeginTransformFeedback(primitiveMode:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCheckFramebufferStatus.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Checks the completeness status of a framebuffer.
 *
 * @param target the target of the framebuffer completeness check. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 */
	static public function glCheckFramebufferStatus(target:Int):Int;
/** Unsafe version of {@link #glDeleteVertexArrays DeleteVertexArrays}  */
/** JNI method for {@link #glDeleteVertexArrays DeleteVertexArrays}  */
	static public function nglDeleteVertexArrays(n:Int,arrays:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,arrays:haxe.Int64):Void {})
/** JNI method for {@link #glRenderbufferStorage RenderbufferStorage}  */
	static public function nglRenderbufferStorage(target:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGetBooleani_v GetBooleani_v}  */
	static public function glGetBooleani(target:Int,index:Int):Bool;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDisablei.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Disables an indexed capability.
 *
 * @param target the indexed capability to disable
 * @param index  the index to disable
 */
	static public function glDisablei(target:Int,index:Int):Void;
/** Unsafe version of {@link #glVertexAttribI4ubv VertexAttribI4ubv}  */
/** JNI method for {@link #glVertexAttribI4ubv VertexAttribI4ubv}  */
	static public function nglVertexAttribI4ubv(index:Int,v:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (index:Int,v:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBlitFramebuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Copies a block of pixels from the read framebuffer to the draw framebuffer.
 *
 * @param srcX0  the lower-left coordinate of the source rectangle within the read buffer
 * @param srcY0  the upper-left coordinate of the source rectangle within the read buffer
 * @param srcX1  the lower-right coordinate of the source rectangle within the read buffer
 * @param srcY1  the upper-right coordinate of the source rectangle within the read buffer
 * @param dstX0  the lower-left coordinate of the destination rectangle within the write buffer
 * @param dstY0  the upper-left coordinate of the destination rectangle within the write buffer
 * @param dstX1  the lower-right coordinate of the destination rectangle within the write buffer
 * @param dstY1  the upper-right coordinate of the destination rectangle within the write buffer
 * @param mask   the bitwise OR of the flags indicating which buffers are to be copied. One of:<br>{@link GL11#GL_COLOR_BUFFER_BIT COLOR_BUFFER_BIT}, {@link GL11#GL_DEPTH_BUFFER_BIT DEPTH_BUFFER_BIT}, {@link GL11#GL_STENCIL_BUFFER_BIT STENCIL_BUFFER_BIT}
 * @param filter the interpolation to be applied if the image is stretched. One of:<br>{@link GL11#GL_NEAREST NEAREST}, {@link GL11#GL_LINEAR LINEAR}
 */
	static public function glBlitFramebuffer(srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glFramebufferRenderbuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Attaches a renderbuffer as a logical buffer to the currently bound framebuffer object.
 *
 * @param target             the framebuffer target. One of:<br>{@link #GL_FRAMEBUFFER FRAMEBUFFER}, {@link #GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}, {@link #GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}
 * @param attachment         the attachment point of the framebuffer. One of:<br>{@link #GL_COLOR_ATTACHMENT0 COLOR_ATTACHMENT0}, {@link #GL_COLOR_ATTACHMENT1 COLOR_ATTACHMENT1}, {@link #GL_COLOR_ATTACHMENT2 COLOR_ATTACHMENT2}, {@link #GL_COLOR_ATTACHMENT3 COLOR_ATTACHMENT3}, {@link #GL_COLOR_ATTACHMENT4 COLOR_ATTACHMENT4}, {@link #GL_COLOR_ATTACHMENT5 COLOR_ATTACHMENT5}, {@link #GL_COLOR_ATTACHMENT6 COLOR_ATTACHMENT6}, {@link #GL_COLOR_ATTACHMENT7 COLOR_ATTACHMENT7}, {@link #GL_COLOR_ATTACHMENT8 COLOR_ATTACHMENT8}, {@link #GL_COLOR_ATTACHMENT9 COLOR_ATTACHMENT9}, {@link #GL_COLOR_ATTACHMENT10 COLOR_ATTACHMENT10}, {@link #GL_COLOR_ATTACHMENT11 COLOR_ATTACHMENT11}, {@link #GL_COLOR_ATTACHMENT12 COLOR_ATTACHMENT12}, {@link #GL_COLOR_ATTACHMENT13 COLOR_ATTACHMENT13}, {@link #GL_COLOR_ATTACHMENT14 COLOR_ATTACHMENT14}, {@link #GL_COLOR_ATTACHMENT15 COLOR_ATTACHMENT15}, {@link #GL_DEPTH_ATTACHMENT DEPTH_ATTACHMENT}, {@link #GL_STENCIL_ATTACHMENT STENCIL_ATTACHMENT}, {@link #GL_DEPTH_STENCIL_ATTACHMENT DEPTH_STENCIL_ATTACHMENT}
 * @param renderbuffertarget the renderbuffer target. Must be:<br>{@link #GL_RENDERBUFFER RENDERBUFFER}
 * @param renderbuffer       the name of an existing renderbuffer object of type {@code renderbuffertarget} to attach
 */
	static public function glFramebufferRenderbuffer(target:Int,attachment:Int,renderbuffertarget:Int,renderbuffer:Int):Void;
/** Single return value version of: {@link #glGetFramebufferAttachmentParameteriv GetFramebufferAttachmentParameteriv}  */
	static public function glGetFramebufferAttachmentParameteri(target:Int,attachment:Int,pname:Int):Int;
/** JNI method for {@link #glGenerateMipmap GenerateMipmap}  */
	static public function nglGenerateMipmap(target:Int,__functionAddress:haxe.Int64):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glVertexAttribI3ui.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies the value of an unsigned pure integer generic vertex attribute. The w component is implicitly set to 1.
 *
 * @param index the index of the pure integer generic vertex attribute to be modified
 * @param x     the vertex attribute x component
 * @param y     the vertex attribute y component
 * @param z     the vertex attribute z component
 */
	static public function glVertexAttribI3ui(index:Int,x:Int,y:Int,z:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetTexParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the integer value of a texture parameter.
 *
 * @param target the texture target
 * @param pname  the symbolic name of a texture parameter
 * @param params returns the texture parameter value
 */
/** Alternative version of: {@link #glGetTexParameterIiv GetTexParameterIiv}  */
	static public function glGetTexParameterIiv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetTexParameterI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the unsigned integer value of a texture parameter.
 *
 * @param target the texture target
 * @param pname  the symbolic name of a texture parameter
 * @param params returns the texture parameter value
 */
/** Alternative version of: {@link #glGetTexParameterIuiv GetTexParameterIuiv}  */
	static public function glGetTexParameterIuiv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glTransformFeedbackVaryings TransformFeedbackVaryings}  */
/** JNI method for {@link #glTransformFeedbackVaryings TransformFeedbackVaryings}  */
	static public function nglTransformFeedbackVaryings(program:Int,count:Int,varyings:haxe.Int64,bufferMode:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (program:Int,count:Int,varyings:haxe.Int64,bufferMode:Int):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetVertexAttribI.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the value of a pure integer generic vertex attribute parameter.
 *
 * @param index  the index of the pure integer generic vertex attribute to be modified
 * @param pname  the symbolic name of the vertex attribute parameter to be queried. Must be:<br>{@link GL20#GL_CURRENT_VERTEX_ATTRIB CURRENT_VERTEX_ATTRIB}
 * @param params returns the requested data
 */
/** Alternative version of: {@link #glGetVertexAttribIiv GetVertexAttribIiv}  */
	static public function glGetVertexAttribIiv(index:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** CharSequence version of: {@link #glBindFragDataLocation BindFragDataLocation}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindFragDataLocation.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a user-defined varying out variable to a fragment shader color number.
 *
 * @param program     the name of the program containing varying out variable whose binding to modify
 * @param colorNumber the color number to bind the user-defined varying out variable to
 * @param name        the name of the user-defined varying out variable whose binding to modify
 */
	static public function glBindFragDataLocation(program:Int,colorNumber:Int,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,colorNumber:Int,name:java.lang.CharSequence):Void {})
/** Returns the {@link GL30} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL30;
/** Single return value version of: {@link #glGenRenderbuffers GenRenderbuffers}  */
/** Alternative version of: {@link #glGenRenderbuffers GenRenderbuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenRenderbuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Generates renderbuffer object names.
 *
 * @param n             the number of renderbuffer object names to generate
 * @param renderbuffers a buffer in which the generated renderbuffer object names are stored
 */
	static public function glGenRenderbuffers(n:Int,renderbuffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (renderbuffers:java.nio.IntBuffer):Void {})

}
