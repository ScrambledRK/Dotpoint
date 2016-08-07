package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXSGIXFBConfig")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/SGIX/fbconfig.txt">GLX_SGIX_fbconfig</a> extension.
 * 
 * <p>This extension introduces a new way to describe the capabilities of a GLX drawable (i.e., to describe the depth of color buffer components and the type
 * and size of ancillary buffers), removes the "similarity" requirement when making a context current to a drawable, and supports  RGBA rendering to
 * one-and two-component Windows and GLX Pixmaps.</p>
 */
extern class GLXSGIXFBConfig 
{
/** Accepted by the {@code attribute} parameter of {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}, and by the {@code attrib_list} parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX}.  */
	inline static public var GLX_DRAWABLE_TYPE_SGIX:Int = 32784;
/** Accepted by the {@code attribute} parameter of {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}, and by the {@code attrib_list} parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX}.  */
	inline static public var GLX_RENDER_TYPE_SGIX:Int = 32785;
/** Accepted by the {@code attribute} parameter of {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}, and by the {@code attrib_list} parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX}.  */
	inline static public var GLX_X_RENDERABLE_SGIX:Int = 32786;
/**
 * Accepted by the {@code attribute} parameter of {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}, the {@code attrib_list} parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX},
 * by the {@code attribute} parameter of {@link GLXSGIXPbuffer#glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX} and by the {@code attribute} parameter of
 * {@link GLXEXTImportContext#glXQueryContextInfoEXT QueryContextInfoEXT}.
 */
	inline static public var GLX_FBCONFIG_ID_SGIX:Int = 32787;
/** Accepted by the {@code attribute} parameter of {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}.  */
	inline static public var GLX_SCREEN_EXT:Int = 32780;
/**
 * Returned by {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX} (when {@code attribute} is set to {@link #GLX_DRAWABLE_TYPE_SGIX DRAWABLE_TYPE_SGIX}) and accepted by the {@code attrib_list}
 * parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX} (following the {@link #GLX_DRAWABLE_TYPE_SGIX DRAWABLE_TYPE_SGIX} token).
 */
	inline static public var GLX_WINDOW_BIT_SGIX:Int = 1;
/**
 * Returned by {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX} (when {@code attribute} is set to {@link #GLX_DRAWABLE_TYPE_SGIX DRAWABLE_TYPE_SGIX}) and accepted by the {@code attrib_list}
 * parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX} (following the {@link #GLX_DRAWABLE_TYPE_SGIX DRAWABLE_TYPE_SGIX} token).
 */
	inline static public var GLX_PIXMAP_BIT_SGIX:Int = 2;
/**
 * Returned by {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX} (when {@code attribute} is set to {@link #GLX_RENDER_TYPE_SGIX RENDER_TYPE_SGIX}) and accepted by the {@code attrib_list}
 * parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX} (following the {@link #GLX_RENDER_TYPE_SGIX RENDER_TYPE_SGIX} token).
 */
	inline static public var GLX_RGBA_BIT_SGIX:Int = 1;
/**
 * Returned by {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX} (when {@code attribute} is set to {@link #GLX_RENDER_TYPE_SGIX RENDER_TYPE_SGIX}) and accepted by the {@code attrib_list}
 * parameter of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX} (following the {@link #GLX_RENDER_TYPE_SGIX RENDER_TYPE_SGIX} token).
 */
	inline static public var GLX_COLOR_INDEX_BIT_SGIX:Int = 2;
/** Accepted by the {@code render_type} parameter of {@link #glXCreateContextWithConfigSGIX CreateContextWithConfigSGIX}.  */
	inline static public var GLX_RGBA_TYPE_SGIX:Int = 32788;
/** Accepted by the {@code render_type} parameter of {@link #glXCreateContextWithConfigSGIX CreateContextWithConfigSGIX}.  */
	inline static public var GLX_COLOR_INDEX_TYPE_SGIX:Int = 32789;
/** Function address.  */
	public var GetFBConfigAttribSGIX:haxe.Int64;
/** Function address.  */
	public var ChooseFBConfigSGIX:haxe.Int64;
/** Function address.  */
	public var CreateGLXPixmapWithConfigSGIX:haxe.Int64;
/** Function address.  */
	public var CreateContextWithConfigSGIX:haxe.Int64;
/** Function address.  */
	public var GetVisualFromFBConfigSGIX:haxe.Int64;
/** Function address.  */
	public var GetFBConfigFromVisualSGIX:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Gets the value of a GLX attribute for a {@code GLXFBConfigSGIX}.
 *
 * @param display   the connection to the X server
 * @param config    the {@code GLXFBConfigSGIX} being queried
 * @param attribute the attribute to query
 * @param value     returns the attribute value
 */
/** Alternative version of: {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}  */
	static public function glXGetFBConfigAttribSGIX(display:haxe.Int64,config:haxe.Int64,attribute:Int,value:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,attribute:Int,value:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #glXCreateGLXPixmapWithConfigSGIX CreateGLXPixmapWithConfigSGIX}  */
	static public function nglXCreateGLXPixmapWithConfigSGIX(display:haxe.Int64,config:haxe.Int64,pixmap:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Creates a GLX pixmap using a {@code GLXFBConfigSGIX}.
 *
 * @param display the connection to the X server
 * @param config  the {@code GLXFBConfigSGIX}
 * @param pixmap  the pixmap
 */
	static public function glXCreateGLXPixmapWithConfigSGIX(display:haxe.Int64,config:haxe.Int64,pixmap:haxe.Int64):haxe.Int64;
/**
 * Creates a GLX context using a {@code GLXFBConfigSGIX}.
 *
 * @param display     the connection to the X server
 * @param config      the {@code GLXFBConfigSGIX}
 * @param render_type the render type. One of:<br>{@link #GLX_RGBA_TYPE_SGIX RGBA_TYPE_SGIX}, {@link #GLX_COLOR_INDEX_TYPE_SGIX COLOR_INDEX_TYPE_SGIX}
 * @param share_list  the GLX context to share objects with
 * @param direct      direct rendering request
 */
	static public function glXCreateContextWithConfigSGIX(display:haxe.Int64,config:haxe.Int64,render_type:Int,share_list:haxe.Int64,direct:Int):haxe.Int64;
/** Unsafe version of {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}  */
/** JNI method for {@link #glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}  */
	static public function nglXGetFBConfigAttribSGIX(display:haxe.Int64,config:haxe.Int64,attribute:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,attribute:Int,value:haxe.Int64):Int {})
/** Unsafe version of {@link #glXGetVisualFromFBConfigSGIX GetVisualFromFBConfigSGIX}  */
/** JNI method for {@link #glXGetVisualFromFBConfigSGIX GetVisualFromFBConfigSGIX}  */
	static public function nglXGetVisualFromFBConfigSGIX(display:haxe.Int64,config:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #glXCreateContextWithConfigSGIX CreateContextWithConfigSGIX}  */
	static public function nglXCreateContextWithConfigSGIX(display:haxe.Int64,config:haxe.Int64,render_type:Int,share_list:haxe.Int64,direct:Int,__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Retrieves the associated visual of a {@code GLXFBConfigSGIX}.
 *
 * @param display the connection to the X server
 * @param config  the {@code GLXFBConfigSGIX}
 */
	static public function glXGetVisualFromFBConfigSGIX(display:haxe.Int64,config:haxe.Int64):java.nio.ByteBuffer;
/** Unsafe version of {@link #glXGetFBConfigFromVisualSGIX GetFBConfigFromVisualSGIX}  */
/** JNI method for {@link #glXGetFBConfigFromVisualSGIX GetFBConfigFromVisualSGIX}  */
	static public function nglXGetFBConfigFromVisualSGIX(display:haxe.Int64,vis:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,vis:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX}  */
/** JNI method for {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX}  */
	static public function nglXChooseFBConfigSGIX(display:haxe.Int64,screen:Int,attrib_list:haxe.Int64,nelements:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,screen:Int,attrib_list:haxe.Int64,nelements:haxe.Int64):haxe.Int64 {})
/**
 * Gets {@code GLXFBConfigSGIX}s that match a list of attributes or to get the list of GLXFBConfigSGIXs that are available on the specified screen.
 *
 * @param display     the connection to the X server
 * @param screen      the screen number
 * @param attrib_list an optional list of attributes, terminated with {@link org.lwjgl.system.linux.X#None}
 */
/** Alternative version of: {@link #glXChooseFBConfigSGIX ChooseFBConfigSGIX}  */
	static public function glXChooseFBConfigSGIX(display:haxe.Int64,screen:Int,attrib_list:java.nio.IntBuffer):org.lwjgl.PointerBuffer;
	@:overload(function (display:haxe.Int64,screen:Int,attrib_list:java.nio.ByteBuffer):org.lwjgl.PointerBuffer {})
/**
 * Retrieves the {@code GLXFBConfigSGIX} associated with a visual.
 *
 * @param display the connection to the X server
 * @param vis     the visual
 */
	static public function glXGetFBConfigFromVisualSGIX(display:haxe.Int64,vis:java.nio.ByteBuffer):haxe.Int64;
/** Returns the {@link GLXSGIXFBConfig} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXSGIXFBConfig;

}
