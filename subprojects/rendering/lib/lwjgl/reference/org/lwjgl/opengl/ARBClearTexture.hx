package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBClearTexture")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/clear_texture.txt">ARB_clear_texture</a> extension.
 * 
 * <p>Texture objects are fundamental to the operation of OpenGL. They are used as a source for texture sampling and destination for rendering as well as
 * being accessed in shaders for image load/store operations. It is also possible to invalidate the contents of a texture. It is currently only possible to
 * set texture image data to known values by uploading some or all of a image array from application memory or by attaching it to a framebuffer object and
 * using {@link GL11#glClear Clear} or the {@link GL30 OpenGL 3.0} ClearBuffer commands.</p>
 * 
 * <p>Both uploading initial texture data and clearing by attaching to a framebuffer have potential disadvantages when one simply wants to initialize texture
 * data to a known value. Uploading initial data requires the application to allocate a (potentially large) chunk of memory and transferring that to the
 * GL. This can be a costly operation both in terms of memory bandwidth and power usage. Alternatively, attaching a texture level to a framebuffer to clear
 * it may not be possible if the texture format isn't supported for rendering, or even if it is, attaching the image to a framebuffer object may cause the
 * texture to be allocated in certain types of memory, which it may otherwise not need to be placed in.</p>
 * 
 * <p>This extension solves these problems by providing a mechanism whereby the contents of a texture image array can be set to known values by using the
 * {@link #glClearTexImage ClearTexImage} or {@link #glClearTexSubImage ClearTexSubImage} commands. These commands can also be useful for initializing an image that will be used for atomic shader
 * operations.</p>
 * 
 * <p>Requires {@link GL13 OpenGL 1.3}. Promoted to core in {@link GL44 OpenGL 4.4}.</p>
 */
extern class ARBClearTexture 
{
/** Accepted by the {@code pname} parameter for {@link GL42#glGetInternalformati GetInternalformati} and {@link GL43#glGetInternalformati64 GetInternalformati64}.  */
	inline static public var GL_CLEAR_TEXTURE:Int = 37733;
/** Function address.  */
	public var ClearTexSubImage:haxe.Int64;
/** Function address.  */
	public var ClearTexImage:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glClearTexImage ClearTexImage}  */
	static public function nglClearTexImage(texture:Int,level:Int,format:Int,type:Int,data:haxe.Int64):Void;
/**
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
/** Returns the {@link ARBClearTexture} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBClearTexture;
/** Unsafe version of {@link #glClearTexSubImage ClearTexSubImage}  */
	static public function nglClearTexSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int,format:Int,type:Int,data:haxe.Int64):Void;
/**
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

}