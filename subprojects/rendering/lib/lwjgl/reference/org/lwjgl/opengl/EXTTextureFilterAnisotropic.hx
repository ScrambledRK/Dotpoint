package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTTextureFilterAnisotropic")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_filter_anisotropic.txt">EXT_texture_filter_anisotropic</a> extension.
 * 
 * <p>Texture mapping using OpenGL's existing mipmap texture filtering modes assumes that the projection of the pixel filter footprint into texture space is a
 * square (ie, isotropic). In practice however, the footprint may be long and narrow (ie, anisotropic). Consequently, mipmap filtering severely blurs
 * images on surfaces angled obliquely away from the viewer.</p>
 * 
 * <p>Several approaches exist for improving texture sampling by accounting for the anisotropic nature of the pixel filter footprint into texture space. This
 * extension provides a general mechanism for supporting anisotropic texturing filtering schemes without specifying a particular formulation of anisotropic
 * filtering.</p>
 * 
 * <p>The extension permits the OpenGL application to specify on a per-texture object basis the maximum degree of anisotropy to account for in texture
 * filtering.</p>
 * 
 * <p>Increasing a texture object's maximum degree of anisotropy may improve texture filtering but may also significantly reduce the implementation's texture
 * filtering rate. Implementations are free to clamp the specified degree of anisotropy to the implementation's maximum supported degree of anisotropy.</p>
 * 
 * <p>A texture's maximum degree of anisotropy is specified independent from the texture's minification and magnification filter (as opposed to being
 * supported as an entirely new filtering mode). Implementations are free to use the specified minification and magnification filter to select a particular
 * anisotropic texture filtering scheme. For example, a NEAREST filter with a maximum degree of anisotropy of two could be treated as a 2-tap filter that
 * accounts for the direction of anisotropy. Implementations are also permitted to ignore the minification or magnification filter and implement the
 * highest quality of anisotropic filtering possible.</p>
 * 
 * <p>Applications seeking the highest quality anisotropic filtering available are advised to request a {@link GL11#GL_LINEAR_MIPMAP_LINEAR LINEAR_MIPMAP_LINEAR} minification filter, a
 * {@link GL11#GL_LINEAR LINEAR} magnification filter, and a large maximum degree of anisotropy.</p>
 */
extern class EXTTextureFilterAnisotropic 
{
/** Accepted by the {@code pname} parameters of GetTexParameterfv, GetTexParameteriv, TexParameterf, TexParameterfv, TexParameteri, and TexParameteriv.  */
	inline static public var GL_TEXTURE_MAX_ANISOTROPY_EXT:Int = 34046;
/** Accepted by the {@code pname} parameters of GetBooleanv, GetDoublev, GetFloatv, and GetIntegerv.  */
	inline static public var GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT:Int = 34047;

}