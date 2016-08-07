package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVPathRenderingSharedEdge")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/path_rendering_shared_edge.txt">NV_path_rendering_shared_edge</a> extension.
 * 
 * <p>This extension introduces a new path command modifier to the
 * NV_path_rendering extension to indicate that a path command represents an
 * edge (either straight or curved) that is shared with another path.</p>
 * 
 * <p>Requires <a href="http://www.opengl.org/registry/specs/NV/path_rendering.txt">NV_path_rendering</a></p>
 */
extern class NVPathRenderingSharedEdge 
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
/** Returns the {@link NVPathRenderingSharedEdge} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVPathRenderingSharedEdge;
/** Unsafe version of {@link #glPointParameterivNV PointParameterivNV}  */
/** JNI method for {@link #glPointParameterivNV PointParameterivNV}  */
	static public function nglPointParameterivNV(pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (pname:Int,params:haxe.Int64):Void {})
/** JNI method for {@link #glPointParameteriNV PointParameteriNV}  */
	static public function nglPointParameteriNV(pname:Int,param:Int,__functionAddress:haxe.Int64):Void;

}
