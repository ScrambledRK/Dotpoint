package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBPixelFormat")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_pixel_format.txt">WGL_ARB_pixel_format</a> extension.
 * 
 * <p>This extension adds functions to query pixel format attributes and to choose from the list of supported pixel formats.</p>
 * 
 * <p>These functions treat pixel formats as opaque types: attributes are specified by name rather than by accessing them directly as fields in a structure.
 * Thus the list of attributes can be easily extended.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string}.</p>
 */
extern class WGLARBPixelFormat 
{
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_NUMBER_PIXEL_FORMATS_ARB:Int = 8192;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_DRAW_TO_WINDOW_ARB:Int = 8193;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_DRAW_TO_BITMAP_ARB:Int = 8194;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ACCELERATION_ARB:Int = 8195;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_NEED_PALETTE_ARB:Int = 8196;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_NEED_SYSTEM_PALETTE_ARB:Int = 8197;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SWAP_LAYER_BUFFERS_ARB:Int = 8198;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SWAP_METHOD_ARB:Int = 8199;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_NUMBER_OVERLAYS_ARB:Int = 8200;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_NUMBER_UNDERLAYS_ARB:Int = 8201;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_TRANSPARENT_ARB:Int = 8202;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_TRANSPARENT_RED_VALUE_ARB:Int = 8247;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_TRANSPARENT_GREEN_VALUE_ARB:Int = 8248;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_TRANSPARENT_BLUE_VALUE_ARB:Int = 8249;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_TRANSPARENT_ALPHA_VALUE_ARB:Int = 8250;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_TRANSPARENT_INDEX_VALUE_ARB:Int = 8251;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SHARE_DEPTH_ARB:Int = 8204;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SHARE_STENCIL_ARB:Int = 8205;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SHARE_ACCUM_ARB:Int = 8206;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SUPPORT_GDI_ARB:Int = 8207;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_SUPPORT_OPENGL_ARB:Int = 8208;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_DOUBLE_BUFFER_ARB:Int = 8209;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_STEREO_ARB:Int = 8210;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_PIXEL_TYPE_ARB:Int = 8211;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_COLOR_BITS_ARB:Int = 8212;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_RED_BITS_ARB:Int = 8213;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_RED_SHIFT_ARB:Int = 8214;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_GREEN_BITS_ARB:Int = 8215;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_GREEN_SHIFT_ARB:Int = 8216;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_BLUE_BITS_ARB:Int = 8217;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_BLUE_SHIFT_ARB:Int = 8218;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ALPHA_BITS_ARB:Int = 8219;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ALPHA_SHIFT_ARB:Int = 8220;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ACCUM_BITS_ARB:Int = 8221;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ACCUM_RED_BITS_ARB:Int = 8222;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ACCUM_GREEN_BITS_ARB:Int = 8223;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ACCUM_BLUE_BITS_ARB:Int = 8224;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_ACCUM_ALPHA_BITS_ARB:Int = 8225;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_DEPTH_BITS_ARB:Int = 8226;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_STENCIL_BITS_ARB:Int = 8227;
/**
 * Accepted in the {@code attributes} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}, and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}, and as a type in
 * the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_AUX_BUFFERS_ARB:Int = 8228;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_NO_ACCELERATION_ARB:Int = 8229;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_GENERIC_ACCELERATION_ARB:Int = 8230;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_FULL_ACCELERATION_ARB:Int = 8231;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_SWAP_EXCHANGE_ARB:Int = 8232;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_SWAP_COPY_ARB:Int = 8233;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_SWAP_UNDEFINED_ARB:Int = 8234;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_TYPE_RGBA_ARB:Int = 8235;
/**
 * Accepted as a value in the {@code attribIList} and {@code attribFList} parameter arrays of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}, and returned in the
 * {@code values} parameter array of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB} and {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}.
 */
	inline static public var WGL_TYPE_COLORINDEX_ARB:Int = 8236;
/** Function address.  */
	public var GetPixelFormatAttribivARB:haxe.Int64;
/** Function address.  */
	public var GetPixelFormatAttribfvARB:haxe.Int64;
/** Function address.  */
	public var ChoosePixelFormatARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}  */
