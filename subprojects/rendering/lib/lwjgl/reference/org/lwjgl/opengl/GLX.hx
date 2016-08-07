package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLX")
@:final
/** Native bindings to GLX.  */
extern class GLX 
{
/** Errors.  */
	inline static public var GLXBadContext:Int = 0;
/** Errors.  */
	inline static public var GLXBadContextState:Int = 1;
/** Errors.  */
	inline static public var GLXBadDrawable:Int = 2;
/** Errors.  */
	inline static public var GLXBadPixmap:Int = 3;
/** Errors.  */
	inline static public var GLXBadContextTag:Int = 4;
/** Errors.  */
	inline static public var GLXBadCurrentWindow:Int = 5;
/** Errors.  */
	inline static public var GLXBadRenderRequest:Int = 6;
/** Errors.  */
	inline static public var GLXBadLargeRequest:Int = 7;
/** Errors.  */
	inline static public var GLXUnsupportedPrivateRequest:Int = 8;
/** Errors.  */
	inline static public var GLXBadFBConfig:Int = 9;
/** Errors.  */
	inline static public var GLXBadPbuffer:Int = 10;
/** Errors.  */
	inline static public var GLXBadCurrentDrawable:Int = 11;
/** Errors.  */
	inline static public var GLXBadWindow:Int = 12;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_USE_GL:Int = 1;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_BUFFER_SIZE:Int = 2;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_LEVEL:Int = 3;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_RGBA:Int = 4;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_DOUBLEBUFFER:Int = 5;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_STEREO:Int = 6;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_AUX_BUFFERS:Int = 7;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_RED_SIZE:Int = 8;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_GREEN_SIZE:Int = 9;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_BLUE_SIZE:Int = 10;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_ALPHA_SIZE:Int = 11;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_DEPTH_SIZE:Int = 12;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_STENCIL_SIZE:Int = 13;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_ACCUM_RED_SIZE:Int = 14;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_ACCUM_GREEN_SIZE:Int = 15;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_ACCUM_BLUE_SIZE:Int = 16;
/** Names for attributes to {@link #glXGetConfig GetConfig}.  */
	inline static public var GLX_ACCUM_ALPHA_SIZE:Int = 17;
/** Error return values from {@link #glXGetConfig GetConfig}. Success is indicated by a value of 0.  */
	inline static public var GLX_BAD_SCREEN:Int = 1;
/** Error return values from {@link #glXGetConfig GetConfig}. Success is indicated by a value of 0.  */
	inline static public var GLX_BAD_ATTRIBUTE:Int = 2;
/** Error return values from {@link #glXGetConfig GetConfig}. Success is indicated by a value of 0.  */
	inline static public var GLX_NO_EXTENSION:Int = 3;
/** Error return values from {@link #glXGetConfig GetConfig}. Success is indicated by a value of 0.  */
	inline static public var GLX_BAD_VISUAL:Int = 4;
/** Error return values from {@link #glXGetConfig GetConfig}. Success is indicated by a value of 0.  */
	inline static public var GLX_BAD_CONTEXT:Int = 5;
/** Error return values from {@link #glXGetConfig GetConfig}. Success is indicated by a value of 0.  */
	inline static public var GLX_BAD_VALUE:Int = 6;
/** Error return values from {@link #glXGetConfig GetConfig}. Success is indicated by a value of 0.  */
	inline static public var GLX_BAD_ENUM:Int = 7;
/** JNI method for {@link #glXQueryExtension QueryExtension}  */
	static public function nglXQueryExtension(display:haxe.Int64,error_base:haxe.Int64,event_base:haxe.Int64):Int;
/** JNI method for {@link #glXMakeCurrent MakeCurrent}  */
	static public function nglXMakeCurrent(display:haxe.Int64,draw:haxe.Int64,ctx:haxe.Int64):Int;
/**
 * Determines if an OpenGL rendering context is direct.
 *
 * @param display the connection to the X server
 * @param ctx     the GLXContext to query
 */
	static public function glXIsDirect(display:haxe.Int64,ctx:haxe.Int64):Int;
/** JNI method for {@link #glXCopyContext CopyContext}  */
	static public function nglXCopyContext(display:haxe.Int64,source:haxe.Int64,dest:haxe.Int64,mask:haxe.Int64):Void;
/**
 * Creates a GLXPixmap from a Pixmap.
 *
 * @param display the connection to the X server
 * @param visual  a pointer to a {@link XVisualInfo} structure
 * @param pixmap  the Pixmap
 */
	static public function glXCreateGLXPixmap(display:haxe.Int64,visual:java.nio.ByteBuffer,pixmap:haxe.Int64):haxe.Int64;
/** JNI method for {@link #glXChooseVisual ChooseVisual}  */
	static public function nglXChooseVisual(display:haxe.Int64,screen:Int,attrib_list:haxe.Int64):haxe.Int64;
/**
 * Destroys a GLXPixmap.
 *
 * @param display the connection to the X server
 * @param pixmap  the GLXPixmap to destroy.
 */
	static public function glXDestroyGLXPixmap(display:haxe.Int64,pixmap:haxe.Int64):Void;
/**
 * Queries the GLX version supported.
 *
 * @param display the connection to the X server
 * @param major   returns the major version
 * @param minor   returns the minor version
 */
/** Alternative version of: {@link #glXQueryVersion QueryVersion}  */
	static public function glXQueryVersion(display:haxe.Int64,major:java.nio.IntBuffer,minor:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,major:java.nio.ByteBuffer,minor:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #glXCreateGLXPixmap CreateGLXPixmap}  */
	static public function nglXCreateGLXPixmap(display:haxe.Int64,visual:haxe.Int64,pixmap:haxe.Int64):haxe.Int64;
/**
 * For drawables that are double buffered, makes the contexts of the back buffer potentially visible (i.e., become the contents of the front buffer).
 * 
 * <p>The contents of the back buffer then become undefined. This operation is a no-op if draw was created with a non-double-buffered GLXFBConfig, or if draw
 * is a GLXPixmap.</p>
 *
 * @param display the connection to the X server
 * @param draw    a double buffered GLXDrawable
 */
	static public function glXSwapBuffers(display:haxe.Int64,draw:haxe.Int64):Void;
/** JNI method for {@link #glXDestroyGLXPixmap DestroyGLXPixmap}  */
	static public function nglXDestroyGLXPixmap(display:haxe.Int64,pixmap:haxe.Int64):Void;
/** JNI method for {@link #glXCreateContext CreateContext}  */
	static public function nglXCreateContext(display:haxe.Int64,visual:haxe.Int64,share_list:haxe.Int64,direct:Int):haxe.Int64;
/** Alternative version of: {@link #glXGetConfig GetConfig}  */
/**
 * Returns a description of an OpenGL attribute exported by a Visual.
 *
 * @param display   the connection to the X server
 * @param visual    a pointer to an {@link XVisualInfo} structure
 * @param attribute the attribute to query
 * @param value     returns the attribute value
 */
	static public function glXGetConfig(display:haxe.Int64,visual:java.nio.ByteBuffer,attribute:Int,value:java.nio.ByteBuffer):Int;
	@:overload(function (display:haxe.Int64,visual:java.nio.ByteBuffer,attribute:Int,value:java.nio.IntBuffer):Int {})
/** JNI method for {@link #glXGetConfig GetConfig}  */
	static public function nglXGetConfig(display:haxe.Int64,visual:haxe.Int64,attribute:Int,value:haxe.Int64):Int;
/**
 * Provides a shortcut for using X fonts.
 *
 * @param font      the font to use
 * @param first     the first glyph in the font to use
 * @param count     the number of display lists to define
 * @param list_base the base list number
 */
	static public function glXUseXFont(font:haxe.Int64,first:Int,count:Int,list_base:Int):Void;
/** JNI method for {@link #glXSwapBuffers SwapBuffers}  */
	static public function nglXSwapBuffers(display:haxe.Int64,draw:haxe.Int64):Void;
/**
 * Makes a context current in the current thread
 *
 * @param display the connection to the X server
 * @param draw    the draw GLXdrawable
 * @param ctx     the GLXContext to make current
 */
	static public function glXMakeCurrent(display:haxe.Int64,draw:haxe.Int64,ctx:haxe.Int64):Int;
/**
 * Destroys an OpenGL context.
 * 
 * <p>If {@code ctx} is still current to any thread, {@code ctx} is not destroyed until it is no longer current. In any event, the associated XID will be
 * destroyed and {@code ctx} cannot subsequently be made current to any thread.</p>
 *
 * @param display the connection to the X server
 * @param ctx     the GLXContext to destroy
 */
	static public function glXDestroyContext(display:haxe.Int64,ctx:haxe.Int64):Void;
/** JNI method for {@link #glXDestroyContext DestroyContext}  */
	static public function nglXDestroyContext(display:haxe.Int64,ctx:haxe.Int64):Void;
/** Returns the XID of the current drawable used for rendering.  */
	static public function glXGetCurrentDrawable():haxe.Int64;
/**
 * Finds a visual that matches the client’s specified attributes.
 *
 * @param display     the connection to the X server
 * @param screen      the screen number
 * @param attrib_list a list of attributes terminated with {@link X#None}
 *
 * @return a pointer to an {@code XVisualInfo} structure describing the visual that best matches the specified attributes. If no matching visual exists, {@code NULL} is
 *         returned.
 */
/** Alternative version of: {@link #glXChooseVisual ChooseVisual}  */
	static public function glXChooseVisual(display:haxe.Int64,screen:Int,attrib_list:java.nio.IntBuffer):java.nio.ByteBuffer;
	@:overload(function (display:haxe.Int64,screen:Int,attrib_list:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/**
 * Prevents X requests from executing until any outstanding OpenGL rendering is done.
 * 
 * <p>OpenGL calls made prior to {@code glXWaitGL} are guaranteed to be executed before X rendering calls made after {@code glXWaitGL}. While the same result
 * can be achieved using {@link GL11#glFinish}, {@code glXWaitGL} does not require a round trip to the server, and is therefore more efficient in cases
 * where the client and server are on separate machines.</p>
 */
	static public function glXWaitGL():Void;
/** Returns the GLXContext that is current in the current thread.  */
	static public function glXGetCurrentContext():haxe.Int64;
/**
 * Prevents the OpenGL command sequence from executing until any outstanding X requests are completed.
 * 
 * <p>X rendering calls made prior to {@code glXWaitX} are guaranteed to be executed before OpenGL rendering calls made after {@code glXWaitX}. While the same
 * result can be achieved using {@link Xlib#XSync}, {@code glXWaitX} does not require a round trip to the server, and may therefore be more efficient.</p>
 */
	static public function glXWaitX():Void;
/** JNI method for {@link #glXQueryVersion QueryVersion}  */
	static public function nglXQueryVersion(display:haxe.Int64,major:haxe.Int64,minor:haxe.Int64):Int;
/**
 * Copies OpenGL rendering state from one context to another.
 *
 * @param display the connection to the X server
 * @param source  the source GLXContext
 * @param dest    the destination GLXContext
 * @param mask    indicates which groups of state variables are to be copied; it contains the bitwise OR of the symbolic names for the attribute groups
 */
	static public function glXCopyContext(display:haxe.Int64,source:haxe.Int64,dest:haxe.Int64,mask:haxe.Int64):Void;
/**
 * Ascertains if the GLX extension is defined for an X server.
 *
 * @param display    the connection to the X server
 * @param error_base returns the value of the first error code
 * @param event_base returns the value of the first event code
 */
/** Alternative version of: {@link #glXQueryExtension QueryExtension}  */
	static public function glXQueryExtension(display:haxe.Int64,error_base:java.nio.IntBuffer,event_base:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,error_base:java.nio.ByteBuffer,event_base:java.nio.ByteBuffer):Int {})
/**
 * Creates an OpenGL context.
 *
 * @param display    the connection to the X server
 * @param visual     a pointer to an {@link XVisualInfo} structure
 * @param share_list the GLXContext to share objects with
 * @param direct     whether direct rendering is requested
 */
	static public function glXCreateContext(display:haxe.Int64,visual:java.nio.ByteBuffer,share_list:haxe.Int64,direct:Int):haxe.Int64;
/** JNI method for {@link #glXIsDirect IsDirect}  */
	static public function nglXIsDirect(display:haxe.Int64,ctx:haxe.Int64):Int;

}
