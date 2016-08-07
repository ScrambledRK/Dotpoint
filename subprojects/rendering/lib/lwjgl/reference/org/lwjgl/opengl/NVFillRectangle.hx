package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVFillRectangle")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/fill_rectangle.txt">NV_fill_rectangle</a> extension.
 * 
 * <p>This extension adds a new {@link GL11#glPolygonMode PolygonMode} setting where a triangle is rasterized by computing and filling its axis-aligned screen-space bounding
 * box, disregarding the actual triangle edges. This can be useful for drawing a rectangle without being split into two triangles with an internal edge.
 * It is also useful to minimize the number of primitives that need to be drawn, particularly for a user-interface.</p>
 */
extern class NVFillRectangle 
{
/** Accepted by the {@code mode} parameter of PolygonMode.  */
	inline static public var GL_FILL_RECTANGLE_NV:Int = 37692;

}
