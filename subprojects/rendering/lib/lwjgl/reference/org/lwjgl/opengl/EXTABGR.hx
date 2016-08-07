package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTABGR")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/abgr.txt">EXT_abgr</a> extension.
 * 
 * <p>EXT_abgr extends the list of host-memory color formats. Specifically, it provides a reverse-order alternative to image format RGBA. The ABGR component
 * order matches the cpack Iris GL format on big-endian machines.</p>
 */
extern class EXTABGR 
{
/** Accepted by the {@code format} parameter of DrawPixels, GetTexImage, ReadPixels, TexImage1D, and TexImage2D.  */
	inline static public var GL_ABGR_EXT:Int = 32768;

}
