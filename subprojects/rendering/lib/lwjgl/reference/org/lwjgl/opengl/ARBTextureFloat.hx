package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureFloat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_float.txt">ARB_texture_float</a> extension.
 * 
 * <p>This extension adds texture internal formats with 16- and 32-bit floating-point components. The 32-bit floating-point components are in the standard
 * IEEE float format. The 16-bit floating-point components have 1 sign bit, 5 exponent bits, and 10 mantissa bits. Floating-point components are clamped to
 * the limits of the range representable by their format.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBTextureFloat 
{
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_RED_TYPE_ARB:Int = 35856;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_GREEN_TYPE_ARB:Int = 35857;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_BLUE_TYPE_ARB:Int = 35858;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_ALPHA_TYPE_ARB:Int = 35859;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_LUMINANCE_TYPE_ARB:Int = 35860;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_INTENSITY_TYPE_ARB:Int = 35861;
/** Accepted by the {@code value} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_DEPTH_TYPE_ARB:Int = 35862;
/** Returned by the {@code params} parameter of GetTexLevelParameter.  */
	inline static public var GL_UNSIGNED_NORMALIZED_ARB:Int = 35863;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA32F_ARB:Int = 34836;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB32F_ARB:Int = 34837;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA32F_ARB:Int = 34838;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY32F_ARB:Int = 34839;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE32F_ARB:Int = 34840;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA32F_ARB:Int = 34841;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGBA16F_ARB:Int = 34842;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_RGB16F_ARB:Int = 34843;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_ALPHA16F_ARB:Int = 34844;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_INTENSITY16F_ARB:Int = 34845;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE16F_ARB:Int = 34846;
/** Accepted by the {@code internalFormat} parameter of TexImage1D, TexImage2D, and TexImage3D.  */
	inline static public var GL_LUMINANCE_ALPHA16F_ARB:Int = 34847;

}
