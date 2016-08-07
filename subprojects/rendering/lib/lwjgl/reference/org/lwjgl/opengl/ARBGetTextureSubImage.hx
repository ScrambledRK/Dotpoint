package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBGetTextureSubImage")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/get_texture_sub_image.txt">ARB_get_texture_sub_image</a> extension.
 * 
 * <p>This extension adds a new function to get sub-regions of texture images.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0}. Promoted to core in {@link GL45 OpenGL 4.5}.</p>
 */
extern class ARBGetTextureSubImage 
{
/** Function address.  */
	public var GetTextureSubImage:haxe.Int64;
/** Function address.  */
	public var GetCompressedTextureSubImage:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** DoubleBuffer version of: {@link #glGetCompressedTextureSubImage GetCompressedTextureSubImage}  */
/** FloatBuffer version of: {@link #glGetCompressedTextureSubImage GetCompressedTextureSubImage}  */
/** IntBuffer version of: {@link #glGetCompressedTextureSubImage GetCompressedTextureSubImage}  */
/** ShortBuffer version of: {@link #glGetCompressedTextureSubImage GetCompressedTextureSubImage}  */
/** Buffer object offset version of: {@link #glGetCompressedTextureSubImage GetCompressedTextureSubImage}  */
/**
 * Obtains a sub-region of a compressed texture image.
 *
 * @param texture the source texture object name
 * @param level   the level-of-detail number
 * @param xoffset the x-position of the subregion
 * @param yoffset the y-position of the subregion
 * @param zoffset the z-position of the subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param depth   the subregion depth
 * @param bufSize the size of the buffer to receive the retrieved pixel data
 * @param pixels  the buffer in which to place the returned data
 */
	static public function glGetCompressedTextureSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,bufSize:Int,pixels:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,pixels:java.nio.IntBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,pixels:java.nio.ShortBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,bufSize:Int,pixelsOffset:haxe.Int64):Void {})
/** DoubleBuffer version of: {@link #glGetTextureSubImage GetTextureSubImage}  */
/** FloatBuffer version of: {@link #glGetTextureSubImage GetTextureSubImage}  */
/** IntBuffer version of: {@link #glGetTextureSubImage GetTextureSubImage}  */
/** ShortBuffer version of: {@link #glGetTextureSubImage GetTextureSubImage}  */
/** Buffer object offset version of: {@link #glGetTextureSubImage GetTextureSubImage}  */
/**
 * Obtains sub-regions of a texture image from a texture object.
 *
 * @param texture the source texture object name
 * @param level   the level-of-detail number
 * @param xoffset the x-position of the subregion
 * @param yoffset the y-position of the subregion
 * @param zoffset the z-position of the subregion
 * @param width   the subregion width
 * @param height  the subregion height
 * @param depth   the subregion depth
 * @param format  the pixel format. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type    the pixel type. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param bufSize the size of the buffer to receive the retrieved pixel data
 * @param pixels  the buffer in which to place the returned data
 */
	static public function glGetTextureSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,bufSize:Int,pixels:java.nio.ByteBuffer):Void;
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.DoubleBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.FloatBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.IntBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,pixels:java.nio.ShortBuffer):Void {})
	@:overload(function (texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,bufSize:Int,pixelsOffset:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetTextureSubImage GetTextureSubImage}  */
	static public function nglGetTextureSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,bufSize:Int,pixels:haxe.Int64):Void;
/** Returns the {@link ARBGetTextureSubImage} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBGetTextureSubImage;
/** Unsafe version of {@link #glGetCompressedTextureSubImage GetCompressedTextureSubImage}  */
	static public function nglGetCompressedTextureSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,bufSize:Int,pixels:haxe.Int64):Void;

}
