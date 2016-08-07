package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBPbuffer")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_pbuffer.txt">WGL_ARB_pbuffer</a> extension.
 * 
 * <p>This extension defines pixel buffers (pbuffer for short). Pbuffers are additional non-visible rendering buffers for an OpenGL renderer. Pbuffers are
 * equivalent to a window that has the same pixel format descriptor with the following exceptions:
 * <ol>
 * <li>There is no rendering to a pbuffer by GDI.</li>
 * <li>The pixel format descriptors used for a pbuffer can only be those that are supported by the ICD.  Generic formats are not valid.</li>
 * <li>The allocation of a pbuffer can fail if there are insufficient resources (i.e., all the pbuffer memory has been allocated).</li>
 * <li>The pixel buffer might be lost if a display mode change occurs. A query is provided that can be called after a display mode change to determine the
 * state of the pixel buffer.</li>
 * </ol>
 * The intent of the pbuffer semantics is to enable implementations to allocate pbuffers in non-visible frame buffer memory. These pbuffers are intended to
 * be "static" resources in that a program will typically allocate them only once rather than as a part of its rendering loop.  (Pbuffers should be
 * deallocated when the program is no longer using them -- for example, if the program is iconified.)</p>
 * 
 * <p>The frame buffer resources that are associated with a pbuffer are also static and are deallocated when the pbuffer is destroyed or possibly when a
 * display mode change occurs.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string} and {@link WGLARBPixelFormat WGL_ARB_pixel_format}.</p>
 */
extern class WGLARBPbuffer 
{
/**
 * Accepted by the {@code attribIList} parameter of {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB} and the {@code attributes} parameter of
 * {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}.
 */
	inline static public var WGL_DRAW_TO_PBUFFER_ARB:Int = 8237;
/** Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}.  */
	inline static public var WGL_MAX_PBUFFER_PIXELS_ARB:Int = 8238;
/** Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}.  */
	inline static public var WGL_MAX_PBUFFER_WIDTH_ARB:Int = 8239;
/** Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}.  */
	inline static public var WGL_MAX_PBUFFER_HEIGHT_ARB:Int = 8240;
/** Accepted by the {@code attribList} parameter of {@link #wglCreatePbufferARB CreatePbufferARB}.  */
	inline static public var WGL_PBUFFER_LARGEST_ARB:Int = 8243;
/** Accepted by the {@code attribute} parameter of {@link #wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_PBUFFER_WIDTH_ARB:Int = 8244;
/** Accepted by the {@code attribute} parameter of {@link #wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_PBUFFER_HEIGHT_ARB:Int = 8245;
/** Accepted by the {@code attribute} parameter of {@link #wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_PBUFFER_LOST_ARB:Int = 8246;
/** Function address.  */
	public var CreatePbufferARB:haxe.Int64;
/** Function address.  */
	public var GetPbufferDCARB:haxe.Int64;
/** Function address.  */
	public var ReleasePbufferDCARB:haxe.Int64;
/** Function address.  */
	public var DestroyPbufferARB:haxe.Int64;
/** Function address.  */
	public var QueryPbufferARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #wglGetPbufferDCARB GetPbufferDCARB}  */
	static public function nwglGetPbufferDCARB(pbuffer:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
/** JNI method for {@link #wglDestroyPbufferARB DestroyPbufferARB}  */
	static public function nwglDestroyPbufferARB(pbuffer:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #wglCreatePbufferARB CreatePbufferARB}  */
/** JNI method for {@link #wglCreatePbufferARB CreatePbufferARB}  */
	static public function nwglCreatePbufferARB(hdc:haxe.Int64,pixelFormat:Int,width:Int,height:Int,attribList:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (hdc:haxe.Int64,pixelFormat:Int,width:Int,height:Int,attribList:haxe.Int64):haxe.Int64 {})
/**
 * Queries an attribute associated with a specific pbuffer.
 *
 * @param pbuffer   a pbuffer handle
 * @param attribute the attribute to query. One of:<br>{@link #WGL_PBUFFER_WIDTH_ARB PBUFFER_WIDTH_ARB}, {@link #WGL_PBUFFER_HEIGHT_ARB PBUFFER_HEIGHT_ARB}, {@link #WGL_PBUFFER_LOST_ARB PBUFFER_LOST_ARB}
 * @param value     the attribute value
 */
/** Alternative version of: {@link #wglQueryPbufferARB QueryPbufferARB}  */
	static public function wglQueryPbufferARB(pbuffer:haxe.Int64,attribute:Int,value:java.nio.IntBuffer):Int;
	@:overload(function (pbuffer:haxe.Int64,attribute:Int,value:java.nio.ByteBuffer):Int {})
/**
 * Creates a pixel buffer (pbuffer) and returns a handle to it.
 * 
 * <p>Support for pbuffers may be restricted to specific pixel formats. Use {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB} to query the {@link #WGL_DRAW_TO_PBUFFER_ARB DRAW_TO_PBUFFER_ARB}
 * attribute to determine which pixel formats support the creation of pbuffers.</p>
 *
 * @param hdc         a device context for the device on which the pbuffer is created
 * @param pixelFormat a non-generic pixel format descriptor index
 * @param width       the pixel width of the rectangular pbuffer
 * @param height      the pixel height of the rectangular pbuffer
 * @param attribList  a 0-terminated list of attributes {type, value} pairs containing integer attribute values
 */
/** Alternative version of: {@link #wglCreatePbufferARB CreatePbufferARB}  */
	static public function wglCreatePbufferARB(hdc:haxe.Int64,pixelFormat:Int,width:Int,height:Int,attribList:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (hdc:haxe.Int64,pixelFormat:Int,width:Int,height:Int,attribList:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Creates a device context for the pbuffer.
 *
 * @param pbuffer a pbuffer handle returned from a previous call to {@link #wglCreatePbufferARB CreatePbufferARB}
 */
	static public function wglGetPbufferDCARB(pbuffer:haxe.Int64):haxe.Int64;
/** JNI method for {@link #wglReleasePbufferDCARB ReleasePbufferDCARB}  */
	static public function nwglReleasePbufferDCARB(pbuffer:haxe.Int64,hdc:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** Returns the {@link WGLARBPbuffer} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLARBPbuffer;
/**
 * Destroys a pbuffer.
 * 
 * <p>The pbuffer is destroyed once it is no longer current to any rendering context.  When a pbuffer is destroyed, any memory resources that are attached to
 * it are freed and its handle is no longer valid.</p>
 *
 * @param pbuffer a pbuffer handle
 */
	static public function wglDestroyPbufferARB(pbuffer:haxe.Int64):Int;
/**
 * Releases a device context obtained from a previous call to {@link #wglGetPbufferDCARB GetPbufferDCARB}.
 *
 * @param pbuffer a pbuffer handle
 * @param hdc     a device context handle
 */
	static public function wglReleasePbufferDCARB(pbuffer:haxe.Int64,hdc:haxe.Int64):Int;
/** Unsafe version of {@link #wglQueryPbufferARB QueryPbufferARB}  */
/** JNI method for {@link #wglQueryPbufferARB QueryPbufferARB}  */
	static public function nwglQueryPbufferARB(pbuffer:haxe.Int64,attribute:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (pbuffer:haxe.Int64,attribute:Int,value:haxe.Int64):Int {})

}
