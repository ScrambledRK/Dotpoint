package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTPointParameters")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/point_parameters.txt">EXT_point_parameters</a> extension.
 * 
 * <p>This extension supports additional geometric characteristics of points. It can be used to render particles or tiny light sources, commonly referred as
 * "Light points".</p>
 * 
 * <p>The raster brightness of a point is a function of the point area, point color, point transparency, and the response of the display's electron gun and
 * phosphor. The point area and the point transparency are derived from the point size, currently provided with the {@code size} parameter of
 * {@link GL11#glPointSize PointSize}.</p>
 * 
 * <p>The primary motivation is to allow the size of a point to be affected by distance attenuation. When distance attenuation has an effect, the final point
 * size decreases as the distance of the point from the eye increases.</p>
 * 
 * <p>The secondary motivation is a mean to control the mapping from the point size to the raster point area and point transparency. This is done in order to
 * increase the dynamic range of the raster brightness of points. In other words, the alpha component of a point may be decreased (and its transparency
 * increased) as its area shrinks below a defined threshold.</p>
 * 
 * <p>This extension defines a derived point size to be closely related to point brightness. The brightness of a point is given by:
 * <pre><code style="font-family: monospace">
 * 						1
 * dist_atten(d) = -------------------
 *                 a + b * d + c * d^2
 * 
 * brightness(Pe) = Brightness * dist_atten(|Pe|)</code></pre>
 * where 'Pe' is the point in eye coordinates, and 'Brightness' is some initial value proportional to the square of the size provided with glPointSize.
 * Here we simplify the raster brightness to be a function of the rasterized point area and point transparency.
 * <pre><code style="font-family: monospace">
 * 			brightness(Pe)      brightness(Pe) >= Threshold_Area
 * area(Pe) =
 * 			Threshold_Area      Otherwise
 * 
 * factor(Pe) = brightness(Pe)/Threshold_Area
 * 
 * alpha(Pe) = Alpha * factor(Pe)</code></pre>
 * where 'Alpha' comes with the point color (possibly modified by lighting).</p>
 * 
 * <p>'Threshold_Area' above is in area units. Thus, it is proportional to the square of the threshold provided by the programmer through this extension.</p>
 * 
 * <p>The new point size derivation method applies to all points, while the threshold applies to multisample points only.</p>
 */
extern class EXTPointParameters 
{
/** Accepted by the {@code pname} parameter of glPointParameterfvEXT, and the {@code pname} of glGet.  */
	inline static public var GL_POINT_SIZE_MIN_EXT:Int = 33062;
/** Accepted by the {@code pname} parameter of glPointParameterfvEXT, and the {@code pname} of glGet.  */
	inline static public var GL_POINT_SIZE_MAX_EXT:Int = 33063;
/** Accepted by the {@code pname} parameter of glPointParameterfvEXT, and the {@code pname} of glGet.  */
	inline static public var GL_POINT_FADE_THRESHOLD_SIZE_EXT:Int = 33064;
/** Accepted by the {@code pname} parameter of glPointParameterfvEXT, and the {@code pname} of glGet.  */
	inline static public var GL_DISTANCE_ATTENUATION_EXT:Int = 33065;
/** Function address.  */
	public var PointParameterfEXT:haxe.Int64;
/** Function address.  */
	public var PointParameterfvEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glPointParameterfvEXT PointParameterfvEXT}  */
/** JNI method for {@link #glPointParameterfvEXT PointParameterfvEXT}  */
	static public function nglPointParameterfvEXT(pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,params:haxe.Int64):Void {})
/**
 * 
 *
 * @param pname 
 * @param param 
 */
	static public function glPointParameterfEXT(pname:Int,param:Float):Void;
/** Returns the {@link EXTPointParameters} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTPointParameters;
/** JNI method for {@link #glPointParameterfEXT PointParameterfEXT}  */
	static public function nglPointParameterfEXT(pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glPointParameterfvEXT PointParameterfvEXT}  */
	static public function glPointParameterfvEXT(pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Void {})

}
