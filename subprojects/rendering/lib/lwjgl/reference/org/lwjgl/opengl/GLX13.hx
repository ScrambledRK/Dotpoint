package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLX13")
@:final
/** Native bindings to GLX 1.3.  */
extern class GLX13 
{
/** Added in GLX 1.3.  */
	inline static public var GLX_WINDOW_BIT:Int = 1;
/** Added in GLX 1.3.  */
	inline static public var GLX_PIXMAP_BIT:Int = 2;
/** Added in GLX 1.3.  */
	inline static public var GLX_PBUFFER_BIT:Int = 4;
/** Added in GLX 1.3.  */
	inline static public var GLX_RGBA_BIT:Int = 1;
/** Added in GLX 1.3.  */
	inline static public var GLX_COLOR_INDEX_BIT:Int = 2;
/** Added in GLX 1.3.  */
	inline static public var GLX_PBUFFER_CLOBBER_MASK:Int = 134217728;
/** Added in GLX 1.3.  */
	inline static public var GLX_FRONT_LEFT_BUFFER_BIT:Int = 1;
/** Added in GLX 1.3.  */
	inline static public var GLX_FRONT_RIGHT_BUFFER_BIT:Int = 2;
/** Added in GLX 1.3.  */
	inline static public var GLX_BACK_LEFT_BUFFER_BIT:Int = 4;
/** Added in GLX 1.3.  */
	inline static public var GLX_BACK_RIGHT_BUFFER_BIT:Int = 8;
/** Added in GLX 1.3.  */
	inline static public var GLX_AUX_BUFFERS_BIT:Int = 16;
/** Added in GLX 1.3.  */
	inline static public var GLX_DEPTH_BUFFER_BIT:Int = 32;
/** Added in GLX 1.3.  */
	inline static public var GLX_STENCIL_BUFFER_BIT:Int = 64;
/** Added in GLX 1.3.  */
	inline static public var GLX_ACCUM_BUFFER_BIT:Int = 128;
/** Added in GLX 1.3.  */
	inline static public var GLX_CONFIG_CAVEAT:Int = 32;
/** Added in GLX 1.3.  */
	inline static public var GLX_X_VISUAL_TYPE:Int = 34;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_TYPE:Int = 35;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_INDEX_VALUE:Int = 36;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_RED_VALUE:Int = 37;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_GREEN_VALUE:Int = 38;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_BLUE_VALUE:Int = 39;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_ALPHA_VALUE:Int = 40;
/** Added in GLX 1.3.  */
	inline static public var GLX_DONT_CARE:Int = -1;
/** Added in GLX 1.3.  */
	inline static public var GLX_NONE:Int = 32768;
/** Added in GLX 1.3.  */
	inline static public var GLX_SLOW_CONFIG:Int = 32769;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRUE_COLOR:Int = 32770;
/** Added in GLX 1.3.  */
	inline static public var GLX_DIRECT_COLOR:Int = 32771;
/** Added in GLX 1.3.  */
	inline static public var GLX_PSEUDO_COLOR:Int = 32772;
/** Added in GLX 1.3.  */
	inline static public var GLX_STATIC_COLOR:Int = 32773;
/** Added in GLX 1.3.  */
	inline static public var GLX_GRAY_SCALE:Int = 32774;
/** Added in GLX 1.3.  */
	inline static public var GLX_STATIC_GRAY:Int = 32775;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_RGB:Int = 32776;
/** Added in GLX 1.3.  */
	inline static public var GLX_TRANSPARENT_INDEX:Int = 32777;
/** Added in GLX 1.3.  */
	inline static public var GLX_VISUAL_ID:Int = 32779;
/** Added in GLX 1.3.  */
	inline static public var GLX_SCREEN:Int = 32780;
/** Added in GLX 1.3.  */
	inline static public var GLX_NON_CONFORMANT_CONFIG:Int = 32781;
/** Added in GLX 1.3.  */
	inline static public var GLX_DRAWABLE_TYPE:Int = 32784;
/** Added in GLX 1.3.  */
	inline static public var GLX_RENDER_TYPE:Int = 32785;
/** Added in GLX 1.3.  */
	inline static public var GLX_X_RENDERABLE:Int = 32786;
/** Added in GLX 1.3.  */
	inline static public var GLX_FBCONFIG_ID:Int = 32787;
/** Added in GLX 1.3.  */
	inline static public var GLX_RGBA_TYPE:Int = 32788;
/** Added in GLX 1.3.  */
	inline static public var GLX_COLOR_INDEX_TYPE:Int = 32789;
/** Added in GLX 1.3.  */
	inline static public var GLX_MAX_PBUFFER_WIDTH:Int = 32790;
/** Added in GLX 1.3.  */
	inline static public var GLX_MAX_PBUFFER_HEIGHT:Int = 32791;
/** Added in GLX 1.3.  */
	inline static public var GLX_MAX_PBUFFER_PIXELS:Int = 32792;
/** Added in GLX 1.3.  */
	inline static public var GLX_PRESERVED_CONTENTS:Int = 32795;
/** Added in GLX 1.3.  */
	inline static public var GLX_LARGEST_PBUFFER:Int = 32796;
/** Added in GLX 1.3.  */
	inline static public var GLX_WIDTH:Int = 32797;
/** Added in GLX 1.3.  */
	inline static public var GLX_HEIGHT:Int = 32798;
/** Added in GLX 1.3.  */
	inline static public var GLX_EVENT_MASK:Int = 32799;
/** Added in GLX 1.3.  */
	inline static public var GLX_DAMAGED:Int = 32800;
/** Added in GLX 1.3.  */
	inline static public var GLX_SAVED:Int = 32801;
/** Added in GLX 1.3.  */
	inline static public var GLX_WINDOW:Int = 32802;
/** Added in GLX 1.3.  */
	inline static public var GLX_PBUFFER:Int = 32803;
/** Added in GLX 1.3.  */
	inline static public var GLX_PBUFFER_HEIGHT:Int = 32832;
/** Added in GLX 1.3.  */
	inline static public var GLX_PBUFFER_WIDTH:Int = 32833;
/** Function address.  */
	public var GetFBConfigs:haxe.Int64;
/** Function address.  */
	public var ChooseFBConfig:haxe.Int64;
/** Function address.  */
	public var GetFBConfigAttrib:haxe.Int64;
/** Function address.  */
	public var GetVisualFromFBConfig:haxe.Int64;
/** Function address.  */
	public var CreateWindow:haxe.Int64;
/** Function address.  */
	public var CreatePixmap:haxe.Int64;
/** Function address.  */
	public var DestroyPixmap:haxe.Int64;
/** Function address.  */
	public var CreatePbuffer:haxe.Int64;
/** Function address.  */
	public var DestroyPbuffer:haxe.Int64;
/** Function address.  */
	public var QueryDrawable:haxe.Int64;
/** Function address.  */
	public var CreateNewContext:haxe.Int64;
/** Function address.  */
	public var MakeContextCurrent:haxe.Int64;
/** Function address.  */
	public var GetCurrentReadDrawable:haxe.Int64;
/** Function address.  */
	public var QueryContext:haxe.Int64;
/** Function address.  */
	public var SelectEvent:haxe.Int64;
/** Function address.  */
	public var GetSelectedEvent:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glXGetFBConfigs GetFBConfigs}  */
