package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVXConditionalRender")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NVX/conditional_render.txt">NVX_conditional_render</a> extension.
 * 
 * <p>This extension provides support for conditional rendering based on the
 * results of an occlusion query.  This mechanism allows an application to
 * potentially reduce the latency between the completion of an occlusion
 * query and the rendering commands depending on its result.  It additionally
 * allows the decision of whether to render to be made without application
 * intervention.</p>
 * 
 * <p>Requires {@link GL15 OpenGL 1.5} or {@link ARBOcclusionQuery ARB_occlusion_query}</p>
 */
extern class NVXConditionalRender 
{
/** Function address.  */
	public var BeginConditionalRenderNVX:haxe.Int64;
/** Function address.  */
	public var EndConditionalRenderNVX:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
	static public function glEndConditionalRenderNVX():Void;
/** JNI method for {@link #glEndConditionalRenderNVX EndConditionalRenderNVX}  */
	static public function nglEndConditionalRenderNVX(__functionAddress:haxe.Int64):Void;
/** Returns the {@link NVXConditionalRender} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVXConditionalRender;
/**
 * 
 *
 * @param id 
 */
	static public function glBeginConditionalRenderNVX(id:Int):Void;
/** JNI method for {@link #glBeginConditionalRenderNVX BeginConditionalRenderNVX}  */
	static public function nglBeginConditionalRenderNVX(id:Int,__functionAddress:haxe.Int64):Void;

}
