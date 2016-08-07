package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVMultisampleCoverage")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/multisample_coverage.txt">NV_multisample_coverage</a> extension.
 * 
 * <p>This extension follows the example of the NV_framebuffer_multisample_coverage extension, which adds CSAA support for framebuffer objects.</p>
 * 
 * <p>Requires {@link ARBMultisample ARB_multisample}.</p>
 */
extern class NVMultisampleCoverage 
{
/**
 * Accepted by the {@code attribList} parameter of glXChooseVisual, and by the {@code attrib} parameter of glXGetConfig, the
 * {@code attrib_list} parameter of glXChooseFBConfig, and the {@code attribute} parameter of glXGetFBConfigAttrib.
 */
	inline static public var GL_GLX_COVERAGE_SAMPLES_NV:Int = 100001;
/**
 * Accepted by the {@code attribList} parameter of glXChooseVisual, and by the {@code attrib} parameter of glXGetConfig, the
 * {@code attrib_list} parameter of glXChooseFBConfig, and the {@code attribute} parameter of glXGetFBConfigAttrib.
 */
	inline static public var GL_GLX_COLOR_SAMPLES_NV:Int = 8371;
/**
 * Accepted by the {@code piAttributes} parameter of wglGetPixelFormatAttribivEXT, wglGetPixelFormatAttribfvEXT, and the
 * {@code piAttribIList} and {@code pfAttribIList} of wglChoosePixelFormatEXT.
 */
	inline static public var GL_WGL_COVERAGE_SAMPLES_NV:Int = 8258;
/**
 * Accepted by the {@code piAttributes} parameter of wglGetPixelFormatAttribivEXT, wglGetPixelFormatAttribfvEXT, and the
 * {@code piAttribIList} and {@code pfAttribIList} of wglChoosePixelFormatEXT.
 */
	inline static public var GL_WGL_COLOR_SAMPLES_NV:Int = 8377;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_COLOR_SAMPLES_NV:Int = 36384;

}
