package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBHalfFloatPixel")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/half_float_pixel.txt">ARB_half_float_pixel</a> extension.
 * 
 * <p>This extension introduces a new data type for half-precision (16-bit) floating-point quantities. The floating-point format is very similar to the IEEE
 * single-precision floating-point standard, except that it has only 5 exponent bits and 10 mantissa bits. Half-precision floats are smaller than full
 * precision floats and provide a larger dynamic range than similarly sized normalized scalar data types.</p>
 * 
 * <p>This extension allows applications to use half-precision floating-point data when specifying pixel data. It extends the existing image specification
 * commands to accept the new data type.</p>
 * 
 * <p>Floating-point data is clamped to [0, 1] at various places in the GL unless clamping is disabled with the ARB_color_buffer_float extension.</p>
 * 
 * <p>Requires {@link GL15 OpenGL 1.5}. Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBHalfFloatPixel 
{
/**
 * Accepted by the {@code type} parameter of DrawPixels, ReadPixels, TexImage1D, TexImage2D, TexImage3D, GetTexImage, TexSubImage1D, TexSubImage2D,
 * TexSubImage3D, GetHistogram, GetMinmax, ConvolutionFilter1D, ConvolutionFilter2D, GetConvolutionFilter, SeparableFilter2D, GetSeparableFilter,
 * ColorTable, ColorSubTable, and GetColorTable.
 */
	inline static public var GL_HALF_FLOAT_ARB:Int = 5131;

}