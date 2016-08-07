package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVDeepTexture3D")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/deep_texture3D.txt">NV_deep_texture3D</a> extension.
 * 
 * <p>Some applications require 3D textures that have a significant number of slices, but less resolution in width and height. In the current spec, the
 * maximum value for the size of all three dimensions is specified by a single value. This extension adds a second set of limits against which 3D textures
 * can be checked if an application needs deeper textures than would be allowed by the symmetric texture limits.</p>
 */
extern class NVDeepTexture3D 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV:Int = 37072;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv and GetFloatv.  */
	inline static public var GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV:Int = 37073;

}
