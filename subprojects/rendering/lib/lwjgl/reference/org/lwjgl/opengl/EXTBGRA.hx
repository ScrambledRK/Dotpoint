package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTBGRA")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/bgra.txt">EXT_bgra</a> extension.
 * 
 * <p>EXT_bgra extends the list of host-memory color formats. Specifically, it provides formats which match the memory layout of Windows DIBs so that
 * applications can use the same data in both Windows API calls and OpenGL pixel API calls.</p>
 * 
 * <p>Promoted to core in {@link GL12 OpenGL 1.2}.</p>
 */
extern class EXTBGRA 
{
/** Accepted by the {@code format} parameter of DrawPixels, GetTexImage, ReadPixels, TexImage1D, and TexImage2D.  */
	inline static public var GL_BGR_EXT:Int = 32992;
/** Accepted by the {@code format} parameter of DrawPixels, GetTexImage, ReadPixels, TexImage1D, and TexImage2D.  */
	inline static public var GL_BGRA_EXT:Int = 32993;

}
