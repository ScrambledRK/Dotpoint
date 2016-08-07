package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureStorage")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_storage.txt">ARB_texture_storage</a> extension.
 * 
 * <p>The texture image specification commands in OpenGL allow each level to be separately specified with different sizes, formats, types and so on, and only
 * imposes consistency checks at draw time. This adds overhead for implementations.</p>
 * 
 * <p>This extension provides a mechanism for specifying the entire structure of a texture in a single call, allowing certain consistency checks and memory
 * allocations to be done up front. Once specified, the format and dimensions of the image array become immutable, to simplify completeness checks in the
 * implementation.</p>
 * 
 * <p>When using this extension, it is no longer possible to supply texture data using TexImage*. Instead, data can be uploaded using TexSubImage*, or
 * produced by other means (such as render-to-texture, mipmap generation, or rendering to a sibling EGLImage).</p>
 * 
 * <p>This extension has complicated interactions with other extensions. The goal of most of these interactions is to ensure that a texture is always mipmap
 * complete (and cube complete for cubemap textures).</p>
 * 
 * <p>Requires {@link GL12 OpenGL 1.2}. Promoted to core in {@link GL42 OpenGL 4.2}.</p>
 */
extern class ARBTextureStorage 
{
/** Accepted by the {@code value} parameter of GetTexParameter{if}v.  */
	inline static public var GL_TEXTURE_IMMUTABLE_FORMAT:Int = 37167;
/** Function address.  */
	public var TexStorage1D:haxe.Int64;
/** Function address.  */
	public var TexStorage2D:haxe.Int64;
/** Function address.  */
	public var TexStorage3D:haxe.Int64;
/** Function address.  */
	public var TextureStorage1DEXT:haxe.Int64;
/** Function address.  */
	public var TextureStorage2DEXT:haxe.Int64;
/** Function address.  */
	public var TextureStorage3DEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glTextureStorage2DEXT TextureStorage2DEXT}  */
	static public function nglTextureStorage2DEXT(texture:Int,target:Int,levels:Int,internalformat:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTextureStorage1DEXT TextureStorage1DEXT}  */
	static public function nglTextureStorage1DEXT(texture:Int,target:Int,levels:Int,internalformat:Int,width:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTextureStorage3DEXT TextureStorage3DEXT}  */
	static public function nglTextureStorage3DEXT(texture:Int,target:Int,levels:Int,internalformat:Int,width:Int,height:Int,depth:Int,__functionAddress:haxe.Int64):Void;
/**
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
/** Returns the {@link ARBTextureStorage} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTextureStorage;
/**
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
 * Simultaneously specifies storage for all levels of a one-dimensional texture.
 *
 * @param target         the target of the operation. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_PROXY_TEXTURE_1D PROXY_TEXTURE_1D}
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 */
	static public function glTexStorage1D(target:Int,levels:Int,internalformat:Int,width:Int):Void;
/**
 * DSA version of {@link #glTexStorage1D TexStorage1D}.
 *
 * @param texture        the texture object to update
 * @param target         the target of the operation. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_PROXY_TEXTURE_1D PROXY_TEXTURE_1D}
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 */
	static public function glTextureStorage1DEXT(texture:Int,target:Int,levels:Int,internalformat:Int,width:Int):Void;
/**
 * DSA version of {@link #glTexStorage2D TexStorage2D}.
 *
 * @param texture        the texture object to update
 * @param target         the target of the operation. One of:<br>{@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL11#GL_PROXY_TEXTURE_2D PROXY_TEXTURE_2D}, {@link GL30#GL_PROXY_TEXTURE_1D_ARRAY PROXY_TEXTURE_1D_ARRAY}, {@link GL31#GL_PROXY_TEXTURE_RECTANGLE PROXY_TEXTURE_RECTANGLE}, {@link GL13#GL_PROXY_TEXTURE_CUBE_MAP PROXY_TEXTURE_CUBE_MAP}
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 * @param height         the height of the texture, in texels
 */
	static public function glTextureStorage2DEXT(texture:Int,target:Int,levels:Int,internalformat:Int,width:Int,height:Int):Void;
/**
 * DSA version of {@link #glTexStorage3D TexStorage3D}.
 *
 * @param texture        the texture object to update
 * @param target         the target of the operation. One of:<br>{@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL12#GL_PROXY_TEXTURE_3D PROXY_TEXTURE_3D}, {@link GL30#GL_PROXY_TEXTURE_2D_ARRAY PROXY_TEXTURE_2D_ARRAY}, {@link GL40#GL_PROXY_TEXTURE_CUBE_MAP_ARRAY PROXY_TEXTURE_CUBE_MAP_ARRAY}
 * @param levels         the number of texture levels
 * @param internalformat the sized internal format to be used to store texture image data
 * @param width          the width of the texture, in texels
 * @param height         the height of the texture, in texels
 * @param depth          the depth of the texture, in texels
 */
	static public function glTextureStorage3DEXT(texture:Int,target:Int,levels:Int,internalformat:Int,width:Int,height:Int,depth:Int):Void;

}
