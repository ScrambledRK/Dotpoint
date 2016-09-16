package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureCubeMapArray")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_cube_map_array.txt">ARB_texture_cube_map_array</a> extension.
 * 
 * <p>The <a href="http://www.opengl.org/registry/specs/EXT/texture_array.txt">EXT_texture_array</a> extension, and subsequently OpenGL 3.0 have introduced the concept of one- and two-dimensional array
 * textures. An array texture is an ordered set of images with the same size and format. Each image in an array texture has a unique level. This extension
 * expands texture array support to include cube map textures.</p>
 * 
 * <p>A cube map array texture is a 2-dimensional array texture that may contain many cube map layers. Each cube map layer is a unique cube map image set.
 * Images in a cube map array have the same size and format limitations as one- and two-dimensional array textures. A cube map array texture is specified
 * using {@link GL12#glTexImage3D TexImage3D} in a similar manner to two-dimensional arrays. Cube map array textures can be bound to a render targets of a frame buffer object
 * as two-dimensional arrays are using FramebufferTextureLayer.</p>
 * 
 * <p>When accessed by a programmable shader, a cube map array texture acts as a single unit. The "s", "t", "r" texture coordinates are treated as a regular
 * cube map texture fetch. The "q" texture is treated as an unnormalized floating-point value identifying the layer of the cube map array texture. Cube map
 * array texture lookups do not filter between layers.</p>
 * 
 * <p>This extension does not provide for the use of cube map array textures with fixed-function fragment processing.</p>
 * 
 * <p>Promoted to core in {@link GL40 OpenGL 4.0}.</p>
 */
extern class ARBTextureCubeMapArray 
{
/** Accepted by the {@code target} parameter of TexParameteri, TexParameteriv, TexParameterf, TexParameterfv, BindTexture, and GenerateMipmap.  */
	inline static public var GL_TEXTURE_CUBE_MAP_ARRAY_ARB:Int = 36873;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB:Int = 36874;
/** Accepted by the {@code target} parameter of TexImage3D, TexSubImage3D, CompressedTeximage3D, CompressedTexSubImage3D and CopyTexSubImage3D.  */
	inline static public var GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB:Int = 36875;
/** TEXTURE_CUBE_MAP_ARRAY_ARB Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_CUBE_MAP_ARRAY_ARB:Int = 36876;
/** TEXTURE_CUBE_MAP_ARRAY_ARB Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB:Int = 36877;
/** TEXTURE_CUBE_MAP_ARRAY_ARB Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB:Int = 36878;
/** TEXTURE_CUBE_MAP_ARRAY_ARB Returned by the {@code type} parameter of GetActiveUniform.  */
	inline static public var GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB:Int = 36879;

}