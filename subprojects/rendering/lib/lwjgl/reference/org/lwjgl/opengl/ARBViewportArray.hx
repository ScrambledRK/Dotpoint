package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBViewportArray")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/viewport_array.txt">ARB_viewport_array</a> extension.
 * 
 * <p>OpenGL is modeled on a pipeline of operations. The final stage in this pipeline before rasterization is the viewport transformation. This stage
 * transforms vertices from view space into window coordinates and allows the application to specify a rectangular region of screen space into which OpenGL
 * should draw primitives. Unextended OpenGL implementations provide a single viewport per context. In order to draw primitives into multiple viewports,
 * the OpenGL viewport may be changed between several draw calls. With the advent of Geometry Shaders, it has become possible for an application to amplify
 * geometry and produce multiple output primitives for each primitive input to the Geometry Shader. It is possible to direct these primitives to render
 * into a selected render target. However, all render targets share the same, global OpenGL viewport.</p>
 * 
 * <p>This extension enhances OpenGL by providing a mechanism to expose multiple viewports. Each viewport is specified as a rectangle. The destination
 * viewport may be selected per-primitive by the geometry shader. This allows the Geometry Shader to produce different versions of primitives destined for
 * separate viewport rectangles on the same surface. Additionally, when combined with multiple framebuffer attachments, it allows a different viewport
 * rectangle to be selected for each. This extension also exposes a separate scissor rectangle for each viewport. Finally, the viewport bounds are now
 * floating point quantities allowing fractional pixel offsets to be applied during the viewport transform.</p>
 * 
 * <p>Requires {@link GL32 OpenGL 3.2} or <a href="http://www.opengl.org/registry/specs/EXT/geometry_shader4.txt">EXT_geometry_shader4</a> or {@link ARBGeometryShader4 ARB_geometry_shader4}. Promoted to core in {@link GL41 OpenGL 4.1}.</p>
 */
extern class ARBViewportArray 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_MAX_VIEWPORTS:Int = 33371;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_VIEWPORT_SUBPIXEL_BITS:Int = 33372;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_VIEWPORT_BOUNDS_RANGE:Int = 33373;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_LAYER_PROVOKING_VERTEX:Int = 33374;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, GetDoublev and GetInteger64v.  */
	inline static public var GL_VIEWPORT_INDEX_PROVOKING_VERTEX:Int = 33375;
/** Returned in the {@code data} parameter from a Get query with a {@code pname} of LAYER_PROVOKING_VERTEX or VIEWPORT_INDEX_PROVOKING_VERTEX.  */
	inline static public var GL_UNDEFINED_VERTEX:Int = 33376;
/** Function address.  */
	public var ViewportArrayv:haxe.Int64;
/** Function address.  */
	public var ViewportIndexedf:haxe.Int64;
/** Function address.  */
	public var ViewportIndexedfv:haxe.Int64;
/** Function address.  */
	public var ScissorArrayv:haxe.Int64;
/** Function address.  */
	public var ScissorIndexed:haxe.Int64;
/** Function address.  */
	public var ScissorIndexedv:haxe.Int64;
/** Function address.  */
	public var DepthRangeArrayv:haxe.Int64;
/** Function address.  */
	public var DepthRangeIndexed:haxe.Int64;
/** Function address.  */
	public var GetFloati_v:haxe.Int64;
