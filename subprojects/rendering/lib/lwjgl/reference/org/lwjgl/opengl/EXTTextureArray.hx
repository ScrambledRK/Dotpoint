package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTextureArray")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_array.txt">EXT_texture_array</a> extension.
 * 
 * <p>This extension introduces the notion of one- and two-dimensional array textures. An array texture is a collection of one- and two-dimensional images of
 * identical size and format, arranged in layers. A one-dimensional array texture is specified using TexImage2D; a two-dimensional array texture is
 * specified using TexImage3D. The height (1D array) or depth (2D array) specify the number of layers in the image.</p>
 * 
 * <p>An array texture is accessed as a single unit in a programmable shader, using a single coordinate vector. A single layer is selected, and that layer is
 * then accessed as though it were a one- or two-dimensional texture. The layer used is specified using the "t" or "r" texture coordinate for 1D and 2D
 * array textures, respectively. The layer coordinate is provided as an unnormalized floating-point value in the range [0,<n>-1], where <n> is the number
 * of layers in the array texture. Texture lookups do not filter between layers, though such filtering can be achieved using programmable shaders. When
 * mipmapping is used, each level of an array texture has the same number of layers as the base level; the number of layers is not reduced as the image
 * size decreases.</p>
 * 
 * <p>Array textures can be rendered to by binding them to a framebuffer object (EXT_framebuffer_object). A single layer of an array texture can be bound
 * using normal framebuffer object mechanisms, or an entire array texture can be bound and rendered to using the layered rendering mechanisms provided by
 * NV_geometry_program4.</p>
 * 
 * <p>This extension does not provide for the use of array textures with fixed-function fragment processing. Such support could be added by providing an
 * additional extension allowing applications to pass the new target enumerants (TEXTURE_1D_ARRAY_EXT and TEXTURE_2D_ARRAY_EXT) to Enable and Disable.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class EXTTextureArray 
{
/** Accepted by the {@code target} parameter of TexParameteri, TexParameteriv, TexParameterf, TexParameterfv, GenerateMipmapEXT, and BindTexture.  */
	inline static public var GL_TEXTURE_1D_ARRAY_EXT:Int = 35864;
/** Accepted by the {@code target} parameter of TexParameteri, TexParameteriv, TexParameterf, TexParameterfv, GenerateMipmapEXT, and BindTexture.  */
	inline static public var GL_TEXTURE_2D_ARRAY_EXT:Int = 35866;
/** Accepted by the {@code target} parameter of TexImage3D, TexSubImage3D, CopyTexSubImage3D, CompressedTexImage3D, and CompressedTexSubImage3D.  */
	inline static public var GL_PROXY_TEXTURE_2D_ARRAY_EXT:Int = 35867;
/**
 * Accepted by the {@code target} parameter of TexImage2D, TexSubImage2D, CopyTexImage2D, CopyTexSubImage2D, CompressedTexImage2D, and
 * CompressedTexSubImage2D.
 */
	inline static public var GL_PROXY_TEXTURE_1D_ARRAY_EXT:Int = 35865;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_1D_ARRAY_EXT:Int = 35868;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_2D_ARRAY_EXT:Int = 35869;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_MAX_ARRAY_TEXTURE_LAYERS_EXT:Int = 35071;
/**
 * Accepted by the {@code param} parameter of TexParameterf, TexParameteri, TexParameterfv, and TexParameteriv when the {@code pname} parameter is
 * TEXTURE_COMPARE_MODE_ARB.
 */
	inline static public var GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT:Int = 34894;
/**
 * COMPARE_REF_DEPTH_TO_TEXTURE_EXT is simply an alias for the existing COMPARE_R_TO_TEXTURE token in OpenGL 2.0; the alternate name reflects the fact that
 * the R coordinate is not always used.) Accepted by the {@code pname} parameter of GetFramebufferAttachmentParameterivEXT.
 */
	inline static public var GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT:Int = 36052;
/**
 * FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER is simply an alias for the FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT token provided in EXT_framebuffer_object.
 * This extension generalizes the notion of "{@code zoffset}" to include layers of an array texture.) Returned by the {@code type} parameter of
 * GetActiveUniform.
 */
	inline static public var GL_SAMPLER_1D_ARRAY_EXT:Int = 36288;
/**
 * FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER is simply an alias for the FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT token provided in EXT_framebuffer_object.
 * This extension generalizes the notion of "{@code zoffset}" to include layers of an array texture.) Returned by the {@code type} parameter of
 * GetActiveUniform.
 */
	inline static public var GL_SAMPLER_2D_ARRAY_EXT:Int = 36289;
/**
 * FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER is simply an alias for the FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT token provided in EXT_framebuffer_object.
 * This extension generalizes the notion of "{@code zoffset}" to include layers of an array texture.) Returned by the {@code type} parameter of
 * GetActiveUniform.
 */
	inline static public var GL_SAMPLER_1D_ARRAY_SHADOW_EXT:Int = 36291;
/**
 * FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER is simply an alias for the FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT token provided in EXT_framebuffer_object.
 * This extension generalizes the notion of "{@code zoffset}" to include layers of an array texture.) Returned by the {@code type} parameter of
 * GetActiveUniform.
 */
	inline static public var GL_SAMPLER_2D_ARRAY_SHADOW_EXT:Int = 36292;
/** Function address.  */
	public var FramebufferTextureLayerEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glFramebufferTextureLayerEXT FramebufferTextureLayerEXT}  */
	static public function nglFramebufferTextureLayerEXT(target:Int,attachment:Int,texture:Int,level:Int,layer:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link EXTTextureArray} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTTextureArray;
/**
 * 
 *
 * @param target     
 * @param attachment 
 * @param texture    
 * @param level      
 * @param layer      
 */
	static public function glFramebufferTextureLayerEXT(target:Int,attachment:Int,texture:Int,level:Int,layer:Int):Void;

}
