package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVPointSprite")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/point_sprite.txt">NV_point_sprite</a> extension.
 * 
 * <p>Applications such as particle systems usually must use OpenGL quads rather than points to render their geometry, since they would like to use a
 * custom-drawn texture for each particle, rather than the traditional OpenGL round antialiased points, and each fragment in a point has the same texture
 * coordinates as every other fragment.</p>
 * 
 * <p>Unfortunately, specifying the geometry for these quads can be quite expensive, since it quadruples the amount of geometry required, and it may also
 * require the application to do extra processing to compute the location of each vertex.</p>
 * 
 * <p>The goal of this extension is to allow such apps to use points rather than quads. When {@link #GL_POINT_SPRITE_NV POINT_SPRITE_NV} is enabled, the state of point antialiasing
 * is ignored. For each texture unit, the app can then specify whether to replace the existing texture coordinates with point sprite texture coordinates,
 * which are interpolated across the point. Finally, the app can set a global parameter for the way to generate the R coordinate for point sprites; the R
 * coordinate can either be zero, the input S coordinate, or the input R coordinate. This allows applications to use a 3D texture to represent a point
 * sprite that goes through an animation, with filtering between frames, for example.</p>
 * 
 * <p>Requires <a href="http://www.opengl.org/registry/specs/EXT/point_parameters.txt">EXT_point_parameters</a></p>
 */
extern class NVPointSprite 
{
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev, and by the {@code target} parameter of TexEnvi, TexEnviv, TexEnvf, TexEnvfv, GetTexEnviv, and GetTexEnvfv.
 */
	inline static public var GL_POINT_SPRITE_NV:Int = 34913;
/**
 * When the {@code target} parameter of TexEnvf, TexEnvfv, TexEnvi, TexEnviv, GetTexEnvfv, or GetTexEnviv is POINT_SPRITE_NV, then the value of
 * {@code pname} may be.
 */
	inline static public var GL_COORD_REPLACE_NV:Int = 34914;
/**
 * Accepted by the {@code pname} parameter of PointParameteriNV, PointParameterfEXT, PointParameterivNV, PointParameterfvEXT, GetBooleanv, GetIntegerv,
 * GetFloatv, and GetDoublev.
 */
	inline static public var GL_POINT_SPRITE_R_MODE_NV:Int = 34915;
/** Function address.  */
	public var PointParameteriNV:haxe.Int64;
/** Function address.  */
	public var PointParameterivNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * 
 *
 * @param pname  
 * @param params 
 */
/** Alternative version of: {@link #glPointParameterivNV PointParameterivNV}  */
	static public function glPointParameterivNV(pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * 
 *
 * @param pname 
 * @param param 
 */
	static public function glPointParameteriNV(pname:Int,param:Int):Void;
/** Returns the {@link NVPointSprite} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVPointSprite;
/** Unsafe version of {@link #glPointParameterivNV PointParameterivNV}  */
/** JNI method for {@link #glPointParameterivNV PointParameterivNV}  */
	static public function nglPointParameterivNV(pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glPointParameteriNV PointParameteriNV}  */
	static public function nglPointParameteriNV(pname:Int,param:Int,__functionAddress:haxe.Int64):Void;

}
