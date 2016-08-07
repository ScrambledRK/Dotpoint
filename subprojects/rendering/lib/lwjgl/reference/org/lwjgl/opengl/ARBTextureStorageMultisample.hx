package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureStorageMultisample")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_storage_multisample.txt">ARB_texture_storage_multisample</a> extension.
 * 
 * <p>The {@link ARBTextureStorage ARB_texture_storage} extension and OpenGL 4.2 introduced the concept of immutable texture objects. With these objects, once their data store
 * has been sized and allocated, it could not be resized for the lifetime of the objects (although its content could be updated). OpenGL implementations
 * may be able to take advantage of the knowledge that the underlying data store of certain objects cannot be deleted or otherwise reallocated without
 * destruction of the whole object (normally, a much heavier weight and less frequent operation). Immutable storage for all types of textures besides
 * multisample and buffer textures was introduced by ARB_texture_storage. For completeness, this extension introduces immutable storage for multisampled
 * textures.</p>
 * 
 * <p>Requires {@link GL42 OpenGL 4.2} or {@link ARBTextureStorage ARB_texture_storage}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBTextureStorageMultisample 
{
/** Function address.  */
	public var TexStorage2DMultisample:haxe.Int64;
/** Function address.  */
	public var TexStorage3DMultisample:haxe.Int64;
/** Function address.  */
	public var TextureStorage2DMultisampleEXT:haxe.Int64;
/** Function address.  */
	public var TextureStorage3DMultisampleEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * DSA version of {@link #glTexStorage3DMultisample TexStorage3DMultisample}.
 *
 * @param texture              the texture object
 * @param target               the target of the operation. One of:<br>{@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}, {@link GL32#GL_PROXY_TEXTURE_2D_MULTISAMPLE PROXY_TEXTURE_2D_MULTISAMPLE}
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param depth                the depth of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTextureStorage3DMultisampleEXT(texture:Int,target:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool):Void;
/** JNI method for {@link #glTextureStorage3DMultisampleEXT TextureStorage3DMultisampleEXT}  */
	static public function nglTextureStorage3DMultisampleEXT(texture:Int,target:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glTextureStorage2DMultisampleEXT TextureStorage2DMultisampleEXT}  */
	static public function nglTextureStorage2DMultisampleEXT(texture:Int,target:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool,__functionAddress:haxe.Int64):Void;
/**
 * DSA version of {@link #glTexStorage2DMultisample TexStorage2DMultisample}.
 *
 * @param texture              the texture object
 * @param target               the target of the operation. One of:<br>{@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_PROXY_TEXTURE_2D_MULTISAMPLE PROXY_TEXTURE_2D_MULTISAMPLE}
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTextureStorage2DMultisampleEXT(texture:Int,target:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool):Void;
/**
 * Specifies storage for a two-dimensional multisample texture.
 *
 * @param target               the target of the operation. One of:<br>{@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_PROXY_TEXTURE_2D_MULTISAMPLE PROXY_TEXTURE_2D_MULTISAMPLE}
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTexStorage2DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,fixedsamplelocations:Bool):Void;
/** Returns the {@link ARBTextureStorageMultisample} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTextureStorageMultisample;
/**
 * Specifies storage for a two-dimensional multisample array texture.
 *
 * @param target               the target of the operation. One of:<br>{@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}, {@link GL32#GL_PROXY_TEXTURE_2D_MULTISAMPLE PROXY_TEXTURE_2D_MULTISAMPLE}
 * @param samples              the number of samples in the texture
 * @param internalformat       the sized internal format to be used to store texture image data
 * @param width                the width of the texture, in texels
 * @param height               the height of the texture, in texels
 * @param depth                the depth of the texture, in texels
 * @param fixedsamplelocations whether the image will use identical sample locations and the same number of samples for all texels in the image, and the sample locations will not
 *                             depend on the internal format or size of the image
 */
	static public function glTexStorage3DMultisample(target:Int,samples:Int,internalformat:Int,width:Int,height:Int,depth:Int,fixedsamplelocations:Bool):Void;

}
