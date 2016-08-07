package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBWindowPos")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/window_pos.txt">ARB_window_pos</a> extension.
 * 
 * <p>In order to set the current raster position to a specific window coordinate with the {@link GL11#glRasterPos2i RasterPos2i} command, the modelview matrix, projection matrix
 * and viewport must be set very carefully. Furthermore, if the desired window coordinate is outside of the window's bounds one must rely on a subtle
 * side-effect of the {@link GL11#glBitmap Bitmap} command in order to avoid frustum clipping.</p>
 * 
 * <p>This extension provides a set of functions to directly set the current raster position in window coordinates, bypassing the modelview matrix, the
 * projection matrix and the viewport-to-window mapping. Furthermore, clip testing is not performed, so that the current raster position is always valid.</p>
 * 
 * <p>This greatly simplifies the process of setting the current raster position to a specific window coordinate prior to calling {@link GL11#glDrawPixels DrawPixels},
 * {@link GL11#glCopyPixels CopyPixels} or {@link GL11#glBitmap Bitmap}. Many matrix operations can be avoided when mixing 2D and 3D rendering.</p>
 * 
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class ARBWindowPos 
{
/** Function address.  */
	public var WindowPos2iARB:haxe.Int64;
/** Function address.  */
	public var WindowPos2sARB:haxe.Int64;
/** Function address.  */
	public var WindowPos2fARB:haxe.Int64;
/** Function address.  */
	public var WindowPos2dARB:haxe.Int64;
/** Function address.  */
	public var WindowPos2ivARB:haxe.Int64;
/** Function address.  */
	public var WindowPos2svARB:haxe.Int64;
/** Function address.  */
	public var WindowPos2fvARB:haxe.Int64;
/** Function address.  */
	public var WindowPos2dvARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3iARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3sARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3fARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3dARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3ivARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3svARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3fvARB:haxe.Int64;
/** Function address.  */
	public var WindowPos3dvARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Alternate way to set the current raster position.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3iARB(x:Int,y:Int,z:Int):Void;
/**
 * Short version of {@link #glWindowPos2iARB WindowPos2iARB}.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2sARB(x:Int16,y:Int16):Void;
/** JNI method for {@link #glWindowPos2iARB WindowPos2iARB}  */
	static public function nglWindowPos2iARB(x:Int,y:Int,__functionAddress:haxe.Int64):Void;
/**
 * Alternate way to set the current raster position. {@code z} is implictly set to 0.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2iARB(x:Int,y:Int):Void;
/** Unsafe version of {@link #glWindowPos2svARB WindowPos2svARB}  */
/** JNI method for {@link #glWindowPos2svARB WindowPos2svARB}  */
	static public function nglWindowPos2svARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** Unsafe version of {@link #glWindowPos2dvARB WindowPos2dvARB}  */
/** JNI method for {@link #glWindowPos2dvARB WindowPos2dvARB}  */
	static public function nglWindowPos2dvARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** Unsafe version of {@link #glWindowPos3ivARB WindowPos3ivARB}  */
/** JNI method for {@link #glWindowPos3ivARB WindowPos3ivARB}  */
	static public function nglWindowPos3ivARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * Double version of {@link #glWindowPos2iARB WindowPos2iARB}.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2dARB(x:Float,y:Float):Void;
/**
 * Pointer version of {@link #glWindowPos2fARB WindowPos2fARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2fvARB WindowPos2fvARB}  */
	static public function glWindowPos2fvARB(p:java.nio.FloatBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWindowPos2fvARB WindowPos2fvARB}  */
/** JNI method for {@link #glWindowPos2fvARB WindowPos2fvARB}  */
	static public function nglWindowPos2fvARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glWindowPos3iARB WindowPos3iARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3ivARB WindowPos3ivARB}  */
	static public function glWindowPos3ivARB(p:java.nio.IntBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWindowPos3svARB WindowPos3svARB}  */
/** JNI method for {@link #glWindowPos3svARB WindowPos3svARB}  */
	static public function nglWindowPos3svARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** JNI method for {@link #glWindowPos3iARB WindowPos3iARB}  */
	static public function nglWindowPos3iARB(x:Int,y:Int,z:Int,__functionAddress:haxe.Int64):Void;
/**
 * Pointer version of {@link #glWindowPos3sARB WindowPos3sARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3svARB WindowPos3svARB}  */
	static public function glWindowPos3svARB(p:java.nio.ShortBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWindowPos3fvARB WindowPos3fvARB}  */
/** JNI method for {@link #glWindowPos3fvARB WindowPos3fvARB}  */
	static public function nglWindowPos3fvARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glWindowPos3fARB WindowPos3fARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3fvARB WindowPos3fvARB}  */
	static public function glWindowPos3fvARB(p:java.nio.FloatBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/**
 * Double version of {@link #glWindowPos3iARB WindowPos3iARB}.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3dARB(x:Float,y:Float,z:Float):Void;
/** JNI method for {@link #glWindowPos2fARB WindowPos2fARB}  */
	static public function nglWindowPos2fARB(x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glWindowPos3sARB WindowPos3sARB}  */
	static public function nglWindowPos3sARB(x:Int16,y:Int16,z:Int16,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glWindowPos2dARB WindowPos2dARB}  */
	static public function nglWindowPos2dARB(x:Float,y:Float,__functionAddress:haxe.Int64):Void;
/**
 * Float version of {@link #glWindowPos3iARB WindowPos3iARB}.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3fARB(x:Float,y:Float,z:Float):Void;
/**
 * Pointer version of {@link #glWindowPos2sARB WindowPos2sARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2svARB WindowPos2svARB}  */
	static public function glWindowPos2svARB(p:java.nio.ShortBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/**
 * Pointer version of {@link #glWindowPos2dARB WindowPos2dARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2dvARB WindowPos2dvARB}  */
	static public function glWindowPos2dvARB(p:java.nio.DoubleBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glWindowPos2sARB WindowPos2sARB}  */
	static public function nglWindowPos2sARB(x:Int16,y:Int16,__functionAddress:haxe.Int64):Void;
/**
 * Float version of {@link #glWindowPos2iARB WindowPos2iARB}.
 *
 * @param x the x value
 * @param y the y value
 */
	static public function glWindowPos2fARB(x:Float,y:Float):Void;
/**
 * Short version of {@link #glWindowPos3iARB WindowPos3iARB}.
 *
 * @param x the x value
 * @param y the y value
 * @param z the z value
 */
	static public function glWindowPos3sARB(x:Int16,y:Int16,z:Int16):Void;
/**
 * Pointer version of {@link #glWindowPos3dARB WindowPos3dARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos3dvARB WindowPos3dvARB}  */
	static public function glWindowPos3dvARB(p:java.nio.DoubleBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glWindowPos3dvARB WindowPos3dvARB}  */
/** JNI method for {@link #glWindowPos3dvARB WindowPos3dvARB}  */
	static public function nglWindowPos3dvARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/** JNI method for {@link #glWindowPos3dARB WindowPos3dARB}  */
	static public function nglWindowPos3dARB(x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glWindowPos3fARB WindowPos3fARB}  */
	static public function nglWindowPos3fARB(x:Float,y:Float,z:Float,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glWindowPos2ivARB WindowPos2ivARB}  */
/** JNI method for {@link #glWindowPos2ivARB WindowPos2ivARB}  */
	static public function nglWindowPos2ivARB(p:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (p:haxe.Int64):Void {})
/**
 * Pointer version of {@link #glWindowPos2iARB WindowPos2iARB}.
 *
 * @param p the position value
 */
/** Alternative version of: {@link #glWindowPos2ivARB WindowPos2ivARB}  */
	static public function glWindowPos2ivARB(p:java.nio.IntBuffer):Void;
	@:overload(function (p:java.nio.ByteBuffer):Void {})
/** Returns the {@link ARBWindowPos} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBWindowPos;

}
