package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureCompression")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_compression.txt">ARB_texture_compression</a> extension.
 * 
 * <p>Compressing texture images can reduce texture memory utilization and improve performance when rendering textured primitives. This extension allows
 * OpenGL applications to use compressed texture images by providing:
 * <ol>
 * <li>A framework upon which extensions providing specific compressed image formats can be built.</li>
 * <li>A set of generic compressed internal formats that allow applications to specify that texture images should be stored in compressed form without
 * needing to code for specific compression formats.</li>
 * </ol>
 * An application can define compressed texture images by providing a texture image stored in a specific compressed image format. This extension does not
 * define any specific compressed image formats, but it does provide the mechanisms necessary to enable other extensions that do.</p>
 * 
 * <p>An application can also define compressed texture images by providing an uncompressed texture image but specifying a compressed internal format. In this
 * case, the GL will automatically compress the texture image using the appropriate image format. Compressed internal formats can either be specific (as
 * above) or generic. Generic compressed internal formats are not actual image formats, but are instead mapped into one of the specific compressed formats
 * provided by the GL (or to an uncompressed base internal format if no appropriate compressed format is available). Generic compressed internal formats
 * allow applications to use texture compression without needing to code to any particular compression algorithm. Generic compressed formats allow the use
 * of texture compression across a wide range of platforms with differing compression algorithms and also allow future GL implementations to substitute
 * improved compression methods transparently.</p>
 * 
 * <p>Promoted to core in {@link GL13 OpenGL 1.3}.</p>
 */
