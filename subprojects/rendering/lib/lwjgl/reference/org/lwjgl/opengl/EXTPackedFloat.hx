package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTPackedFloat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/packed_float.txt">EXT_packed_float</a> extension.
 * 
 * <p>This extension adds a new 3-component floating-point texture format that fits within a single 32-bit word. This format stores 5 bits of biased exponent
 * per component in the same manner as 16-bit floating-point formats, but rather than 10 mantissa bits, the red, green, and blue components have 6, 6, and
 * 5 bits respectively. Each mantissa is assumed to have an implied leading one except in the denorm exponent case. There is no sign bit so only
 * non-negative values can be represented. Positive infinity, positive denorms, and positive NaN values are representable. The value of the fourth
 * component returned by a texture fetch is always 1.0.</p>
 * 
 * <p>This extension also provides support for rendering into an unsigned floating-point rendering format with the assumption that the texture format
 * described above could also be advertised as an unsigned floating-point format for rendering.</p>
 * 
 * <p>The extension also provides a pixel external format for specifying packed float values directly.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class EXTPackedFloat 
{
/** Accepted by the {@code internalformat} parameter of TexImage1D, TexImage2D, TexImage3D, CopyTexImage1D, CopyTexImage2D, and RenderbufferStorageEXT.  */
	inline static public var GL_R11F_G11F_B10F_EXT:Int = 35898;
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, GetTexImage, TexImage3D, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, ConvolutionFilter3D, GetConvolutionFilter, SeparableFilter2D,
 * GetSeparableFilter, ColorTable, ColorSubTable, and GetColorTable.
 */
	inline static public var GL_UNSIGNED_INT_10F_11F_11F_REV_EXT:Int = 35899;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_RGBA_SIGNED_COMPONENTS_EXT:Int = 35900;

}
