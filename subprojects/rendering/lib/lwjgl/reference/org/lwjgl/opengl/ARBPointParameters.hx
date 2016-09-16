package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBPointParameters")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/point_parameters.txt">ARB_point_parameters</a> extension.
 * 
 * <p>This extension supports additional geometric characteristics of points. It can be used to render particles or tiny light sources, commonly referred to
 * as "Light points".</p>
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
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class ARBPointParameters 
{
/** Accepted by the {@code pname} parameter of PointParameterfvARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_SIZE_MIN_ARB:Int = 33062;
/** Accepted by the {@code pname} parameter of PointParameterfvARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_SIZE_MAX_ARB:Int = 33063;
/** Accepted by the {@code pname} parameter of PointParameterfvARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_FADE_THRESHOLD_SIZE_ARB:Int = 33064;
/** Accepted by the {@code pname} parameter of PointParameterfvARB, and the {@code pname} of Get.  */
	inline static public var GL_POINT_DISTANCE_ATTENUATION_ARB:Int = 33065;
/** Function address.  */
	public var PointParameterfARB:haxe.Int64;
/** Function address.  */
	public var PointParameterfvARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glPointParameterfvARB PointParameterfvARB}  */
/** JNI method for {@link #glPointParameterfvARB PointParameterfvARB}  */
	static public function nglPointParameterfvARB(pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,params:haxe.Int64):Void {})
/**
 * Sets the float value of a pointer parameter.
 *
 * @param pname the parameter to set. One of:<br>{@link #GL_POINT_SIZE_MIN_ARB POINT_SIZE_MIN_ARB}, {@link #GL_POINT_SIZE_MAX_ARB POINT_SIZE_MAX_ARB}, {@link #GL_POINT_FADE_THRESHOLD_SIZE_ARB POINT_FADE_THRESHOLD_SIZE_ARB}
 * @param param the parameter value
 */
	static public function glPointParameterfARB(pname:Int,param:Float):Void;
/** Returns the {@link ARBPointParameters} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBPointParameters;
/** JNI method for {@link #glPointParameterfARB PointParameterfARB}  */
	static public function nglPointParameterfARB(pname:Int,param:Float,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glPointParameterfARB PointParameterfARB}.
 *
 * @param pname  the parameter to set. Must be:<br>{@link #GL_POINT_DISTANCE_ATTENUATION_ARB POINT_DISTANCE_ATTENUATION_ARB}
 * @param params the parameter value
 */
/** Alternative version of: {@link #glPointParameterfvARB PointParameterfvARB}  */
	static public function glPointParameterfvARB(pname:Int,params:java.nio.FloatBuffer):Void;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Void {})

}