/** JNI method for {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}  */
	static public function nwglGetPixelFormatAttribivARB(hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,n:Int,attributes:haxe.Int64,values:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,n:Int,attributes:haxe.Int64,values:haxe.Int64):Int {})
/** Unsafe version of {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}  */
/** JNI method for {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}  */
	static public function nwglGetPixelFormatAttribfvARB(hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,n:Int,attributes:haxe.Int64,values:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,n:Int,attributes:haxe.Int64,values:haxe.Int64):Int {})
/** Alternative version of: {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}  */
/**
 * Float version of {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}.
 *
 * @param hdc         the device context on which the pixel format is supported
 * @param pixelFormat an index that specifies the pixel format
 * @param layerPlane  the plane being queried
 * @param n           the number of attributes being queried
 * @param attributes  an array of pixel format attribute identifiers which specify the attributes to be queried
 * @param values      a buffer into which the results of the query will be placed
 */
	static public function wglGetPixelFormatAttribfvARB(hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,n:Int,attributes:java.nio.ByteBuffer,values:java.nio.ByteBuffer):Int;
	@:overload(function (hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,attributes:java.nio.IntBuffer,values:java.nio.FloatBuffer):Int {})
/** Alternative version of: {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}  */
/**
 * 
 *
 * @param hdc         the device context on which the pixel format is supported
 * @param pixelFormat an index that specifies the pixel format
 * @param layerPlane  the plane being queried
 * @param n           the number of attributes being queried
 * @param attributes  an array of pixel format attribute identifiers which specify the attributes to be queried. One of:<br>{@link #WGL_NUMBER_PIXEL_FORMATS_ARB NUMBER_PIXEL_FORMATS_ARB}, {@link #WGL_DRAW_TO_WINDOW_ARB DRAW_TO_WINDOW_ARB}, {@link #WGL_DRAW_TO_BITMAP_ARB DRAW_TO_BITMAP_ARB}, {@link #WGL_ACCELERATION_ARB ACCELERATION_ARB}, {@link #WGL_NEED_PALETTE_ARB NEED_PALETTE_ARB}, {@link #WGL_NEED_SYSTEM_PALETTE_ARB NEED_SYSTEM_PALETTE_ARB}, {@link #WGL_SWAP_LAYER_BUFFERS_ARB SWAP_LAYER_BUFFERS_ARB}, {@link #WGL_SWAP_METHOD_ARB SWAP_METHOD_ARB}, {@link #WGL_NUMBER_OVERLAYS_ARB NUMBER_OVERLAYS_ARB}, {@link #WGL_NUMBER_UNDERLAYS_ARB NUMBER_UNDERLAYS_ARB}, {@link #WGL_TRANSPARENT_ARB TRANSPARENT_ARB}, {@link #WGL_TRANSPARENT_RED_VALUE_ARB TRANSPARENT_RED_VALUE_ARB}, {@link #WGL_TRANSPARENT_GREEN_VALUE_ARB TRANSPARENT_GREEN_VALUE_ARB}, {@link #WGL_TRANSPARENT_BLUE_VALUE_ARB TRANSPARENT_BLUE_VALUE_ARB}, {@link #WGL_TRANSPARENT_ALPHA_VALUE_ARB TRANSPARENT_ALPHA_VALUE_ARB}, {@link #WGL_TRANSPARENT_INDEX_VALUE_ARB TRANSPARENT_INDEX_VALUE_ARB}, {@link #WGL_SHARE_DEPTH_ARB SHARE_DEPTH_ARB}, {@link #WGL_SHARE_STENCIL_ARB SHARE_STENCIL_ARB}, {@link #WGL_SHARE_ACCUM_ARB SHARE_ACCUM_ARB}, {@link #WGL_SUPPORT_GDI_ARB SUPPORT_GDI_ARB}, {@link #WGL_SUPPORT_OPENGL_ARB SUPPORT_OPENGL_ARB}, {@link #WGL_DOUBLE_BUFFER_ARB DOUBLE_BUFFER_ARB}, {@link #WGL_STEREO_ARB STEREO_ARB}, {@link #WGL_PIXEL_TYPE_ARB PIXEL_TYPE_ARB}, {@link #WGL_COLOR_BITS_ARB COLOR_BITS_ARB}, {@link #WGL_RED_BITS_ARB RED_BITS_ARB}, {@link #WGL_RED_SHIFT_ARB RED_SHIFT_ARB}, {@link #WGL_GREEN_BITS_ARB GREEN_BITS_ARB}, {@link #WGL_GREEN_SHIFT_ARB GREEN_SHIFT_ARB}, {@link #WGL_BLUE_BITS_ARB BLUE_BITS_ARB}, {@link #WGL_BLUE_SHIFT_ARB BLUE_SHIFT_ARB}, {@link #WGL_ALPHA_BITS_ARB ALPHA_BITS_ARB}, {@link #WGL_ALPHA_SHIFT_ARB ALPHA_SHIFT_ARB}, {@link #WGL_ACCUM_BITS_ARB ACCUM_BITS_ARB}, {@link #WGL_ACCUM_RED_BITS_ARB ACCUM_RED_BITS_ARB}, {@link #WGL_ACCUM_GREEN_BITS_ARB ACCUM_GREEN_BITS_ARB}, {@link #WGL_ACCUM_BLUE_BITS_ARB ACCUM_BLUE_BITS_ARB}, {@link #WGL_ACCUM_ALPHA_BITS_ARB ACCUM_ALPHA_BITS_ARB}, {@link #WGL_DEPTH_BITS_ARB DEPTH_BITS_ARB}, {@link #WGL_STENCIL_BITS_ARB STENCIL_BITS_ARB}, {@link #WGL_AUX_BUFFERS_ARB AUX_BUFFERS_ARB}
 * @param values      a buffer into which the results of the query will be placed
 */
	static public function wglGetPixelFormatAttribivARB(hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,n:Int,attributes:java.nio.ByteBuffer,values:java.nio.ByteBuffer):Int;
	@:overload(function (hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,attributes:java.nio.IntBuffer,values:java.nio.IntBuffer):Int {})
