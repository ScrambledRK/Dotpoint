package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ATIMeminfo")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ATI/meminfo.txt">ATI_meminfo</a> extension.
 * 
 * <p>Traditionally, OpenGL has treated resource management as a task of hardware virtualization hidden from applications. While providing great portability,
 * this shielding of information can prevent applications from making intelligent decisions on the management of resources they create. For instance, an
 * application may be better served by choosing a different rendering method if there is not sufficient resources to efficiently utilize its preferred
 * method.</p>
 * 
 * <p>Requires {@link GL11 OpenGL 1.1}</p>
 */
extern class ATIMeminfo 
{
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_VBO_FREE_MEMORY_ATI:Int = 34811;
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_TEXTURE_FREE_MEMORY_ATI:Int = 34812;
/** Accepted by the {@code param} parameter of GetIntegerv.  */
	inline static public var GL_RENDERBUFFER_FREE_MEMORY_ATI:Int = 34813;

}
