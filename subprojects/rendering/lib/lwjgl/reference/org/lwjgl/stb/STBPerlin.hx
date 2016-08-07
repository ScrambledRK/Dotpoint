package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBPerlin")
@:final
/**
 * Native bindings to stb_perlin.h from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <p>Revised Perlin noise (3D input, 1D output).</p>
 */
extern class STBPerlin 
{
/**
 * Computes a random value at the coordinate (x,y,z).
 * 
 * <p>Adjacent random values are continuous but the noise fluctuates its randomness with period 1, i.e. takes on wholly unrelated values at integer points.
 * Specifically, this implements Ken Perlin's revised noise function from 2002.</p>
 * 
 * <p>The "wrap" parameters can be used to create wraparound noise that wraps at powers of two. The numbers MUST be powers of two. Specify 0 to mean "don't
 * care". (The noise always wraps every 256 due details of the implementation, even if you ask for larger or no wrapping.)</p>
 *
 * @param x      the x coordinate
 * @param y      the y coordinate
 * @param z      the z coordinate
 * @param x_wrap 0, or a power of two value that specifies the x wraparound coordinate
 * @param y_wrap 0, or a power of two value that specifies the y wraparound coordinate
 * @param z_wrap 0, or a power of two value that specifies the z wraparound coordinate
 */
	static public function stb_perlin_noise3(x:Float,y:Float,z:Float,x_wrap:Int,y_wrap:Int,z_wrap:Int):Float;

}