/** Returns the {@link WGLARBPixelFormat} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLARBPixelFormat;
/** Alternative version of: {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}  */
/**
 * Selects from among all of the available pixel formats (including both accelerated and generic formats and non-displayable formats). This function
 * accepts attributes for the main planes. A list of pixel formats that match the specified attributes is returned with the "best" pixel formats at the
 * start of the list (order is device dependent).
 *
 * @param hdc         the device context on which the pixel format is supported
 * @param attribIList a list of attribute {type, value} pairs containing integer attribute values. One of:<br>{@link #WGL_NUMBER_PIXEL_FORMATS_ARB NUMBER_PIXEL_FORMATS_ARB}, {@link #WGL_DRAW_TO_WINDOW_ARB DRAW_TO_WINDOW_ARB}, {@link #WGL_DRAW_TO_BITMAP_ARB DRAW_TO_BITMAP_ARB}, {@link #WGL_ACCELERATION_ARB ACCELERATION_ARB}, {@link #WGL_NEED_PALETTE_ARB NEED_PALETTE_ARB}, {@link #WGL_NEED_SYSTEM_PALETTE_ARB NEED_SYSTEM_PALETTE_ARB}, {@link #WGL_SWAP_LAYER_BUFFERS_ARB SWAP_LAYER_BUFFERS_ARB}, {@link #WGL_SWAP_METHOD_ARB SWAP_METHOD_ARB}, {@link #WGL_NUMBER_OVERLAYS_ARB NUMBER_OVERLAYS_ARB}, {@link #WGL_NUMBER_UNDERLAYS_ARB NUMBER_UNDERLAYS_ARB}, {@link #WGL_TRANSPARENT_ARB TRANSPARENT_ARB}, {@link #WGL_TRANSPARENT_RED_VALUE_ARB TRANSPARENT_RED_VALUE_ARB}, {@link #WGL_TRANSPARENT_GREEN_VALUE_ARB TRANSPARENT_GREEN_VALUE_ARB}, {@link #WGL_TRANSPARENT_BLUE_VALUE_ARB TRANSPARENT_BLUE_VALUE_ARB}, {@link #WGL_TRANSPARENT_ALPHA_VALUE_ARB TRANSPARENT_ALPHA_VALUE_ARB}, {@link #WGL_TRANSPARENT_INDEX_VALUE_ARB TRANSPARENT_INDEX_VALUE_ARB}, {@link #WGL_SHARE_DEPTH_ARB SHARE_DEPTH_ARB}, {@link #WGL_SHARE_STENCIL_ARB SHARE_STENCIL_ARB}, {@link #WGL_SHARE_ACCUM_ARB SHARE_ACCUM_ARB}, {@link #WGL_SUPPORT_GDI_ARB SUPPORT_GDI_ARB}, {@link #WGL_SUPPORT_OPENGL_ARB SUPPORT_OPENGL_ARB}, {@link #WGL_DOUBLE_BUFFER_ARB DOUBLE_BUFFER_ARB}, {@link #WGL_STEREO_ARB STEREO_ARB}, {@link #WGL_PIXEL_TYPE_ARB PIXEL_TYPE_ARB}, {@link #WGL_COLOR_BITS_ARB COLOR_BITS_ARB}, {@link #WGL_RED_BITS_ARB RED_BITS_ARB}, {@link #WGL_RED_SHIFT_ARB RED_SHIFT_ARB}, {@link #WGL_GREEN_BITS_ARB GREEN_BITS_ARB}, {@link #WGL_GREEN_SHIFT_ARB GREEN_SHIFT_ARB}, {@link #WGL_BLUE_BITS_ARB BLUE_BITS_ARB}, {@link #WGL_BLUE_SHIFT_ARB BLUE_SHIFT_ARB}, {@link #WGL_ALPHA_BITS_ARB ALPHA_BITS_ARB}, {@link #WGL_ALPHA_SHIFT_ARB ALPHA_SHIFT_ARB}, {@link #WGL_ACCUM_BITS_ARB ACCUM_BITS_ARB}, {@link #WGL_ACCUM_RED_BITS_ARB ACCUM_RED_BITS_ARB}, {@link #WGL_ACCUM_GREEN_BITS_ARB ACCUM_GREEN_BITS_ARB}, {@link #WGL_ACCUM_BLUE_BITS_ARB ACCUM_BLUE_BITS_ARB}, {@link #WGL_ACCUM_ALPHA_BITS_ARB ACCUM_ALPHA_BITS_ARB}, {@link #WGL_DEPTH_BITS_ARB DEPTH_BITS_ARB}, {@link #WGL_STENCIL_BITS_ARB STENCIL_BITS_ARB}, {@link #WGL_AUX_BUFFERS_ARB AUX_BUFFERS_ARB}
 * @param attribFList a list of attribute {type, value} pairs containing floating point attribute values
 * @param maxFormats  the number of attributes being queried
 * @param formats     an array of returned indices of the matching pixel formats. The best pixel formats (i.e. closest match and best format for the hardware) are at the
 *                    head of the list.
 * @param numFormats  returns the number of matching formats
 */
	static public function wglChoosePixelFormatARB(hdc:haxe.Int64,attribIList:java.nio.ByteBuffer,attribFList:java.nio.ByteBuffer,maxFormats:Int,formats:java.nio.ByteBuffer,numFormats:java.nio.ByteBuffer):Int;
	@:overload(function (hdc:haxe.Int64,attribIList:java.nio.IntBuffer,attribFList:java.nio.FloatBuffer,formats:java.nio.IntBuffer,numFormats:java.nio.IntBuffer):Int {})
/** Single value version of: {@link #wglGetPixelFormatAttribivARB GetPixelFormatAttribivARB}  */
	static public function wglGetPixelFormatAttribiARB(hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,attribute:Int,values:java.nio.IntBuffer):Int;
/** Single value version of: {@link #wglGetPixelFormatAttribfvARB GetPixelFormatAttribfvARB}  */
	static public function wglGetPixelFormatAttribfARB(hdc:haxe.Int64,pixelFormat:Int,layerPlane:Int,attribute:Int,values:java.nio.FloatBuffer):Int;
/** Unsafe version of {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}  */
/** JNI method for {@link #wglChoosePixelFormatARB ChoosePixelFormatARB}  */
	static public function nwglChoosePixelFormatARB(hdc:haxe.Int64,attribIList:haxe.Int64,attribFList:haxe.Int64,maxFormats:Int,formats:haxe.Int64,numFormats:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (hdc:haxe.Int64,attribIList:haxe.Int64,attribFList:haxe.Int64,maxFormats:Int,formats:haxe.Int64,numFormats:haxe.Int64):Int {})

}
