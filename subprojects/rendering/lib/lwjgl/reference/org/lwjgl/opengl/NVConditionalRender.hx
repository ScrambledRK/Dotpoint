package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVConditionalRender")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/conditional_render.txt">NV_conditional_render</a> extension.
 * 
 * <p>This extension provides support for conditional rendering based on the results of an occlusion query. This mechanism allows an application to
 * potentially reduce the latency between the completion of an occlusion query and the rendering commands depending on its result. It additionally allows
 * the decision of whether to render to be made without application intervention.</p>
 * 
 * <p>This extension defines two new functions, {@link #glBeginConditionalRenderNV BeginConditionalRenderNV} and {@link #glEndConditionalRenderNV EndConditionalRenderNV}, between which rendering commands may be discarded
 * based on the results of an occlusion query. If the specified occlusion query returns a non-zero value, rendering commands between these calls are
 * executed. If the occlusion query returns a value of zero, all rendering commands between the calls are discarded.</p>
 * 
 * <p>If the occlusion query results are not available when {@link #glBeginConditionalRenderNV BeginConditionalRenderNV} is executed, the {@code mode} parameter specifies whether the GL
 * should wait for the query to complete or should simply render the subsequent geometry unconditionally.</p>
 * 
 * <p>Additionally, the extension provides a set of "by region" modes, allowing for implementations that divide rendering work by screen regions to perform
 * the conditional query test on a region-by-region basis without checking the query results from other regions. Such a mode is useful for cases like
 * split-frame SLI, where a frame is divided between multiple GPUs, each of which has its own occlusion query hardware.</p>
 */
extern class NVConditionalRender 
{
/** Accepted by the {@code mode} parameter of BeginConditionalRenderNV.  */
	inline static public var GL_QUERY_WAIT_NV:Int = 36371;
/** Accepted by the {@code mode} parameter of BeginConditionalRenderNV.  */
	inline static public var GL_QUERY_NO_WAIT_NV:Int = 36372;
/** Accepted by the {@code mode} parameter of BeginConditionalRenderNV.  */
	inline static public var GL_QUERY_BY_REGION_WAIT_NV:Int = 36373;
/** Accepted by the {@code mode} parameter of BeginConditionalRenderNV.  */
	inline static public var GL_QUERY_BY_REGION_NO_WAIT_NV:Int = 36374;
/** Function address.  */
	public var BeginConditionalRenderNV:haxe.Int64;
/** Function address.  */
	public var EndConditionalRenderNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
	static public function glEndConditionalRenderNV():Void;
/**
 * 
 *
 * @param id   
 * @param mode 
 */
	static public function glBeginConditionalRenderNV(id:Int,mode:Int):Void;
/** JNI method for {@link #glBeginConditionalRenderNV BeginConditionalRenderNV}  */
	static public function nglBeginConditionalRenderNV(id:Int,mode:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link NVConditionalRender} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVConditionalRender;
/** JNI method for {@link #glEndConditionalRenderNV EndConditionalRenderNV}  */
	static public function nglEndConditionalRenderNV(__functionAddress:haxe.Int64):Void;

}
