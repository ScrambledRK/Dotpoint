package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL12")
@:final
/**
 * The core OpenGL 1.2 functionality.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/texture3D.txt">EXT_texture3D</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/bgra.txt">EXT_bgra</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/packed_pixels.txt">EXT_packed_pixels</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/rescale_normal.txt">EXT_rescale_normal</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/separate_specular_color.txt">EXT_separate_specular_color</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/SGIS/texture_edge_clamp.txt">SGIS_texture_edge_clamp</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/SGIS/texture_lod.txt">SGIS_texture_lod</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/draw_range_elements.txt">EXT_draw_range_elements</a></li>
 * </ul></p>
 * 
 * <p>Extensions part of the <em>imaging subset</em>:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/color_table.txt">EXT_color_table</a> and <a href="http://www.opengl.org/registry/specs/EXT/color_subtable.txt">EXT_color_subtable</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/convolution.txt">EXT_convolution</a> and <a href="http://www.opengl.org/registry/specs/HP/convolution_border_modes.txt">HP_convolution_border_modes</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/SGI/color_matrix.txt">SGI_color_matrix</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/histogram.txt">EXT_histogram</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/blend_color.txt">EXT_blend_color</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/blend_minmax.txt">EXT_blend_minmax</a> and <a href="http://www.opengl.org/registry/specs/EXT/EXT_blend_subtract.txt">EXT_EXT_blend_subtract</a></li>
 * </ul></p>
 */
