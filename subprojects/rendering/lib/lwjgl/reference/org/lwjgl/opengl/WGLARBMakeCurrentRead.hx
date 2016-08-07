package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBMakeCurrentRead")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_make_current_read.txt">WGL_ARB_make_current_read</a> extension.
 * 
 * <p>The association of a separate "read" and "draw" DC with the current context allows for preprocessing of image data in an "off screen" DC which is then
 * read into a visible DC for final display.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string}.</p>
 */
extern class WGLARBMakeCurrentRead 
{
/** New errors returned by {@link org.lwjgl.system.windows.WinBase#GetLastError}.  */
	inline static public var ERROR_INVALID_PIXEL_TYPE_ARB:Int = 8259;
/** New errors returned by {@link org.lwjgl.system.windows.WinBase#GetLastError}.  */
	inline static public var ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB:Int = 8276;
/** Function address.  */
	public var MakeContextCurrentARB:haxe.Int64;
/** Function address.  */
	public var GetCurrentReadDCARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Associates the context {@code hglrc} with the device {@code drawDC} for draws and the device {@code readDC} for reads. All subsequent OpenGL calls made
 * by the calling thread are drawn on the device identified by {@code drawDC} and read on the device identified by {@code readDC}.
 * 
 * <p>The {@code drawDC} and {@code readDC} parameters must refer to drawing surfaces supported by OpenGL. These parameters need not be the same {@code hdc}
 * that was passed to {@link WGL#wglCreateContext CreateContext} when {@code hglrc} was created. {@code drawDC} must have the same pixel format and be created on the same
 * physical device as the {@code hdc} that was passed into wglCreateContext. {@code readDC} must be created on the same device as the {@code hdc} that was
 * passed to wglCreateContext and it must support the same pixel type as the pixel format of the {@code hdc} that was passed to wglCreateContext.</p>
 * 
 * <p>If {@code wglMakeContextCurrentARB} is used to associate a different device for reads than for draws, the "read" device will be used for the following
 * OpenGL operations:
 * <ol>
 * <li>Any pixel data that are sourced based on the value of {@link GL11#GL_READ_BUFFER}. Note, that accumulation operations use the value of
 * {@code READ_BUFFER}, but are not allowed when a different device context is used for reads.  In this case, the accumulation operation will generate
 * {@link GL11#GL_INVALID_OPERATION}.</li>
 * <li>Any depth values that are retrieved by {@link GL11#glReadPixels}, {@link GL11#glCopyPixels}, or any OpenGL extension that sources
 * depth images from the frame buffer in the manner of ReadPixels and CopyPixels.</li>
 * <li>Any stencil values that are retrieved by ReadPixels, CopyPixels, or any OpenGL extension that sources stencil images from the framebuffer in the
 * manner of ReadPixels and CopyPixels.</li>
 * </ol>
 * These frame buffer values are taken from the surface associated with the device context specified by {@code readDC}.</p>
 *
 * @param drawDC the "draw" device context
 * @param readDC the "read" device context
 * @param hglrc  the OpenGL context
 */
	static public function wglMakeContextCurrentARB(drawDC:haxe.Int64,readDC:haxe.Int64,hglrc:haxe.Int64):Int;
/** JNI method for {@link #wglMakeContextCurrentARB MakeContextCurrentARB}  */
	static public function nwglMakeContextCurrentARB(drawDC:haxe.Int64,readDC:haxe.Int64,hglrc:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Returns the "read" device context for the current OpenGL context.  */
	static public function wglGetCurrentReadDCARB():haxe.Int64;
/** Returns the {@link WGLARBMakeCurrentRead} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLARBMakeCurrentRead;
/** JNI method for {@link #wglGetCurrentReadDCARB GetCurrentReadDCARB}  */
	static public function nwglGetCurrentReadDCARB(__functionAddress:haxe.Int64):haxe.Int64;

}