/** JNI method for {@link #glXGetFBConfigs GetFBConfigs}  */
	static public function nglXGetFBConfigs(display:haxe.Int64,screen:Int,nelements:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,screen:Int,nelements:haxe.Int64):haxe.Int64 {})
/** Unsafe version of {@link #glXGetSelectedEvent GetSelectedEvent}  */
/** JNI method for {@link #glXGetSelectedEvent GetSelectedEvent}  */
	static public function nglXGetSelectedEvent(display:haxe.Int64,draw:haxe.Int64,event_mask:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (display:haxe.Int64,draw:haxe.Int64,event_mask:haxe.Int64):Void {})
/**
 * Creates an OpenGL rendering context.
 *
 * @param display     the connection to the X server
 * @param config      the GLXFBConfig
 * @param render_type the render type
 * @param share_list  a GLXContext to share objects with
 * @param direct      whether direct rendering is requested
 */
	static public function glXCreateNewContext(display:haxe.Int64,config:haxe.Int64,render_type:Int,share_list:haxe.Int64,direct:Int):haxe.Int64;
/** JNI method for {@link #glXDestroyPixmap DestroyPixmap}  */
	static public function nglXDestroyPixmap(display:haxe.Int64,pixmap:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * Retrieves the associated visual of a GLXFBConfig.
 *
 * @param display the connection to the X server
 * @param config  the GLXFBConfig
 */
	static public function glXGetVisualFromFBConfig(display:haxe.Int64,config:haxe.Int64):java.nio.ByteBuffer;
/**
 * Selects which GLX events should be received on a GLXDrawable.
 *
 * @param display    the connection to the X server
 * @param draw       the GLXDrawable
 * @param event_mask the selection mask
 */
	static public function glXSelectEvent(display:haxe.Int64,draw:haxe.Int64,event_mask:haxe.Int64):Void;
/** Unsafe version of {@link #glXCreateWindow CreateWindow}  */
/** JNI method for {@link #glXCreateWindow CreateWindow}  */
	static public function nglXCreateWindow(display:haxe.Int64,config:haxe.Int64,win:haxe.Int64,attrib_list:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,win:haxe.Int64,attrib_list:haxe.Int64):haxe.Int64 {})
