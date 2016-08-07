package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBRenderTexture")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_render_texture.txt">WGL_ARB_render_texture</a> extension.
 * 
 * <p>This extension allows a color buffer to be used for both rendering and texturing. When a color buffer is bound to a texture target it cannot be
 * rendered to. Once it has been released from the texture it can be  rendered to once again.</p>
 * 
 * <p>This extension may provide a performance boost and reduce memory requirements on architectures that support rendering to the same memory where textures
 * reside and in the same memory format and layout required by texturing. The functionality is similar to CopyTexImage1D and CopyTexImage2D. However, some
 * changes were made to make it easier to avoid copying data:</p>
 * 
 * <p><ul>
 * <li>Only color buffers of a pbuffer can be bound as a texture. It is not possible to use the color buffer of a window as a texture.</li>
 * <li>The texture internal format is determined when the color buffer is associated with the texture, guaranteeing that the color buffer format is equivalent
 * to the texture internal format.</li>
 * <li>When a color buffer of a pbuffer is being used as a texture, the pbuffer can not be used for rendering; this makes it easier for implementations to
 * avoid a copy of the image since the semantics of the pointer swap are clear.</li>
 * <li>The application must release the color buffer from the texture before it can render to the pbuffer again. When the color buffer is bound as a texture,
 * draw and read operations on the pbuffer are undefined.</li>
 * <li>A mipmap attribute can be set, in which case memory will be allocated up front for mipmaps. The application can render the mipmap images or, if
 * <a href="http://www.opengl.org/registry/specs/SGIS/generate_mipmap.txt">SGIS_generate_mipmap</a> is supported, they can be automatically generated when the color buffer is bound as a texture.</li>
 * <li>A texture target is associated with the pbuffer, so that cubemap images can be rendered into a single color buffer.</li>
 * </ul>
 * Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string}, {@link WGLARBPixelFormat WGL_ARB_pixel_format}, {@link WGLARBPbuffer WGL_ARB_pbuffer}.</p>
 */
extern class WGLARBRenderTexture 
{
/**
 * Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}, and the {@code attribIList} parameters of
 * {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_BIND_TO_TEXTURE_RGB_ARB:Int = 8304;
/**
 * Accepted by the {@code attributes} parameter of {@link WGLARBPixelFormat#wglGetPixelFormatAttribiARB GetPixelFormatAttribiARB}, and the {@code attribIList} parameters of
 * {@link WGLARBPixelFormat#wglChoosePixelFormatARB ChoosePixelFormatARB}.
 */
	inline static public var WGL_BIND_TO_TEXTURE_RGBA_ARB:Int = 8305;
/** Accepted by the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and by the {@code attribute} parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_TEXTURE_FORMAT_ARB:Int = 8306;
/** Accepted by the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and by the {@code attribute} parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_TEXTURE_TARGET_ARB:Int = 8307;
/** Accepted by the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and by the {@code attribute} parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_MIPMAP_TEXTURE_ARB:Int = 8308;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_TEXTURE_FORMAT_ARB TEXTURE_FORMAT_ARB}.
 */
	inline static public var WGL_TEXTURE_RGB_ARB:Int = 8309;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_TEXTURE_FORMAT_ARB TEXTURE_FORMAT_ARB}.
 */
	inline static public var WGL_TEXTURE_RGBA_ARB:Int = 8310;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_TEXTURE_FORMAT_ARB TEXTURE_FORMAT_ARB}.
 */
	inline static public var WGL_NO_TEXTURE_ARB:Int = 8311;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_TEXTURE_TARGET_ARB TEXTURE_TARGET_ARB}.
 */
	inline static public var WGL_TEXTURE_CUBE_MAP_ARB:Int = 8312;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_TEXTURE_TARGET_ARB TEXTURE_TARGET_ARB}.
 */
	inline static public var WGL_TEXTURE_1D_ARB:Int = 8313;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link WGLARBPbuffer#wglCreatePbufferARB CreatePbufferARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_TEXTURE_TARGET_ARB TEXTURE_TARGET_ARB}.
 */
	inline static public var WGL_TEXTURE_2D_ARB:Int = 8314;
/** Accepted by the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and by the {@code attribute} parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_MIPMAP_LEVEL_ARB:Int = 8315;
/** Accepted by the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and by the {@code attribute} parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB}.  */
	inline static public var WGL_CUBE_MAP_FACE_ARB:Int = 8316;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_CUBE_MAP_FACE_ARB CUBE_MAP_FACE_ARB}.
 */
	inline static public var WGL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB:Int = 8317;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_CUBE_MAP_FACE_ARB CUBE_MAP_FACE_ARB}.
 */
	inline static public var WGL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB:Int = 8318;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_CUBE_MAP_FACE_ARB CUBE_MAP_FACE_ARB}.
 */
	inline static public var WGL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB:Int = 8319;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_CUBE_MAP_FACE_ARB CUBE_MAP_FACE_ARB}.
 */
	inline static public var WGL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB:Int = 8320;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_CUBE_MAP_FACE_ARB CUBE_MAP_FACE_ARB}.
 */
	inline static public var WGL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB:Int = 8321;
