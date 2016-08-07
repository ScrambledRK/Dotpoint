package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXSGIXPBuffer")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/SGIX/pbuffer.txt">GLX_SGIX_pbuffer</a> extension.
 * 
 * <p>This extension defines pixel buffers (GLXPbuffers, or pbuffer for short). GLXPbuffers are additional non-visible rendering buffers for an OpenGL
 * renderer.</p>
 */
extern class GLXSGIXPBuffer 
{
/** Accepted by the {@code attribute} parameter of {@link GLXSGIXFBConfig#glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}.  */
	inline static public var GLX_MAX_PBUFFER_WIDTH_SGIX:Int = 32790;
/** Accepted by the {@code attribute} parameter of {@link GLXSGIXFBConfig#glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}.  */
	inline static public var GLX_MAX_PBUFFER_HEIGHT_SGIX:Int = 32791;
/** Accepted by the {@code attribute} parameter of {@link GLXSGIXFBConfig#glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}.  */
	inline static public var GLX_MAX_PBUFFER_PIXELS_SGIX:Int = 32792;
/** Accepted by the {@code attribute} parameter of {@link GLXSGIXFBConfig#glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}.  */
	inline static public var GLX_OPTIMAL_PBUFFER_WIDTH_SGIX:Int = 32793;
/** Accepted by the {@code attribute} parameter of {@link GLXSGIXFBConfig#glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX}.  */
	inline static public var GLX_OPTIMAL_PBUFFER_HEIGHT_SGIX:Int = 32794;
/**
 * Returned by {@link GLXSGIXFBConfig#glXGetFBConfigAttribSGIX GetFBConfigAttribSGIX} (when {@code attribute} is set to {@link GLXSGIXFBConfig#GLX_DRAWABLE_TYPE_SGIX DRAWABLE_TYPE_SGIX}) and
 * accepted by the {@code attrib_list} parameter of {@link GLXSGIXFBConfig#glXChooseFBConfigSGIX ChooseFBConfigSGIX} (following the
 * {@link GLXSGIXFBConfig#GLX_DRAWABLE_TYPE_SGIX DRAWABLE_TYPE_SGIX} token).
 */
	inline static public var GLX_PBUFFER_BIT_SGIX:Int = 4;
/** Accepted by the {@code attrib_list} parameter of {@link #glXCreateGLXPbufferSGIX CreateGLXPbufferSGIX} and by the {@code attribute} parameter of {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}.  */
	inline static public var GLX_PRESERVED_CONTENTS_SGIX:Int = 32795;
/** Accepted by the {@code attrib_list} parameter of {@link #glXCreateGLXPbufferSGIX CreateGLXPbufferSGIX} and by the {@code attribute} parameter of {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}.  */
	inline static public var GLX_LARGEST_PBUFFER_SGIX:Int = 32796;
/** Accepted by the {@code attribute} parameter of {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}.  */
	inline static public var GLX_WIDTH_SGIX:Int = 32797;
/** Accepted by the {@code attribute} parameter of {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}.  */
	inline static public var GLX_HEIGHT_SGIX:Int = 32798;
/** Accepted by the {@code attribute} parameter of {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}.  */
	inline static public var GLX_EVENT_MASK_SGIX:Int = 32799;
/** Accepted by the {@code mask} parameter of {@link #glXSelectEventSGIX SelectEventSGIX} and returned in the {@code mask} parameter of {@link #glXGetSelectedEventSGIX GetSelectedEventSGIX}.  */
	inline static public var GLX_BUFFER_CLOBBER_MASK_SGIX:Int = 134217728;
/** Returned in the {@code event_type} field of a "buffer clobber" event.  */
	inline static public var GLX_DAMAGED_SGIX:Int = 32800;
/** Returned in the {@code event_type} field of a "buffer clobber" event.  */
	inline static public var GLX_SAVED_SGIX:Int = 32801;
/** Returned in the {@code draw_type} field of a "buffer clobber" event.  */
	inline static public var GLX_WINDOW_SGIX:Int = 32802;
/** Returned in the {@code draw_type} field of a "buffer clobber" event.  */
	inline static public var GLX_PBUFFER_SGIX:Int = 32803;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_FRONT_LEFT_BUFFER_BIT_SGIX:Int = 1;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_FRONT_RIGHT_BUFFER_BIT_SGIX:Int = 2;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_BACK_LEFT_BUFFER_BIT_SGIX:Int = 4;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_BACK_RIGHT_BUFFER_BIT_SGIX:Int = 8;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_AUX_BUFFERS_BIT_SGIX:Int = 16;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_DEPTH_BUFFER_BIT_SGIX:Int = 32;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_STENCIL_BUFFER_BIT_SGIX:Int = 64;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_ACCUM_BUFFER_BIT_SGIX:Int = 128;
/** Returned in the {@code mask} field of a "buffer clobber" event.  */
	inline static public var GLX_SAMPLE_BUFFERS_BIT_SGIX:Int = 256;
/** Function address.  */
	public var CreateGLXPbufferSGIX:haxe.Int64;
/** Function address.  */
	public var DestroyGLXPbufferSGIX:haxe.Int64;
/** Function address.  */
	public var QueryGLXPbufferSGIX:haxe.Int64;
/** Function address.  */
	public var SelectEventSGIX:haxe.Int64;
/** Function address.  */
	public var GetSelectedEventSGIX:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Returns which GLX events are selected for a GLXdrawable.
 *
 * @param display  the connection to the X server
 * @param drawable the GLXDrawable
 * @param mask     returns the selection mask
 */
/** Alternative version of: {@link #glXGetSelectedEventSGIX GetSelectedEventSGIX}  */
	static public function glXGetSelectedEventSGIX(display:haxe.Int64,drawable:haxe.Int64,mask:org.lwjgl.PointerBuffer):Void;
	@:overload(function (display:haxe.Int64,drawable:haxe.Int64,mask:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glXSelectEventSGIX SelectEventSGIX}  */
	static public function nglXSelectEventSGIX(display:haxe.Int64,drawable:haxe.Int64,mask:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * Selects which GLX events should be received on a GLXdrawable.
 *
 * @param display  the connection to the X server
 * @param drawable the GLXDrawable
 * @param mask     the selection mask
 */
	static public function glXSelectEventSGIX(display:haxe.Int64,drawable:haxe.Int64,mask:haxe.Int64):Void;
/** Unsafe version of {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}  */
/** JNI method for {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}  */
	static public function nglXQueryGLXPbufferSGIX(display:haxe.Int64,pbuf:haxe.Int64,attribute:Int,value:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (display:haxe.Int64,pbuf:haxe.Int64,attribute:Int,value:haxe.Int64):Void {})
/**
 * Destroys a GLXPbuffer.
 *
 * @param display the connection to the X server
 * @param pbuf    the pbuffer to destroy
 */
	static public function glXDestroyGLXPbufferSGIX(display:haxe.Int64,pbuf:haxe.Int64):Void;
/** Unsafe version of {@link #glXGetSelectedEventSGIX GetSelectedEventSGIX}  */
/** JNI method for {@link #glXGetSelectedEventSGIX GetSelectedEventSGIX}  */
	static public function nglXGetSelectedEventSGIX(display:haxe.Int64,drawable:haxe.Int64,mask:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (display:haxe.Int64,drawable:haxe.Int64,mask:haxe.Int64):Void {})
/** Returns the {@link GLXSGIXPBuffer} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXSGIXPBuffer;
/** JNI method for {@link #glXDestroyGLXPbufferSGIX DestroyGLXPbufferSGIX}  */
	static public function nglXDestroyGLXPbufferSGIX(display:haxe.Int64,pbuf:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * Creates a single GLXPbuffer and returns its XID.
 *
 * @param display     the connection to the X server
 * @param config      the {@code GLXFBConfig}
 * @param width       the pbuffer width
 * @param height      the pbuffer height
 * @param attrib_list an optional null-terminated list of attributes
 */
/** Alternative version of: {@link #glXCreateGLXPbufferSGIX CreateGLXPbufferSGIX}  */
	static public function glXCreateGLXPbufferSGIX(display:haxe.Int64,config:haxe.Int64,width:Int,height:Int,attrib_list:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,width:Int,height:Int,attrib_list:java.nio.ByteBuffer):haxe.Int64 {})
/**
 * Queries an attribute associated with a GLXPbuffer.
 *
 * @param display   the connection to the X server
 * @param pbuf      the pbuffer being queried
 * @param attribute the attribute to query
 * @param value     returns the attribute value
 */
/** Alternative version of: {@link #glXQueryGLXPbufferSGIX QueryGLXPbufferSGIX}  */
	static public function glXQueryGLXPbufferSGIX(display:haxe.Int64,pbuf:haxe.Int64,attribute:Int,value:java.nio.IntBuffer):Void;
	@:overload(function (display:haxe.Int64,pbuf:haxe.Int64,attribute:Int,value:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glXCreateGLXPbufferSGIX CreateGLXPbufferSGIX}  */
/** JNI method for {@link #glXCreateGLXPbufferSGIX CreateGLXPbufferSGIX}  */
	static public function nglXCreateGLXPbufferSGIX(display:haxe.Int64,config:haxe.Int64,width:Int,height:Int,attrib_list:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,width:Int,height:Int,attrib_list:haxe.Int64):haxe.Int64 {})

}
