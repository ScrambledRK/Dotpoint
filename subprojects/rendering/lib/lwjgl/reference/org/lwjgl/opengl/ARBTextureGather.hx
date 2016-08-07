package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureGather")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_gather.txt">ARB_texture_gather</a> extension.
 * 
 * <p>This extension provides a new set of texture functions (textureGather) to the shading language that determine 2x2 footprint that are used for linear
 * filtering in a texture lookup, and return a vector consisting of the first component from each of the four texels in the footprint.</p>
 * 
 * <p>Promoted to core in {@link GL40 OpenGL 4.0}.</p>
 */
extern class ARBTextureGather 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB:Int = 36446;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB:Int = 36447;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB:Int = 36767;

}
