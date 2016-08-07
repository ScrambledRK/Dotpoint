package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureView")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_view.txt">ARB_texture_view</a> extension.
 * 
 * <p>This extension allows a texture's data store to be "viewed" in multiple ways, either reinterpreting the data format/type as a different format/type with
 * the same element size, or by clamping the mipmap level range or array slice range.</p>
 * 
 * <p>The goals of this extension are to avoid having these alternate views become shared mutable containers of shared mutable objects, and to add the views
 * to the API in a minimally invasive way.</p>
 * 
 * <p>No new object types are added. Conceptually, a texture object is split into the following parts:
 * <ul>
 * <li>A data store holding texel data.</li>
 * <li>State describing which portions of the data store to use, and how to interpret the data elements.</li>
 * <li>An embedded sampler object.</li>
 * <li>Various other texture parameters.</li>
 * </ul></p>
 * 
 * <p>With this extension, multiple textures can share a data store and have different state describing which portions of the data store to use and how to
 * interpret the data elements. The data store is refcounted and not destroyed until the last texture sharing it is deleted.</p>
 * 
 * <p>This extension leverages the {@link ARBTextureStorage ARB_texture_storage} concept of an "immutable texture". Views can only be created of textures created with TexStorage.</p>
 * 
 * <p>Requires {@link GL42 OpenGL 4.2} or {@link ARBTextureStorage ARB_texture_storage}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBTextureView 
{
/** Accepted by the {@code pname} parameters of GetTexParameterfv and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_MIN_LEVEL:Int = 33499;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_NUM_LEVELS:Int = 33500;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_MIN_LAYER:Int = 33501;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_VIEW_NUM_LAYERS:Int = 33502;
/** Accepted by the {@code pname} parameters of GetTexParameterfv and GetTexParameteriv.  */
	inline static public var GL_TEXTURE_IMMUTABLE_LEVELS:Int = 33503;
/** Function address.  */
	public var TextureView:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Initializes a texture as a data alias of another texture's data store.
 *
 * @param texture        the texture object to be initialized as a view
 * @param target         the target to be used for the newly initialized texture
 * @param origtexture    the name of a texture object of which to make a view
 * @param internalformat the internal format for the newly created view
 * @param minlevel       the  lowest level of detail of the view
 * @param numlevels      the number of levels of detail to include in the view
 * @param minlayer       the index of the first layer to include in the view
 * @param numlayers      the number of layers to include in the view
 */
	static public function glTextureView(texture:Int,target:Int,origtexture:Int,internalformat:Int,minlevel:Int,numlevels:Int,minlayer:Int,numlayers:Int):Void;
/** Returns the {@link ARBTextureView} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTextureView;

}