/**
 * Create an onscreen rendering area from an X Window and a desired GLXFBConfig.
 *
 * @param display     the connection to the X server
 * @param config      the GLXFBConfig
 * @param win         the X Window
 * @param attrib_list a list of attributes terminated with {@link X#None}
 */
/** Alternative version of: {@link #glXCreateWindow CreateWindow}  */
	static public function glXCreateWindow(display:haxe.Int64,config:haxe.Int64,win:haxe.Int64,attrib_list:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,win:haxe.Int64,attrib_list:java.nio.ByteBuffer):haxe.Int64 {})
/** JNI method for {@link #glXGetCurrentReadDrawable GetCurrentReadDrawable}  */
	static public function nglXGetCurrentReadDrawable(__functionAddress:haxe.Int64):haxe.Int64;
/** Unsafe version of {@link #glXQueryContext QueryContext}  */
/** JNI method for {@link #glXQueryContext QueryContext}  */
	static public function nglXQueryContext(display:haxe.Int64,ctx:haxe.Int64,attribute:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (display:haxe.Int64,ctx:haxe.Int64,attribute:Int,value:haxe.Int64):Int {})
/** Unsafe version of {@link #glXCreatePixmap CreatePixmap}  */
/** JNI method for {@link #glXCreatePixmap CreatePixmap}  */
	static public function nglXCreatePixmap(display:haxe.Int64,config:haxe.Int64,pixmap:haxe.Int64,attrib_list:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,pixmap:haxe.Int64,attrib_list:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #glXCreateNewContext CreateNewContext}  */
	static public function nglXCreateNewContext(display:haxe.Int64,config:haxe.Int64,render_type:Int,share_list:haxe.Int64,direct:Int,__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Queries the value of a GLXContext attribute.
 *
 * @param display   the connection to the X server
 * @param ctx       the GLXContext being queried
 * @param attribute the attribute to query
 * @param value     returns the attribute value
 */
/** Alternative version of: {@link #glXQueryContext QueryContext}  */
	static public function glXQueryContext(display:haxe.Int64,ctx:haxe.Int64,attribute:Int,value:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,ctx:haxe.Int64,attribute:Int,value:java.nio.ByteBuffer):Int {})
/**
 * Creates a GLXPbuffer from a GLXFBConfig.
 *
 * @param display     the connection to the X server
 * @param config      the GLXFBConfig
 * @param attrib_list a list of attributes terminated with {@link X#None}
 */
/** Alternative version of: {@link #glXCreatePbuffer CreatePbuffer}  */
	static public function glXCreatePbuffer(display:haxe.Int64,config:haxe.Int64,attrib_list:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,attrib_list:java.nio.ByteBuffer):haxe.Int64 {})
/** Unsafe version of {@link #glXQueryDrawable QueryDrawable}  */
/** JNI method for {@link #glXQueryDrawable QueryDrawable}  */
	static public function nglXQueryDrawable(display:haxe.Int64,draw:haxe.Int64,attribute:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (display:haxe.Int64,draw:haxe.Int64,attribute:Int,value:haxe.Int64):Void {})
/** Returns the current GLXDrawable used for reading in the current thread.  */
	static public function glXGetCurrentReadDrawable():haxe.Int64;
/** Unsafe version of {@link #glXGetFBConfigAttrib GetFBConfigAttrib}  */
/** JNI method for {@link #glXGetFBConfigAttrib GetFBConfigAttrib}  */
	static public function nglXGetFBConfigAttrib(display:haxe.Int64,config:haxe.Int64,attribute:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,attribute:Int,value:haxe.Int64):Int {})
/**
 * Returns the list of all GLXFBConfigs that are available on the specified screen.
 *
 * @param display the connection to the X server
 * @param screen  the screen number
 */
	static public function glXGetFBConfigs(display:haxe.Int64,screen:Int):org.lwjgl.PointerBuffer;
/**
 * Queries the value of a GLX attribute for a GLXFBConfig.
 *
 * @param display   the connection to the X server
 * @param config    the GLXFBConfig being queried
 * @param attribute the attribute to query
 * @param value     the attribute value
 */
/** Alternative version of: {@link #glXGetFBConfigAttrib GetFBConfigAttrib}  */
	static public function glXGetFBConfigAttrib(display:haxe.Int64,config:haxe.Int64,attribute:Int,value:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,attribute:Int,value:java.nio.ByteBuffer):Int {})
