package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBHalfFloatVertex")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/half_float_vertex.txt">ARB_half_float_vertex</a> extension.
 * 
 * <p>This extension extends the usage of the half-precision (16-bit) floating-point quantities introduced in {@link ARBHalfFloatPixel ARB_half_float_pixel} for usage in
 * specifying vertex array data.</p>
 * 
 * <p>This extension allows applications to use half-precision floating point data when specifying vertices. This can allow applications to reduce their
 * memory footprint, as well as the memory bandwidth required for vertex data.</p>
 * 
 * <p>This extension extends the existing vertex array commands to accept the new data type.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBHalfFloatVertex 
{
/**
 * Accepted by the {@code type} argument of VertexPointer, NormalPointer, ColorPointer, SecondaryColorPointer, FogCoordPointer, TexCoordPointer, and
 * VertexAttribPointer.
 */
	inline static public var GL_HALF_FLOAT:Int = 5131;

}