extern class ARBTextureCompression 
{
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_ALPHA_ARB:Int = 34025;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_LUMINANCE_ARB:Int = 34026;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_LUMINANCE_ALPHA_ARB:Int = 34027;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_INTENSITY_ARB:Int = 34028;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RGB_ARB:Int = 34029;
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, and CopyTexImage2D.  */
	inline static public var GL_COMPRESSED_RGBA_ARB:Int = 34030;
/** Accepted by the {@code target} parameter of Hint and the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_COMPRESSION_HINT_ARB:Int = 34031;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB:Int = 34464;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_COMPRESSED_ARB:Int = 34465;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB:Int = 34466;
/** Accepted by the {@code value} parameter of GetIntegerv, GetBooleanv, GetFloatv, and GetDoublev.  */
	inline static public var GL_COMPRESSED_TEXTURE_FORMATS_ARB:Int = 34467;
/** Function address.  */
	public var CompressedTexImage3DARB:haxe.Int64;
/** Function address.  */
	public var CompressedTexImage2DARB:haxe.Int64;
/** Function address.  */
	public var CompressedTexImage1DARB:haxe.Int64;
/** Function address.  */
	public var CompressedTexSubImage3DARB:haxe.Int64;
/** Function address.  */
	public var CompressedTexSubImage2DARB:haxe.Int64;
/** Function address.  */
	public var CompressedTexSubImage1DARB:haxe.Int64;
/** Function address.  */
	public var GetCompressedTexImageARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Buffer object offset version of: {@link #glGetCompressedTexImageARB GetCompressedTexImageARB}  */
/**
 * Returns a compressed texture image.
 *
 * @param target the target texture. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_X TEXTURE_CUBE_MAP_POSITIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_X TEXTURE_CUBE_MAP_NEGATIVE_X}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Y TEXTURE_CUBE_MAP_POSITIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Y TEXTURE_CUBE_MAP_NEGATIVE_Y}, {@link GL13#GL_TEXTURE_CUBE_MAP_POSITIVE_Z TEXTURE_CUBE_MAP_POSITIVE_Z}, {@link GL13#GL_TEXTURE_CUBE_MAP_NEGATIVE_Z TEXTURE_CUBE_MAP_NEGATIVE_Z}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
 * @param level  the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param pixels a buffer in which to return the compressed texture image
 */
	static public function glGetCompressedTexImageARB(target:Int,level:Int,pixels:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,pixelsOffset:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexSubImage2DARB CompressedTexSubImage2DARB}  */
/** Buffer object offset version of: {@link #glCompressedTexSubImage2DARB CompressedTexSubImage2DARB}  */
/**
 * Respecifies only a rectangular subregion of an existing 2D texel array, with incoming data stored in a specific compressed image format.
 *
 * @param target    the target texture. One of:<br>{@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param yoffset   a texel offset in the y direction within the texture array
 * @param width     the width of the texture subimage
 * @param height    the height of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTexSubImage2DARB(target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexImage1DARB CompressedTexImage1DARB}  */
/** JNI method for {@link #glCompressedTexImage1DARB CompressedTexImage1DARB}  */
	static public function nglCompressedTexImage1DARB(target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexImage2DARB CompressedTexImage2DARB}  */
/** JNI method for {@link #glCompressedTexImage2DARB CompressedTexImage2DARB}  */
	static public function nglCompressedTexImage2DARB(target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexImage3DARB CompressedTexImage3DARB}  */
/** Buffer object offset version of: {@link #glCompressedTexImage3DARB CompressedTexImage3DARB}  */
/**
 * Specifies a three-dimensional texture image in a compressed format.
 *
 * @param target         the target texture. One of:<br>{@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL12#GL_PROXY_TEXTURE_3D PROXY_TEXTURE_3D}, {@link GL30#GL_PROXY_TEXTURE_2D_ARRAY PROXY_TEXTURE_2D_ARRAY}, {@link GL40#GL_PROXY_TEXTURE_CUBE_MAP_ARRAY PROXY_TEXTURE_CUBE_MAP_ARRAY}
 * @param level          the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param internalformat the format of the compressed image data. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param width          the width of the texture image
 * @param height         the height of the texture image
 * @param depth          the depth of the texture image
 * @param border         must be 0
 * @param imageSize      the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data           a pointer to the compressed image data
 */
	static public function glCompressedTexImage3DARB(target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexSubImage2DARB CompressedTexSubImage2DARB}  */
/** JNI method for {@link #glCompressedTexSubImage2DARB CompressedTexSubImage2DARB}  */
	static public function nglCompressedTexSubImage2DARB(target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,width:Int,height:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexImage1DARB CompressedTexImage1DARB}  */
/** Buffer object offset version of: {@link #glCompressedTexImage1DARB CompressedTexImage1DARB}  */
/**
 * Specifies a one-dimensional texture image in a compressed format.
 *
 * @param target         the target texture. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_PROXY_TEXTURE_1D PROXY_TEXTURE_1D}
 * @param level          the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param internalformat the format of the compressed image data. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param width          the width of the texture image
 * @param border         must be 0
 * @param imageSize      the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data           a pointer to the compressed image data
 */
	static public function glCompressedTexImage1DARB(target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexSubImage3DARB CompressedTexSubImage3DARB}  */
/** Buffer object offset version of: {@link #glCompressedTexSubImage3DARB CompressedTexSubImage3DARB}  */
/**
 * Respecifies only a cubic subregion of an existing 3D texel array, with incoming data stored in a specific compressed image format.
 *
 * @param target    the target texture. One of:<br>{@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}
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
	static public function glCompressedTexSubImage3DARB(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexImage3DARB CompressedTexImage3DARB}  */
/** JNI method for {@link #glCompressedTexImage3DARB CompressedTexImage3DARB}  */
	static public function nglCompressedTexImage3DARB(target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,depth:Int,border:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexImage2DARB CompressedTexImage2DARB}  */
/** Buffer object offset version of: {@link #glCompressedTexImage2DARB CompressedTexImage2DARB}  */
/**
 * Specifies a two-dimensional texture image in a compressed format.
 *
 * @param target         the target texture. One of:<br>{@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL11#GL_PROXY_TEXTURE_2D PROXY_TEXTURE_2D}, {@link GL30#GL_PROXY_TEXTURE_1D_ARRAY PROXY_TEXTURE_1D_ARRAY}, {@link GL31#GL_PROXY_TEXTURE_RECTANGLE PROXY_TEXTURE_RECTANGLE}, {@link GL13#GL_PROXY_TEXTURE_CUBE_MAP PROXY_TEXTURE_CUBE_MAP}
 * @param level          the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param internalformat the format of the compressed image data. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param width          the width of the texture image
 * @param height         the height of the texture image
 * @param border         must be 0
 * @param imageSize      the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data           a pointer to the compressed image data
 */
	static public function glCompressedTexImage2DARB(target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,internalformat:Int,width:Int,height:Int,border:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetCompressedTexImageARB GetCompressedTexImageARB}  */
/** JNI method for {@link #glGetCompressedTexImageARB GetCompressedTexImageARB}  */
	static public function nglGetCompressedTexImageARB(target:Int,level:Int,pixels:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,pixels:haxe.Int64):Void {})
/** Alternative version of: {@link #glCompressedTexSubImage1DARB CompressedTexSubImage1DARB}  */
/** Buffer object offset version of: {@link #glCompressedTexSubImage1DARB CompressedTexSubImage1DARB}  */
/**
 * Respecifies only a subregion of an existing 1D texel array, with incoming data stored in a specific compressed image format.
 *
 * @param target    the target texture. Must be:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}
 * @param level     the level-of-detail number. Level 0 is the base image level. Level n is the nth mipmap reduction image.
 * @param xoffset   a texel offset in the x direction within the texture array
 * @param width     the width of the texture subimage
 * @param format    the format of the compressed image data stored at address {@code data}. One of:<br>{@link GL30#GL_COMPRESSED_RED_RGTC1 COMPRESSED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_SIGNED_RED_RGTC1 COMPRESSED_SIGNED_RED_RGTC1}, {@link GL30#GL_COMPRESSED_RG_RGTC2 COMPRESSED_RG_RGTC2}, {@link GL30#GL_COMPRESSED_SIGNED_RG_RGTC2 COMPRESSED_SIGNED_RG_RGTC2}, {@link GL42#GL_COMPRESSED_RGBA_BPTC_UNORM COMPRESSED_RGBA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM COMPRESSED_SRGB_ALPHA_BPTC_UNORM}, {@link GL42#GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT COMPRESSED_RGB_BPTC_SIGNED_FLOAT}, {@link GL42#GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT}, {@link GL43#GL_COMPRESSED_RGB8_ETC2 COMPRESSED_RGB8_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_ETC2 COMPRESSED_SRGB8_ETC2}, {@link GL43#GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2}, {@link GL43#GL_COMPRESSED_RGBA8_ETC2_EAC COMPRESSED_RGBA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC COMPRESSED_SRGB8_ALPHA8_ETC2_EAC}, {@link GL43#GL_COMPRESSED_R11_EAC COMPRESSED_R11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_R11_EAC COMPRESSED_SIGNED_R11_EAC}, {@link GL43#GL_COMPRESSED_RG11_EAC COMPRESSED_RG11_EAC}, {@link GL43#GL_COMPRESSED_SIGNED_RG11_EAC COMPRESSED_SIGNED_RG11_EAC}, see {@link EXTTextureCompressionS3TC}, see {@link EXTTextureCompressionLATC}, see {@link ATITextureCompression3DC}, see {@link KHRTextureCompressionASTCLDR}
 * @param imageSize the number of unsigned bytes of image data starting at the address specified by {@code data}
 * @param data      a pointer to the compressed image data
 */
	static public function glCompressedTexSubImage1DARB(target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,width:Int,format:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,dataOffset:haxe.Int64):Void {})
/** Returns the {@link ARBTextureCompression} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTextureCompression;
/** Unsafe version of {@link #glCompressedTexSubImage3DARB CompressedTexSubImage3DARB}  */
/** JNI method for {@link #glCompressedTexSubImage3DARB CompressedTexSubImage3DARB}  */
	static public function nglCompressedTexSubImage3DARB(target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glCompressedTexSubImage1DARB CompressedTexSubImage1DARB}  */
/** JNI method for {@link #glCompressedTexSubImage1DARB CompressedTexSubImage1DARB}  */
	static public function nglCompressedTexSubImage1DARB(target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,level:Int,xoffset:Int,width:Int,format:Int,imageSize:Int,data:haxe.Int64):Void {})

}