/**
 * Creates a GLXPixmap offscreen rendering area from an X Pixmap and a desired GLXFBConfig.
 *
 * @param display     the connection to the X server
 * @param config      the GLXFBConfig
 * @param pixmap      the X Pixmap
 * @param attrib_list a list of attributes terminated with {@link X#None}
 */
/** Alternative version of: {@link #glXCreatePixmap CreatePixmap}  */
	static public function glXCreatePixmap(display:haxe.Int64,config:haxe.Int64,pixmap:haxe.Int64,attrib_list:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,pixmap:haxe.Int64,attrib_list:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Queries an attribute associated with a GLXDrawable.
 *
 * @param display   the connection to the X server
 * @param draw      the GLXDrawable being queried
 * @param attribute the attribute to query
 * @param value     returns the attribute value
 */
/** Alternative version of: {@link #glXQueryDrawable QueryDrawable}  */
	static public function glXQueryDrawable(display:haxe.Int64,draw:haxe.Int64,attribute:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (display:haxe.Int64,draw:haxe.Int64,attribute:Int,value:java.nio.ByteBuffer):Void {})
/**
 * Destroys a GLXPixmap.
 *
 * @param display the connection to the X server
 * @param pixmap  the GLXPixmap to destroy
 */
	static public function glXDestroyPixmap(display:haxe.Int64,pixmap:haxe.Int64):Void;
/** JNI method for {@link #glXMakeContextCurrent MakeContextCurrent}  */
	static public function nglXMakeContextCurrent(display:haxe.Int64,draw:haxe.Int64,read:haxe.Int64,ctx:haxe.Int64,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #glXSelectEvent SelectEvent}  */
	static public function nglXSelectEvent(display:haxe.Int64,draw:haxe.Int64,event_mask:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glXCreatePbuffer CreatePbuffer}  */
/** JNI method for {@link #glXCreatePbuffer CreatePbuffer}  */
	static public function nglXCreatePbuffer(display:haxe.Int64,config:haxe.Int64,attrib_list:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,attrib_list:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #glXDestroyPbuffer DestroyPbuffer}  */
	static public function nglXDestroyPbuffer(display:haxe.Int64,pbuf:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glXChooseFBConfig ChooseFBConfig}  */
/** JNI method for {@link #glXChooseFBConfig ChooseFBConfig}  */
	static public function nglXChooseFBConfig(display:haxe.Int64,screen:Int,attrib_list:haxe.Int64,nelements:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,screen:Int,attrib_list:haxe.Int64,nelements:haxe.Int64):haxe.Int64 {})
/**
 * Returns which GLX events are selected for a GLXDrawable.
 *
 * @param display    the connection to the X server
 * @param draw       the GLXDrawable
 * @param event_mask returns the selection mask
 */
/** Alternative version of: {@link #glXGetSelectedEvent GetSelectedEvent}  */
	static public function glXGetSelectedEvent(display:haxe.Int64,draw:haxe.Int64,event_mask:org.lwjgl.PointerBuffer):Void;
	@:overload(function (display:haxe.Int64,draw:haxe.Int64,event_mask:java.nio.ByteBuffer):Void {})
/** Returns the {@link GLX13} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLX13;
/**
 * Returns a list of GLXFBConfigs that match a list of attributes.
 *
 * @param display     the connection to the X server
 * @param screen      the screen number
 * @param attrib_list a list of attributes terminated with {@link X#None}
 */
/** Alternative version of: {@link #glXChooseFBConfig ChooseFBConfig}  */
	static public function glXChooseFBConfig(display:haxe.Int64,screen:Int,attrib_list:java.nio.IntBuffer):org.lwjgl.PointerBuffer;
	@:overload(function (display:haxe.Int64,screen:Int,attrib_list:java.nio.ByteBuffer):org.lwjgl.PointerBuffer {})
/** Unsafe version of {@link #glXGetVisualFromFBConfig GetVisualFromFBConfig}  */
/** JNI method for {@link #glXGetVisualFromFBConfig GetVisualFromFBConfig}  */
	static public function nglXGetVisualFromFBConfig(display:haxe.Int64,config:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64):haxe.Int64 {})
/**
 * Destroys a GLXPbuffer.
 *
 * @param display the connection to the X server
 * @param pbuf    the GLXPbuffer to destroy
 */
	static public function glXDestroyPbuffer(display:haxe.Int64,pbuf:haxe.Int64):Void;
/**
 * Makes a GLXContext current in the current thread.
 *
 * @param display the connection to the X server
 * @param draw    the draw GLXDrawable
 * @param read    the read GLXDrawable
 * @param ctx     the GLXContext
 */
	static public function glXMakeContextCurrent(display:haxe.Int64,draw:haxe.Int64,read:haxe.Int64,ctx:haxe.Int64):Int;

}
