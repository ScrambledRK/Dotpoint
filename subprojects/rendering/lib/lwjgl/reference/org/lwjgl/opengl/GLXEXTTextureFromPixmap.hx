package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXEXTTextureFromPixmap")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/texture_from_pixmap.txt">GLX_EXT_texture_from_pixmap</a> extension.
 * 
 * <p>This extension allows a color buffer to be used for both rendering and texturing.</p>
 * 
 * <p>Requires {@link GLX13 GLX 1.3}.</p>
 */
extern class GLXEXTTextureFromPixmap 
{
/** Accepted by the {@code attribute} parameter of {@link GLX13#glXGetFBConfigAttrib GetFBConfigAttrib} and the {@code attrib_list} parameter of {@link GLX13#glXChooseFBConfig ChooseFBConfig}.  */
	inline static public var GLX_BIND_TO_TEXTURE_RGB_EXT:Int = 8400;
/** Accepted by the {@code attribute} parameter of {@link GLX13#glXGetFBConfigAttrib GetFBConfigAttrib} and the {@code attrib_list} parameter of {@link GLX13#glXChooseFBConfig ChooseFBConfig}.  */
	inline static public var GLX_BIND_TO_TEXTURE_RGBA_EXT:Int = 8401;
/** Accepted by the {@code attribute} parameter of {@link GLX13#glXGetFBConfigAttrib GetFBConfigAttrib} and the {@code attrib_list} parameter of {@link GLX13#glXChooseFBConfig ChooseFBConfig}.  */
	inline static public var GLX_BIND_TO_MIPMAP_TEXTURE_EXT:Int = 8402;
/** Accepted by the {@code attribute} parameter of {@link GLX13#glXGetFBConfigAttrib GetFBConfigAttrib} and the {@code attrib_list} parameter of {@link GLX13#glXChooseFBConfig ChooseFBConfig}.  */
	inline static public var GLX_BIND_TO_TEXTURE_TARGETS_EXT:Int = 8403;
/** Accepted by the {@code attribute} parameter of {@link GLX13#glXGetFBConfigAttrib GetFBConfigAttrib} and the {@code attrib_list} parameter of {@link GLX13#glXChooseFBConfig ChooseFBConfig}.  */
	inline static public var GLX_Y_INVERTED_EXT:Int = 8404;
/** Accepted as an attribute in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap}, and by the {@code attribute} parameter of {@link GLX13#glXQueryDrawable QueryDrawable}.  */
	inline static public var GLX_TEXTURE_FORMAT_EXT:Int = 8405;
/** Accepted as an attribute in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap}, and by the {@code attribute} parameter of {@link GLX13#glXQueryDrawable QueryDrawable}.  */
	inline static public var GLX_TEXTURE_TARGET_EXT:Int = 8406;
/** Accepted as an attribute in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap}, and by the {@code attribute} parameter of {@link GLX13#glXQueryDrawable QueryDrawable}.  */
	inline static public var GLX_MIPMAP_TEXTURE_EXT:Int = 8407;
/**
 * Accepted as a value in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap} and returned in the {@code value} parameter of
 * {@link GLX13#glXQueryDrawable QueryDrawable} when {@code attribute} is {@link #GLX_TEXTURE_FORMAT_EXT TEXTURE_FORMAT_EXT}.
 */
	inline static public var GLX_TEXTURE_FORMAT_NONE_EXT:Int = 8408;
/**
 * Accepted as a value in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap} and returned in the {@code value} parameter of
 * {@link GLX13#glXQueryDrawable QueryDrawable} when {@code attribute} is {@link #GLX_TEXTURE_FORMAT_EXT TEXTURE_FORMAT_EXT}.
 */
	inline static public var GLX_TEXTURE_FORMAT_RGB_EXT:Int = 8409;
/**
 * Accepted as a value in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap} and returned in the {@code value} parameter of
 * {@link GLX13#glXQueryDrawable QueryDrawable} when {@code attribute} is {@link #GLX_TEXTURE_FORMAT_EXT TEXTURE_FORMAT_EXT}.
 */
	inline static public var GLX_TEXTURE_FORMAT_RGBA_EXT:Int = 8410;
/** Accepted as bits in the {@link #GLX_BIND_TO_TEXTURE_TARGETS_EXT BIND_TO_TEXTURE_TARGETS_EXT} variable.  */
	inline static public var GLX_TEXTURE_1D_BIT_EXT:Int = 1;
/** Accepted as bits in the {@link #GLX_BIND_TO_TEXTURE_TARGETS_EXT BIND_TO_TEXTURE_TARGETS_EXT} variable.  */
	inline static public var GLX_TEXTURE_2D_BIT_EXT:Int = 2;
/** Accepted as bits in the {@link #GLX_BIND_TO_TEXTURE_TARGETS_EXT BIND_TO_TEXTURE_TARGETS_EXT} variable.  */
	inline static public var GLX_TEXTURE_RECTANGLE_BIT_EXT:Int = 4;
/**
 * Accepted as a value in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap} and returned in the {@code value} parameter of
 * {@link GLX13#glXQueryDrawable QueryDrawable} when {@code attribute} is {@link #GLX_TEXTURE_TARGET_EXT TEXTURE_TARGET_EXT}.
 */
	inline static public var GLX_TEXTURE_1D_EXT:Int = 8411;
/**
 * Accepted as a value in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap} and returned in the {@code value} parameter of
 * {@link GLX13#glXQueryDrawable QueryDrawable} when {@code attribute} is {@link #GLX_TEXTURE_TARGET_EXT TEXTURE_TARGET_EXT}.
 */
	inline static public var GLX_TEXTURE_2D_EXT:Int = 8412;
/**
 * Accepted as a value in the {@code attrib_list} parameter of {@link GLX13#glXCreatePixmap CreatePixmap} and returned in the {@code value} parameter of
 * {@link GLX13#glXQueryDrawable QueryDrawable} when {@code attribute} is {@link #GLX_TEXTURE_TARGET_EXT TEXTURE_TARGET_EXT}.
 */
	inline static public var GLX_TEXTURE_RECTANGLE_EXT:Int = 8413;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_FRONT_LEFT_EXT:Int = 8414;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_FRONT_RIGHT_EXT:Int = 8415;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_BACK_LEFT_EXT:Int = 8416;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_BACK_RIGHT_EXT:Int = 8417;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_FRONT_EXT:Int = 8414;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_BACK_EXT:Int = 8416;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX0_EXT:Int = 8418;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX1_EXT:Int = 8419;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX2_EXT:Int = 8420;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX3_EXT:Int = 8421;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX4_EXT:Int = 8422;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX5_EXT:Int = 8423;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX6_EXT:Int = 8424;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX7_EXT:Int = 8425;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX8_EXT:Int = 8426;
/** Accepted by the {@code buffer} parameter of {@link #glXBindTexImageEXT BindTexImageEXT} and {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}.  */
	inline static public var GLX_AUX9_EXT:Int = 8427;
/** Function address.  */
	public var BindTexImageEXT:haxe.Int64;
/** Function address.  */
	public var ReleaseTexImageEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Releases a color buffer that is being used as a texture.
 *
 * @param display  the connection to the X server
 * @param drawable the drawable
 * @param buffer   the buffer
 */
	static public function glXReleaseTexImageEXT(display:haxe.Int64,drawable:haxe.Int64,buffer:Int):Void;
/** JNI method for {@link #glXReleaseTexImageEXT ReleaseTexImageEXT}  */
	static public function nglXReleaseTexImageEXT(display:haxe.Int64,drawable:haxe.Int64,buffer:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link GLXEXTTextureFromPixmap} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXEXTTextureFromPixmap;
/** Unsafe version of {@link #glXBindTexImageEXT BindTexImageEXT}  */
/** JNI method for {@link #glXBindTexImageEXT BindTexImageEXT}  */
	static public function nglXBindTexImageEXT(display:haxe.Int64,drawable:haxe.Int64,buffer:Int,attrib_list:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (display:haxe.Int64,drawable:haxe.Int64,buffer:Int,attrib_list:haxe.Int64):Void {})
/**
 * Defines a one- or two-dimensional texture image. The texture image is taken from {@code buffer} and need not be copied. The texture target, the texture
 * format, and the size of the texture components are derived from attributes of {@code drawable}.
 *
 * @param display     the connection to the X server
 * @param drawable    the drawable
 * @param buffer      the buffer
 * @param attrib_list an optional null-terminated list of attributes
 */
/** Alternative version of: {@link #glXBindTexImageEXT BindTexImageEXT}  */
	static public function glXBindTexImageEXT(display:haxe.Int64,drawable:haxe.Int64,buffer:Int,attrib_list:java.nio.IntBuffer):Void;
	@:overload(function (display:haxe.Int64,drawable:haxe.Int64,buffer:Int,attrib_list:java.nio.ByteBuffer):Void {})

}
