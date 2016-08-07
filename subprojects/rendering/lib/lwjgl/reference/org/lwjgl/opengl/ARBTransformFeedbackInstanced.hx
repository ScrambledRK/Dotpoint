package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTransformFeedbackInstanced")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/transform_feedback_instanced.txt">ARB_transform_feedback_instanced</a> extension.
 * 
 * <p>Multiple instances of geometry may be specified to the GL by calling functions such as {@link GL31#glDrawArraysInstanced DrawArraysInstanced} and {@link GL31#glDrawElementsInstanced DrawElementsInstanced}.
 * Further, the results of a transform feedback operation may be returned to the GL by calling {@link GL40#glDrawTransformFeedback DrawTransformFeedback}, or
 * {@link GL40#glDrawTransformFeedbackStream DrawTransformFeedbackStream}. However, it is not presently possible to draw multiple instances of data transform feedback without using a query
 * and the resulting round trip from server to client.</p>
 * 
 * <p>This extension adds functionality to draw multiple instances of the result of a transform feedback operation.</p>
 * 
 * <p>Requires {@link GL40 OpenGL 4.0} or {@link ARBTransformFeedback2 ARB_transform_feedback2}. Requires {@link GL31 OpenGL 3.1} or {@link ARBDrawInstanced ARB_draw_instanced}. Promoted to core in {@link GL42 OpenGL 4.2}.</p>
 */
extern class ARBTransformFeedbackInstanced 
{
/** Function address.  */
	public var DrawTransformFeedbackInstanced:haxe.Int64;
/** Function address.  */
	public var DrawTransformFeedbackStreamInstanced:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Renders multiple instances of primitives using a count derived from a transform feedback object.
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param id        the name of a transform feedback object from which to retrieve a primitive count
 * @param primcount the number of instances of the geometry to render
 */
	static public function glDrawTransformFeedbackInstanced(mode:Int,id:Int,primcount:Int):Void;
/**
 * Renders multiple instances of primitives using a count derived from a specifed stream of a transform feedback object.
 *
 * @param mode      what kind of primitives to render. One of:<br>{@link GL11#GL_POINTS POINTS}, {@link GL11#GL_LINE_STRIP LINE_STRIP}, {@link GL11#GL_LINE_LOOP LINE_LOOP}, {@link GL11#GL_LINES LINES}, {@link GL11#GL_POLYGON POLYGON}, {@link GL11#GL_TRIANGLE_STRIP TRIANGLE_STRIP}, {@link GL11#GL_TRIANGLE_FAN TRIANGLE_FAN}, {@link GL11#GL_TRIANGLES TRIANGLES}, {@link GL11#GL_QUAD_STRIP QUAD_STRIP}, {@link GL11#GL_QUADS QUADS}, {@link GL32#GL_LINES_ADJACENCY LINES_ADJACENCY}, {@link GL32#GL_LINE_STRIP_ADJACENCY LINE_STRIP_ADJACENCY}, {@link GL32#GL_TRIANGLES_ADJACENCY TRIANGLES_ADJACENCY}, {@link GL32#GL_TRIANGLE_STRIP_ADJACENCY TRIANGLE_STRIP_ADJACENCY}, {@link GL40#GL_PATCHES PATCHES}
 * @param id        the name of a transform feedback object from which to retrieve a primitive count
 * @param stream    the index of the transform feedback stream from which to retrieve a primitive count
 * @param primcount the number of instances of the geometry to render
 */
	static public function glDrawTransformFeedbackStreamInstanced(mode:Int,id:Int,stream:Int,primcount:Int):Void;
/** Returns the {@link ARBTransformFeedbackInstanced} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTransformFeedbackInstanced;

}