/** Function address.  */
	public var GetDoublei_v:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Pointer version of {@link #glViewportIndexedf ViewportIndexedf}.
 *
 * @param index the viewport to set
 * @param v     the viewport parameters
 */
/** Alternative version of: {@link #glViewportIndexedfv ViewportIndexedfv}  */
	static public function glViewportIndexedfv(index:Int,v:java.nio.FloatBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Single return value version of: {@link #glGetFloati_v GetFloati_v}  */
	static public function glGetFloati(target:Int,index:Int):Float;
/** Unsafe version of {@link #glViewportArrayv ViewportArrayv}  */
	static public function nglViewportArrayv(first:Int,count:Int,v:haxe.Int64):Void;
/**
 * Queries the float value of an indexed state variable.
 *
 * @param target the indexed state to query
 * @param index  the index of the element being queried
 * @param data   a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetFloati_v GetFloati_v}  */
	static public function glGetFloati_v(target:Int,index:Int,data:java.nio.FloatBuffer):Void;
	@:overload(function (target:Int,index:Int,data:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glViewportIndexedfv ViewportIndexedfv}  */
	static public function nglViewportIndexedfv(index:Int,v:haxe.Int64):Void;
/** Unsafe version of {@link #glScissorArrayv ScissorArrayv}  */
	static public function nglScissorArrayv(first:Int,count:Int,v:haxe.Int64):Void;
/**
 * Sets a specified viewport.
 *
 * @param index the viewport to set
 * @param x     the left viewport coordinate
 * @param y     the bottom viewport coordinate
 * @param w     the viewport width
 * @param h     the viewport height
 */
	static public function glViewportIndexedf(index:Int,x:Float,y:Float,w:Float,h:Float):Void;
/** Alternative version of: {@link #glScissorArrayv ScissorArrayv}  */
/**
 * Defines the scissor box for multiple viewports.
 *
 * @param first the index of the first viewport whose scissor box to modify
 * @param count the number of scissor boxes to modify
 * @param v     an array containing the left, bottom, width and height of each scissor box, in that order
 */
	static public function glScissorArrayv(first:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,v:java.nio.IntBuffer):Void {})
/** Single return value version of: {@link #glGetDoublei_v GetDoublei_v}  */
	static public function glGetDoublei(target:Int,index:Int):Float;
/**
 * Pointer version of {@link #glScissorIndexed ScissorIndexed}.
 *
 * @param index the index of the viewport whose scissor box to modify
 * @param v     an array containing the left, bottom, width and height of each scissor box, in that order
 */
/** Alternative version of: {@link #glScissorIndexedv ScissorIndexedv}  */
	static public function glScissorIndexedv(index:Int,v:java.nio.IntBuffer):Void;
	@:overload(function (index:Int,v:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetFloati_v GetFloati_v}  */
	static public function nglGetFloati_v(target:Int,index:Int,data:haxe.Int64):Void;
/** Unsafe version of {@link #glScissorIndexedv ScissorIndexedv}  */
	static public function nglScissorIndexedv(index:Int,v:haxe.Int64):Void;
/** Unsafe version of {@link #glDepthRangeArrayv DepthRangeArrayv}  */
	static public function nglDepthRangeArrayv(first:Int,count:Int,v:haxe.Int64):Void;
/**
 * Defines the scissor box for a specific viewport.
 *
 * @param index  the index of the viewport whose scissor box to modify
 * @param left   the left scissor box coordinate
 * @param bottom the bottom scissor box coordinate
 * @param width  the scissor box width
 * @param height the scissor box height
 */
	static public function glScissorIndexed(index:Int,left:Int,bottom:Int,width:Int,height:Int):Void;
/**
 * Queries the double value of an indexed state variable.
 *
 * @param target the indexed state to query
 * @param index  the index of the element being queried
 * @param data   a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetDoublei_v GetDoublei_v}  */
	static public function glGetDoublei_v(target:Int,index:Int,data:java.nio.DoubleBuffer):Void;
	@:overload(function (target:Int,index:Int,data:java.nio.ByteBuffer):Void {})
/** Alternative version of: {@link #glDepthRangeArrayv DepthRangeArrayv}  */
/**
 * Specifies mapping of depth values from normalized device coordinates to window coordinates for a specified set of viewports.
 *
 * @param first the index of the first viewport whose depth range to update
 * @param count the number of viewports whose depth range to update
 * @param v     n array containing the near and far values for the depth range of each modified viewport
 */
	static public function glDepthRangeArrayv(first:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,v:java.nio.DoubleBuffer):Void {})
/**
 * Specifies mapping of depth values from normalized device coordinates to window coordinates for a specified viewport.
 *
 * @param index the index of the viewport whose depth range to update
 * @param zNear the mapping of the near clipping plane to window coordinates. The initial value is 0.
 * @param zFar  the mapping of the far clipping plane to window coordinates. The initial value is 1.
 */
	static public function glDepthRangeIndexed(index:Int,zNear:Float,zFar:Float):Void;
/** Unsafe version of {@link #glGetDoublei_v GetDoublei_v}  */
	static public function nglGetDoublei_v(target:Int,index:Int,data:haxe.Int64):Void;
/** Returns the {@link ARBViewportArray} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBViewportArray;
/** Alternative version of: {@link #glViewportArrayv ViewportArrayv}  */
/**
 * Sets multiple viewports.
 *
 * @param first the first viewport to set
 * @param count the number of viewports to set
 * @param v     an array containing the viewport parameters
 */
	static public function glViewportArrayv(first:Int,count:Int,v:java.nio.ByteBuffer):Void;
	@:overload(function (first:Int,v:java.nio.FloatBuffer):Void {})

}
