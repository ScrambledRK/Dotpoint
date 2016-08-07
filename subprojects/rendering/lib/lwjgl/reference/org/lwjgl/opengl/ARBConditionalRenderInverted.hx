package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBConditionalRenderInverted")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/conditional_render_inverted.txt">ARB_conditional_render_inverted</a> extension.
 * 
 * <p>This extension adds new modes to {@link GL30#glBeginConditionalRender BeginConditionalRender} which invert the condition used to determine whether to draw or not.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0}. Promoted to core in {@link GL45 OpenGL 4.5}.</p>
 */
extern class ARBConditionalRenderInverted 
{
/** Accepted by the {@code mode} parameter of {@link GL30#glBeginConditionalRender BeginConditionalRender}.  */
	inline static public var GL_QUERY_WAIT_INVERTED:Int = 36375;
/** Accepted by the {@code mode} parameter of {@link GL30#glBeginConditionalRender BeginConditionalRender}.  */
	inline static public var GL_QUERY_NO_WAIT_INVERTED:Int = 36376;
/** Accepted by the {@code mode} parameter of {@link GL30#glBeginConditionalRender BeginConditionalRender}.  */
	inline static public var GL_QUERY_BY_REGION_WAIT_INVERTED:Int = 36377;
/** Accepted by the {@code mode} parameter of {@link GL30#glBeginConditionalRender BeginConditionalRender}.  */
	inline static public var GL_QUERY_BY_REGION_NO_WAIT_INVERTED:Int = 36378;

}