/**
 * Accepted as a value in the {@code attribList} parameter of {@link #wglSetPbufferAttribARB SetPbufferAttribARB} and returned in the value parameter of {@link WGLARBPbuffer#wglQueryPbufferARB QueryPbufferARB} when
 * {@code attribute} is {@link #WGL_CUBE_MAP_FACE_ARB CUBE_MAP_FACE_ARB}.
 */
	inline static public var WGL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB:Int = 8322;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_FRONT_LEFT_ARB:Int = 8323;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_FRONT_RIGHT_ARB:Int = 8324;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_BACK_LEFT_ARB:Int = 8325;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_BACK_RIGHT_ARB:Int = 8326;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX0_ARB:Int = 8327;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX1_ARB:Int = 8328;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX2_ARB:Int = 8329;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX3_ARB:Int = 8330;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX4_ARB:Int = 8331;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX5_ARB:Int = 8332;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX6_ARB:Int = 8333;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX7_ARB:Int = 8334;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX8_ARB:Int = 8335;
/** Accepted by the {@code buffer} parameter of {@link #wglBindTexImageARB BindTexImageARB} and {@link #wglReleaseTexImageARB ReleaseTexImageARB}.  */
	inline static public var WGL_AUX9_ARB:Int = 8336;
/** Function address.  */
	public var BindTexImageARB:haxe.Int64;
/** Function address.  */
	public var ReleaseTexImageARB:haxe.Int64;
/** Function address.  */
	public var SetPbufferAttribARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Releases the specified color buffer back to the pbuffer. The pbuffer is made available for reading and writing when it no longer has any color buffers
 * bound as textures.
 *
 * @param pbuffer a pbuffer handle
 * @param buffer  the target buffer. One of:<br>{@link #WGL_FRONT_LEFT_ARB FRONT_LEFT_ARB}, {@link #WGL_FRONT_RIGHT_ARB FRONT_RIGHT_ARB}, {@link #WGL_BACK_LEFT_ARB BACK_LEFT_ARB}, {@link #WGL_BACK_RIGHT_ARB BACK_RIGHT_ARB}, {@link #WGL_AUX0_ARB AUX0_ARB}, WGL_AUX[1-9]_ARB
 */
	static public function wglReleaseTexImageARB(pbuffer:haxe.Int64,buffer:Int):Int;
/**
 * Defines a one-dimensional texture image or two-dimensional texture image or a set of two-dimensional cube map texture images. The texture image or
 * images consist of the image data in {@code buffer} for the specified {@code pbuffer} and need not be copied. The texture target, the texture format and
 * the size of the  texture components are derived from attributes of pbuffer  specified by {@code pbuffer}.
 *
 * @param pbuffer a pbuffer handle
 * @param buffer  the target buffer. One of:<br>{@link #WGL_FRONT_LEFT_ARB FRONT_LEFT_ARB}, {@link #WGL_FRONT_RIGHT_ARB FRONT_RIGHT_ARB}, {@link #WGL_BACK_LEFT_ARB BACK_LEFT_ARB}, {@link #WGL_BACK_RIGHT_ARB BACK_RIGHT_ARB}, {@link #WGL_AUX0_ARB AUX0_ARB}, WGL_AUX[1-9]_ARB
 */
	static public function wglBindTexImageARB(pbuffer:haxe.Int64,buffer:Int):Int;
/**
 * Sets an attribute to the specified pbuffer.
 *
 * @param pbuffer    a pbuffer handle
 * @param attribList a 0-terminated list of attribute {type, value} pairs containing integer values
 */
/** Alternative version of: {@link #wglSetPbufferAttribARB SetPbufferAttribARB}  */
	static public function wglSetPbufferAttribARB(pbuffer:haxe.Int64,attribList:java.nio.IntBuffer):Int;
	@:overload(function (pbuffer:haxe.Int64,attribList:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #wglBindTexImageARB BindTexImageARB}  */
	static public function nwglBindTexImageARB(pbuffer:haxe.Int64,buffer:Int,__functionAddress:haxe.Int64):Int;
/** Returns the {@link WGLARBRenderTexture} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLARBRenderTexture;
/** JNI method for {@link #wglReleaseTexImageARB ReleaseTexImageARB}  */
	static public function nwglReleaseTexImageARB(pbuffer:haxe.Int64,buffer:Int,__functionAddress:haxe.Int64):Int;
/** Unsafe version of {@link #wglSetPbufferAttribARB SetPbufferAttribARB}  */
/** JNI method for {@link #wglSetPbufferAttribARB SetPbufferAttribARB}  */
	static public function nwglSetPbufferAttribARB(pbuffer:haxe.Int64,attribList:haxe.Int64,__functionAddress:haxe.Int64):Int;
	@:overload(function (pbuffer:haxe.Int64,attribList:haxe.Int64):Int {})

}