extern class GL12 
{
/** Aliases for smooth points and lines.  */
	inline static public var GL_ALIASED_POINT_SIZE_RANGE:Int = 33901;
/** Aliases for smooth points and lines.  */
	inline static public var GL_ALIASED_LINE_WIDTH_RANGE:Int = 33902;
/** Aliases for smooth points and lines.  */
	inline static public var GL_SMOOTH_POINT_SIZE_RANGE:Int = 2834;
/** Aliases for smooth points and lines.  */
	inline static public var GL_SMOOTH_POINT_SIZE_GRANULARITY:Int = 2835;
/** Aliases for smooth points and lines.  */
	inline static public var GL_SMOOTH_LINE_WIDTH_RANGE:Int = 2850;
/** Aliases for smooth points and lines.  */
	inline static public var GL_SMOOTH_LINE_WIDTH_GRANULARITY:Int = 2851;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_BINDING_3D:Int = 32874;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev, and by the {@code pname} parameter of PixelStore.  */
	inline static public var GL_PACK_SKIP_IMAGES:Int = 32875;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev, and by the {@code pname} parameter of PixelStore.  */
	inline static public var GL_PACK_IMAGE_HEIGHT:Int = 32876;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev, and by the {@code pname} parameter of PixelStore.  */
	inline static public var GL_UNPACK_SKIP_IMAGES:Int = 32877;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev, and by the {@code pname} parameter of PixelStore.  */
	inline static public var GL_UNPACK_IMAGE_HEIGHT:Int = 32878;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of TexImage3D, GetTexImage, GetTexLevelParameteriv, GetTexLevelParameterfv, GetTexParameteriv, and
 * GetTexParameterfv.
 */
	inline static public var GL_TEXTURE_3D:Int = 32879;
/** Accepted by the {@code target} parameter of TexImage3D, GetTexLevelParameteriv, and GetTexLevelParameterfv.  */
	inline static public var GL_PROXY_TEXTURE_3D:Int = 32880;
/** Accepted by the {@code pname} parameter of GetTexLevelParameteriv and GetTexLevelParameterfv.  */
	inline static public var GL_TEXTURE_DEPTH:Int = 32881;
/** Accepted by the {@code pname} parameter of TexParameteriv, TexParameterfv, GetTexParameteriv, and GetTexParameterfv.  */
	inline static public var GL_TEXTURE_WRAP_R:Int = 32882;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_3D_TEXTURE_SIZE:Int = 32883;
/** Accepted by the {@code format} parameter of DrawPixels, GetTexImage, ReadPixels, TexImage1D, and TexImage2D.  */
	inline static public var GL_BGR:Int = 32992;
/** Accepted by the {@code format} parameter of DrawPixels, GetTexImage, ReadPixels, TexImage1D, and TexImage2D.  */
	inline static public var GL_BGRA:Int = 32993;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_BYTE_3_3_2:Int = 32818;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_BYTE_2_3_3_REV:Int = 33634;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_SHORT_5_6_5:Int = 33635;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_SHORT_5_6_5_REV:Int = 33636;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_SHORT_4_4_4_4:Int = 32819;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_SHORT_4_4_4_4_REV:Int = 33637;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_SHORT_5_5_5_1:Int = 32820;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_SHORT_1_5_5_5_REV:Int = 33638;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_INT_8_8_8_8:Int = 32821;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_INT_8_8_8_8_REV:Int = 33639;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_INT_10_10_10_2:Int = 32822;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * SeparableFilter3D, GetSeparableFilter, ColorTable, GetColorTable, TexImage4D, and TexSubImage4D.
 */
	inline static public var GL_UNSIGNED_INT_2_10_10_10_REV:Int = 33640;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_RESCALE_NORMAL:Int = 32826;
/** Accepted by the {@code pname} parameter of LightModel*, and also by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_LIGHT_MODEL_COLOR_CONTROL:Int = 33272;
/** Accepted by the {@code param} parameter of LightModel* when {@code pname} is  LIGHT_MODEL_COLOR_CONTROL.  */
	inline static public var GL_SINGLE_COLOR:Int = 33273;
/** Accepted by the {@code param} parameter of LightModel* when {@code pname} is  LIGHT_MODEL_COLOR_CONTROL.  */
	inline static public var GL_SEPARATE_SPECULAR_COLOR:Int = 33274;
/**
 * Accepted by the {@code param} parameter of TexParameteri and TexParameterf, and by the {@code params} parameter of TexParameteriv and TexParameterfv,
 * when their {@code pname} parameter is TEXTURE_WRAP_S, TEXTURE_WRAP_T, or TEXTURE_WRAP_R.
 */
	inline static public var GL_CLAMP_TO_EDGE:Int = 33071;
/** Accepted by the {@code pname} parameter of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameteriv, and GetTexParameterfv.  */
	inline static public var GL_TEXTURE_MIN_LOD:Int = 33082;
/** Accepted by the {@code pname} parameter of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameteriv, and GetTexParameterfv.  */
	inline static public var GL_TEXTURE_MAX_LOD:Int = 33083;
/** Accepted by the {@code pname} parameter of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameteriv, and GetTexParameterfv.  */
	inline static public var GL_TEXTURE_BASE_LEVEL:Int = 33084;
/** Accepted by the {@code pname} parameter of TexParameteri, TexParameterf, TexParameteriv, TexParameterfv, GetTexParameteriv, and GetTexParameterfv.  */
	inline static public var GL_TEXTURE_MAX_LEVEL:Int = 33085;
/** Recommended maximum amounts of vertex and index data.  */
	inline static public var GL_MAX_ELEMENTS_VERTICES:Int = 33000;
/** Recommended maximum amounts of vertex and index data.  */
	inline static public var GL_MAX_ELEMENTS_INDICES:Int = 33001;
/** Function address.  */
	public var TexImage3D:haxe.Int64;
/** Function address.  */
	public var TexSubImage3D:haxe.Int64;
/** Function address.  */
	public var CopyTexSubImage3D:haxe.Int64;
/** Function address.  */
	public var DrawRangeElements:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glCopyTexSubImage3D CopyTexSubImage3D}  */
	static public function nglCopyTexSubImage3D(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** Buffer object offset version of: {@link #glTexImage3D TexImage3D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexImage3D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Specifies a three-dimensional texture image.
 *
 * @param target         the texture target. One of:<br>{@link #GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link #GL_PROXY_TEXTURE_3D PROXY_TEXTURE_3D}, {@link GL30#GL_PROXY_TEXTURE_2D_ARRAY PROXY_TEXTURE_2D_ARRAY}, {@link GL40#GL_PROXY_TEXTURE_CUBE_MAP_ARRAY PROXY_TEXTURE_CUBE_MAP_ARRAY}
 * @param level          the level-of-detail number
 * @param internalformat the texture internal format. One of:<br>{@link GL11#GL_RED RED}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL30#GL_R8 R8}, {@link GL31#GL_R8_SNORM R8_SNORM}, {@link GL30#GL_R16 R16}, {@link GL31#GL_R16_SNORM R16_SNORM}, {@link GL30#GL_RG8 RG8}, {@link GL31#GL_RG8_SNORM RG8_SNORM}, {@link GL30#GL_RG16 RG16}, {@link GL31#GL_RG16_SNORM RG16_SNORM}, {@link GL11#GL_R3_G3_B2 R3_G3_B2}, {@link GL11#GL_RGB4 RGB4}, {@link GL11#GL_RGB5 RGB5}, {@link GL41#GL_RGB565 RGB565}, {@link GL11#GL_RGB8 RGB8}, {@link GL31#GL_RGB8_SNORM RGB8_SNORM}, {@link GL11#GL_RGB10 RGB10}, {@link GL11#GL_RGB12 RGB12}, {@link GL11#GL_RGB16 RGB16}, {@link GL31#GL_RGB16_SNORM RGB16_SNORM}, {@link GL11#GL_RGBA2 RGBA2}, {@link GL11#GL_RGBA4 RGBA4}, {@link GL11#GL_RGB5_A1 RGB5_A1}, {@link GL11#GL_RGBA8 RGBA8}, {@link GL31#GL_RGBA8_SNORM RGBA8_SNORM}, {@link GL11#GL_RGB10_A2 RGB10_A2}, {@link GL33#GL_RGB10_A2UI RGB10_A2UI}, {@link GL11#GL_RGBA12 RGBA12}, {@link GL11#GL_RGBA16 RGBA16}, {@link GL31#GL_RGBA16_SNORM RGBA16_SNORM}, {@link GL21#GL_SRGB8 SRGB8}, {@link GL21#GL_SRGB8_ALPHA8 SRGB8_ALPHA8}, {@link GL30#GL_R16F R16F}, {@link GL30#GL_RG16F RG16F}, {@link GL30#GL_RGB16F RGB16F}, {@link GL30#GL_RGBA16F RGBA16F}, {@link GL30#GL_R32F R32F}, {@link GL30#GL_RG32F RG32F}, {@link GL30#GL_RGB32F RGB32F}, {@link GL30#GL_RGBA32F RGBA32F}, {@link GL30#GL_R11F_G11F_B10F R11F_G11F_B10F}, {@link GL30#GL_RGB9_E5 RGB9_E5}, {@link GL30#GL_R8I R8I}, {@link GL30#GL_R8UI R8UI}, {@link GL30#GL_R16I R16I}, {@link GL30#GL_R16UI R16UI}, {@link GL30#GL_R32I R32I}, {@link GL30#GL_R32UI R32UI}, {@link GL30#GL_RG8I RG8I}, {@link GL30#GL_RG8UI RG8UI}, {@link GL30#GL_RG16I RG16I}, {@link GL30#GL_RG16UI RG16UI}, {@link GL30#GL_RG32I RG32I}, {@link GL30#GL_RG32UI RG32UI}, {@link GL30#GL_RGB8I RGB8I}, {@link GL30#GL_RGB8UI RGB8UI}, {@link GL30#GL_RGB16I RGB16I}, {@link GL30#GL_RGB16UI RGB16UI}, {@link GL30#GL_RGB32I RGB32I}, {@link GL30#GL_RGB32UI RGB32UI}, {@link GL30#GL_RGBA8I RGBA8I}, {@link GL30#GL_RGBA8UI RGBA8UI}, {@link GL30#GL_RGBA16I RGBA16I}, {@link GL30#GL_RGBA16UI RGBA16UI}, {@link GL30#GL_RGBA32I RGBA32I}, {@link GL30#GL_RGBA32UI RGBA32UI}, {@link GL14#GL_DEPTH_COMPONENT16 DEPTH_COMPONENT16}, {@link GL14#GL_DEPTH_COMPONENT24 DEPTH_COMPONENT24}, {@link GL14#GL_DEPTH_COMPONENT32 DEPTH_COMPONENT32}, {@link GL30#GL_DEPTH24_STENCIL8 DEPTH24_STENCIL8}, {@link GL30#GL_DEPTH_COMPONENT32F DEPTH_COMPONENT32F}, {@link GL30#GL_DEPTH32F_STENCIL8 DEPTH32F_STENCIL8}, {@link GL30#GL_COMPRESSED_RED COMPRESSED_RED}, {@link GL30#GL_COMPRESSED_RG COMPRESSED_RG}, {@link GL13#GL_COMPRESSED_RGB COMPRESSED_RGB}, {@link GL13#GL_COMPRESSED_RGBA COMPRESSED_RGBA}, {@link GL21#GL_COMPRESSED_SRGB COMPRESSED_SRGB}, {@link GL21#GL_COMPRESSED_SRGB_ALPHA COMPRESSED_SRGB_ALPHA}, {@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}
 * @param width          the texture width
 * @param height         the texture height
 * @param depth          the texture depth
 * @param border         the texture border width
 * @param format         the texel data format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link #GL_BGR BGR}, {@link #GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the texel data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link #GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link #GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link #GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link #GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link #GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link #GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link #GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link #GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link #GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link #GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link #GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link #GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param pixels         the texel data
 */
/** DoubleBuffer version of: {@link #glTexImage3D TexImage3D}  */
/** FloatBuffer version of: {@link #glTexImage3D TexImage3D}  */
/** IntBuffer version of: {@link #glTexImage3D TexImage3D}  */
/** ShortBuffer version of: {@link #glTexImage3D TexImage3D}  */
	static public function glTexImage3D(target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glTexSubImage3D TexSubImage3D}  */
/** JNI method for {@link #glTexSubImage3D TexSubImage3D}  */
	static public function nglTexSubImage3D(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})
/** Buffer object offset version of: {@link #glTexSubImage3D TexSubImage3D}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glTexSubImage3D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Respecifies a cubic subregion of an existing 3D texel array. No change is made to the internalformat, width, height, depth, or border parameters of
 * the specified texel array, nor is any change made to texel values outside the specified subregion.
 *
 * @param target  the texture target. One of:<br>{@link #GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
 * @param level   the level-of-detail-number
 * @param xoffset the x coordinate of the texel subregion
 * @param yoffset the y coordinate of the texel subregion
 * @param zoffset the z coordinate of the texel subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param depth   the subregion depth
 * @param format  the pixel data format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link #GL_BGR BGR}, {@link #GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel data type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link #GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link #GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link #GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link #GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link #GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link #GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link #GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link #GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link #GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link #GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link #GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link #GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param pixels  the pixel data
 */
/** DoubleBuffer version of: {@link #glTexSubImage3D TexSubImage3D}  */
/** FloatBuffer version of: {@link #glTexSubImage3D TexSubImage3D}  */
/** IntBuffer version of: {@link #glTexSubImage3D TexSubImage3D}  */
/** ShortBuffer version of: {@link #glTexSubImage3D TexSubImage3D}  */
	static public function glTexSubImage3D(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixelsOffset:haxe.Int64):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glCopyTexSubImage3D.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Respecifies a rectangular subregion of a slice of an existing 3D texel array. No change is made to the {@code internalformat}, {@code width},
 * {@code height}, or {@code border} parameters of the specified texel array, nor is any change made to texel values outside the specified subregion. See
 * {@link GL11#glCopyTexImage2D CopyTexImage2D} for more details.
 *
 * @param target  the texture target. One of:<br>{@link #GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
 * @param level   the level-of-detail number
 * @param xoffset the x coordinate of the texture subregion to update
 * @param yoffset the y coordinate of the texture subregion to update
 * @param zoffset the z coordinate of the texture subregion to update
 * @param x       the left framebuffer pixel coordinate
 * @param y       the lower framebuffer pixel coordinate
 * @param width   the texture subregion width
 * @param height  the texture subregion height
 */
	static public function glCopyTexSubImage3D(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,x:Int,y:Int,width:Int,height:Int):Void;
/** GL_UNSIGNED_BYTE version of: {@link #glDrawRangeElements DrawRangeElements}  */
/** GL_UNSIGNED_INT version of: {@link #glDrawRangeElements DrawRangeElements}  */
/** GL_UNSIGNED_SHORT version of: {@link #glDrawRangeElements DrawRangeElements}  */
/** Alternative version of: {@link #glDrawRangeElements DrawRangeElements}  */
/** Buffer object offset version of: {@link #glDrawRangeElements DrawRangeElements}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDrawRangeElements.xhtml">OpenGL SDK Reference</a></p>
 * 
 * A restricted form of {@link GL11#glDrawElements DrawElements}. mode, start, end, and count match the corresponding arguments to glDrawElements, with the additional
 * constraint that all values in the arrays count must lie between start and end, inclusive.
 * 
 * <p>Implementations denote recommended maximum amounts of vertex and index data, which may be queried by calling glGet with argument
 * {@link #GL_MAX_ELEMENTS_VERTICES MAX_ELEMENTS_VERTICES} and {@link #GL_MAX_ELEMENTS_INDICES MAX_ELEMENTS_INDICES}. If end - start + 1 is greater than the value of GL_MAX_ELEMENTS_VERTICES, or if
 * count is greater than the value of GL_MAX_ELEMENTS_INDICES, then the call may operate at reduced performance. There is no requirement that all vertices
 * in the range start end be referenced. However, the implementation may partially process unused vertices, reducing performance from what could be
 * achieved with an optimal index set.</p>
 * 
 * <p>When glDrawRangeElements is called, it uses count sequential elements from an enabled array, starting at start to construct a sequence of geometric
 * primitives. mode specifies what kind of primitives are constructed, and how the array elements construct these primitives. If more than one array is
 * enabled, each is used.</p>
 * 
 * <p>Vertex attributes that are modified by glDrawRangeElements have an unspecified value after glDrawRangeElements returns. Attributes that aren't modified
 * maintain their previous values.
 * <h3>Errors</h3>
 * It is an error for indices to lie outside the range start end, but implementations may not check for this situation. Such indices cause
 * implementation-dependent behavior.
 * <ul>
 * <li>GL_INVALID_ENUM is generated if mode is not an accepted value.</li>
 * <li>GL_INVALID_VALUE is generated if count is negative.</li>
 * <li>GL_INVALID_VALUE is generated if end &lt; start.</li>
 * <li>GL_INVALID_OPERATION is generated if a geometry shader is active and mode is incompatible with the input primitive type of the geometry shader in the
 * currently installed program object.</li>
 * <li>GL_INVALID_OPERATION is generated if a non-zero buffer object name is bound to an enabled array or the element array and the buffer object's data
 * store is currently mapped.</li>
 * </ul></p>
 *
 * @param mode    the kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param start   the minimum array index contained in {@code indices}
 * @param end     the maximum array index contained in {@code indices}
 * @param count   the number of elements to be rendered
 * @param type    the type of the values in {@code indices}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}
 * @param indices a pointer to the location where the indices are stored
 */
	static public function glDrawRangeElements(mode:Int,start:Int,end:Int,count:Int,type:Int,indices:java.nio.ByteBuffer):Void;
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.ByteBuffer):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.IntBuffer):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,indices:java.nio.ShortBuffer):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,type:Int,indices:java.nio.ByteBuffer):Void {})
	@:overload(function (mode:Int,start:Int,end:Int,count:Int,type:Int,indicesOffset:haxe.Int64):Void {})
/** Returns the {@link GL12} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL12;
/** Unsafe version of {@link #glDrawRangeElements DrawRangeElements}  */
/** JNI method for {@link #glDrawRangeElements DrawRangeElements}  */
	static public function nglDrawRangeElements(mode:Int,start:Int,end:Int,count:Int,type:Int,indices:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (mode:Int,start:Int,end:Int,count:Int,type:Int,indices:haxe.Int64):Void {})
/** Unsafe version of {@link #glTexImage3D TexImage3D}  */
/** JNI method for {@link #glTexImage3D TexImage3D}  */
	static public function nglTexImage3D(target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,format:Int,type:Int,pixels:haxe.Int64):Void {})

}
