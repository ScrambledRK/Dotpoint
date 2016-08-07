package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBImageResize")
@:final
/**
 * Native bindings to stb_image_resize.h from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <p>Written with emphasis on usability, portability, and efficiency. (No SIMD or threads, so it be easily outperformed by libs that use those.) Only
 * scaling and translation is supported, no rotations or shears. Easy API downsamples w/Mitchell filter, upsamples w/cubic interpolation.</p>
 * 
 * <h3>QUICKSTART</h3>
 * <pre><code style="font-family: monospace">
 * stbir_resize_uint8(      input_pixels , in_w , in_h , 0,
 *                          output_pixels, out_w, out_h, 0, num_channels)
 * stbir_resize_float(...)
 * stbir_resize_uint8_srgb( input_pixels , in_w , in_h , 0,
 *                          output_pixels, out_w, out_h, 0,
 *                          num_channels , alpha_chan  , 0)
 * stbir_resize_uint8_srgb_edgemode(
 *                          input_pixels , in_w , in_h , 0,
 *                          output_pixels, out_w, out_h, 0,
 *                          num_channels , alpha_chan  , 0, STBIR_EDGE_CLAMP)
 *                                                       // WRAP/REFLECT/ZERO</code></pre>
 * <h3>ALPHA CHANNEL</h3>
 * 
 * <p>Most of the resizing functions provide the ability to control how the alpha channel of an image is processed. The important things to know about this:
 * <ol>
 * <li>The best mathematically-behaved version of alpha to use is called "premultiplied alpha", in which the other color channels have had the alpha value
 * multiplied in. If you use premultiplied alpha, linear filtering (such as image resampling done by this library, or performed in texture units on
 * GPUs) does the "right thing". While premultiplied alpha is standard in the movie CGI industry, it is still uncommon in the videogame/real-time
 * world. If you linearly filter non-premultiplied alpha, strange effects occur. (For example, the average of 1% opaque bright green and 99% opaque
 * black produces 50% transparent dark green when non-premultiplied, whereas premultiplied it produces 50% transparent near-black. The former
 * introduces green energy that doesn't exist in the source image.)</li>
 * <li>Artists should not edit premultiplied-alpha images; artists want non-premultiplied alpha images. Thus, art tools generally output non-premultiplied
 * alpha images.</li>
 * <li>You will get best results in most cases by converting images to premultiplied alpha before processing them mathematically.</li>
 * <li>If you pass the flag {@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, the resizer does not do anything special for the alpha channel; it is resampled identically to
 * other channels. This produces the correct results for premultiplied-alpha images, but produces less-than-ideal results for non-premultiplied-alpha
 * images.</li>
 * <li>If you do not pass the flag {@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, then the resizer weights the contribution of input pixels based on their alpha values, or,
 * equivalently, it multiplies the alpha value into the color channels, resamples, then divides by the resultant alpha value. Input pixels which have
 * {@code alpha=0} do not contribute at all to output pixels unless <b>all</b> of the input pixels affecting that output pixel have {@code alpha=0},
 * in which case the result for that pixel is the same as it would be without {@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}. However, this is only true for input images
 * in integer formats. For input images in float format, input pixels with {@code alpha=0} have no effect, and output pixels which have
 * {@code alpha=0} will be 0 in all channels. (For float images, you can manually achieve the same result by adding a tiny epsilon value to the alpha
 * channel of every image, and then subtracting or clamping it at the end.)</li>
 * <li>You can separately control whether the alpha channel is interpreted as linear or affected by the colorspace. By default it is linear; you almost
 * never want to apply the colorspace. (For example, graphics hardware does not apply sRGB conversion to the alpha channel.)</li>
 * </ol></p>
 */
extern class STBImageResize 
{
/** Set this flag if you have no alpha channel, or otherwise provide the index of the alpha channel.  */
	inline static public var STBIR_ALPHA_CHANNEL_NONE:Int = -1;
/**
 * Set this flag if your texture has premultiplied alpha. Otherwise, stbir will use alpha-weighted resampling (effectively premultiplying, resampling,
 * then unpremultiplying).
 */
	inline static public var STBIR_FLAG_ALPHA_PREMULTIPLIED:Int = -1;
/** The specified alpha channel should be handled as gamma-corrected value even when doing sRGB operations.  */
	inline static public var STBIR_FLAG_ALPHA_USES_COLORSPACE:Int = -1;
/** Edge wrap mode.  */
	inline static public var STBIR_EDGE_CLAMP:Int = 1;
/** Edge wrap mode.  */
	inline static public var STBIR_EDGE_REFLECT:Int = 2;
/** Edge wrap mode.  */
	inline static public var STBIR_EDGE_WRAP:Int = 3;
/** Edge wrap mode.  */
	inline static public var STBIR_EDGE_ZERO:Int = 4;
/** Use same filter type that easy-to-use API chooses.  */
	inline static public var STBIR_FILTER_DEFAULT:Int = 0;
/** A trapezoid w/1-pixel wide ramps, same result as box for integer scale ratios.  */
	inline static public var STBIR_FILTER_BOX:Int = 1;
/** On upsampling, produces same results as bilinear texture filtering.  */
	inline static public var STBIR_FILTER_TRIANGLE:Int = 2;
/** The cubic b-spline (aka Mitchell-Netrevalli with B=1,C=0), gaussian-esque.  */
	inline static public var STBIR_FILTER_CUBICBSPLINE:Int = 3;
/** An interpolating cubic spline.  */
	inline static public var STBIR_FILTER_CATMULLROM:Int = 4;
/** Mitchell-Netrevalli filter with B=1/3, C=1/3.  */
	inline static public var STBIR_FILTER_MITCHELL:Int = 5;
/** Colorspace.  */
	inline static public var STBIR_COLORSPACE_LINEAR:Int = 0;
/** Colorspace.  */
	inline static public var STBIR_COLORSPACE_SRGB:Int = 1;
/** Data type.  */
	inline static public var STBIR_TYPE_UINT8:Int = 0;
/** Data type.  */
	inline static public var STBIR_TYPE_UINT16:Int = 1;
/** Data type.  */
	inline static public var STBIR_TYPE_UINT32:Int = 2;
/** Data type.  */
	inline static public var STBIR_TYPE_FLOAT:Int = 3;
/** JNI method for {@link #stbir_resize_float_generic resize_float_generic}  */
	static public function nstbir_resize_float_generic(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int,alloc_context:haxe.Int64):Int;
/** JNI method for {@link #stbir_resize_uint8_generic resize_uint8_generic}  */
	static public function nstbir_resize_uint8_generic(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int,alloc_context:haxe.Int64):Int;
/** Alternative version of: {@link #stbir_resize resize}  */
/**
 * Full-complexity version of {@link #stbir_resize_uint8_generic resize_uint8_generic}.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param datatype               the image data type. One of:<br>{@link #STBIR_TYPE_UINT8 TYPE_UINT8}, {@link #STBIR_TYPE_UINT16 TYPE_UINT16}, {@link #STBIR_TYPE_UINT32 TYPE_UINT32}, {@link #STBIR_TYPE_FLOAT TYPE_FLOAT}
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 * @param edge_mode_horizontal   the horizontal edge wrap mode
 * @param edge_mode_vertical     the vertical edge wrap mode
 * @param filter_horizontal      the horizontal scale filter
 * @param filter_vertical        the vertical scale filter
 * @param space                  the image colorspace. One of:<br>{@link #STBIR_COLORSPACE_LINEAR COLORSPACE_LINEAR}, {@link #STBIR_COLORSPACE_SRGB COLORSPACE_SRGB}
 * @param alloc_context          pointer to the allocation context
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,alloc_context:java.nio.ByteBuffer):Int;
	@:overload(function (input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int):Int {})
/**
 * Easy-to-use API for resizing images.
 * <ul>
 * <li>The colorspace is linear.</li>
 * <li>The alpha channel is treated identically to other channels.</li>
 * <li>Memory required grows approximately linearly with input and output size, but with discontinuities at {@code input_w == output_w} and
 * {@code input_h == output_h}.</li>
 * </ul>
 * This function uses the default resampling filter defined at compile time. For a different filter, use the medium-complexity API.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_uint8(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int):Int;
/** Alternative version of: {@link #stbir_resize_float_generic resize_float_generic}  */
/**
 * Float version of {@link #stbir_resize_uint8_generic resize_uint8_generic}.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 * @param edge_wrap_mode         the edge wrap mode. One of:<br>{@link #STBIR_EDGE_CLAMP EDGE_CLAMP}, {@link #STBIR_EDGE_REFLECT EDGE_REFLECT}, {@link #STBIR_EDGE_WRAP EDGE_WRAP}, {@link #STBIR_EDGE_ZERO EDGE_ZERO}
 * @param filter                 the scale filter. One of:<br>{@link #STBIR_FILTER_DEFAULT FILTER_DEFAULT}, {@link #STBIR_FILTER_BOX FILTER_BOX}, {@link #STBIR_FILTER_TRIANGLE FILTER_TRIANGLE}, {@link #STBIR_FILTER_CUBICBSPLINE FILTER_CUBICBSPLINE}, {@link #STBIR_FILTER_CATMULLROM FILTER_CATMULLROM}, {@link #STBIR_FILTER_MITCHELL FILTER_MITCHELL}
 * @param space                  the image colorspace. One of:<br>{@link #STBIR_COLORSPACE_LINEAR COLORSPACE_LINEAR}, {@link #STBIR_COLORSPACE_SRGB COLORSPACE_SRGB}
 * @param alloc_context          pointer to the allocation context
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_float_generic(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int,alloc_context:java.nio.ByteBuffer):Int;
	@:overload(function (input_pixels:java.nio.FloatBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.FloatBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int):Int {})
/** JNI method for {@link #stbir_resize_uint8 resize_uint8}  */
	static public function nstbir_resize_uint8(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int):Int;
/** JNI method for {@link #stbir_resize_uint8_srgb resize_uint8_srgb}  */
	static public function nstbir_resize_uint8_srgb(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int):Int;
/** Alternative version of: {@link #stbir_resize_uint8_generic resize_uint8_generic}  */
/**
 * Medium-complexity version of {@link #stbir_resize_uint8 resize_uint8}.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 * @param edge_wrap_mode         the edge wrap mode. One of:<br>{@link #STBIR_EDGE_CLAMP EDGE_CLAMP}, {@link #STBIR_EDGE_REFLECT EDGE_REFLECT}, {@link #STBIR_EDGE_WRAP EDGE_WRAP}, {@link #STBIR_EDGE_ZERO EDGE_ZERO}
 * @param filter                 the scale filter. One of:<br>{@link #STBIR_FILTER_DEFAULT FILTER_DEFAULT}, {@link #STBIR_FILTER_BOX FILTER_BOX}, {@link #STBIR_FILTER_TRIANGLE FILTER_TRIANGLE}, {@link #STBIR_FILTER_CUBICBSPLINE FILTER_CUBICBSPLINE}, {@link #STBIR_FILTER_CATMULLROM FILTER_CATMULLROM}, {@link #STBIR_FILTER_MITCHELL FILTER_MITCHELL}
 * @param space                  the image colorspace. One of:<br>{@link #STBIR_COLORSPACE_LINEAR COLORSPACE_LINEAR}, {@link #STBIR_COLORSPACE_SRGB COLORSPACE_SRGB}
 * @param alloc_context          pointer to the allocation context
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_uint8_generic(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int,alloc_context:java.nio.ByteBuffer):Int;
	@:overload(function (input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int):Int {})
/** JNI method for {@link #stbir_resize_float resize_float}  */
	static public function nstbir_resize_float(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int):Int;
/** Alternative version of: {@link #stbir_resize_region resize_region}  */
/**
 * Region version of {@link #stbir_resize resize}, using texture coordinates.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param datatype               the image data type. One of:<br>{@link #STBIR_TYPE_UINT8 TYPE_UINT8}, {@link #STBIR_TYPE_UINT16 TYPE_UINT16}, {@link #STBIR_TYPE_UINT32 TYPE_UINT32}, {@link #STBIR_TYPE_FLOAT TYPE_FLOAT}
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 * @param edge_mode_horizontal   the horizontal edge wrap mode
 * @param edge_mode_vertical     the vertical edge wrap mode
 * @param filter_horizontal      the horizontal scale filter
 * @param filter_vertical        the vertical scale filter
 * @param space                  the image colorspace. One of:<br>{@link #STBIR_COLORSPACE_LINEAR COLORSPACE_LINEAR}, {@link #STBIR_COLORSPACE_SRGB COLORSPACE_SRGB}
 * @param alloc_context          pointer to the allocation context
 * @param s0                     the left texture coordinate of the region to scale
 * @param t0                     the top texture coordinate of the region to scale
 * @param s1                     the right texture coordinate of the region to scale
 * @param t1                     the bottom texture coordinate of the region to scale
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_region(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,alloc_context:java.nio.ByteBuffer,s0:Float,t0:Float,s1:Float,t1:Float):Int;
	@:overload(function (input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,s0:Float,t0:Float,s1:Float,t1:Float):Int {})
/**
 * Float version of {@link #stbir_resize_uint8 resize_uint8}.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 *
 * @return 1 on success, 0 on failure
 */
/** Alternative version of: {@link #stbir_resize_float resize_float}  */
	static public function stbir_resize_float(input_pixels:java.nio.FloatBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.FloatBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int):Int;
	@:overload(function (input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int):Int {})
/**
 * Easy-to-use API for resizing images.
 * <ul>
 * <li>The image data is interpreted as gamma-corrected sRGB.</li>
 * <li>Memory required grows approximately linearly with input and output size, but with discontinuities at {@code input_w == output_w} and
 * {@code input_h == output_h}.</li>
 * </ul>
 * This function uses the default resampling filter defined at compile time. For a different filter, use the medium-complexity API.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_uint8_srgb(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int):Int;
/** JNI method for {@link #stbir_resize_subpixel resize_subpixel}  */
	static public function nstbir_resize_subpixel(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,alloc_context:haxe.Int64,x_scale:Float,y_scale:Float,x_offset:Float,y_offset:Float):Int;
/** JNI method for {@link #stbir_resize_uint16_generic resize_uint16_generic}  */
	static public function nstbir_resize_uint16_generic(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int,alloc_context:haxe.Int64):Int;
/** JNI method for {@link #stbir_resize_uint8_srgb_edgemode resize_uint8_srgb_edgemode}  */
	static public function nstbir_resize_uint8_srgb_edgemode(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int):Int;
/**
 * Same as {@link #stbir_resize_uint8_srgb resize_uint8_srgb}, but adds the ability to specify how requests to sample off the edge of the image are handled.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 * @param edge_wrap_mode         the edge wrap mode. One of:<br>{@link #STBIR_EDGE_CLAMP EDGE_CLAMP}, {@link #STBIR_EDGE_REFLECT EDGE_REFLECT}, {@link #STBIR_EDGE_WRAP EDGE_WRAP}, {@link #STBIR_EDGE_ZERO EDGE_ZERO}
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_uint8_srgb_edgemode(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int):Int;
/** JNI method for {@link #stbir_resize resize}  */
	static public function nstbir_resize(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,alloc_context:haxe.Int64):Int;
/** Alternative version of: {@link #stbir_resize_uint16_generic resize_uint16_generic}  */
/**
 * Short version of {@link #stbir_resize_uint8_generic resize_uint8_generic}.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 * @param edge_wrap_mode         the edge wrap mode. One of:<br>{@link #STBIR_EDGE_CLAMP EDGE_CLAMP}, {@link #STBIR_EDGE_REFLECT EDGE_REFLECT}, {@link #STBIR_EDGE_WRAP EDGE_WRAP}, {@link #STBIR_EDGE_ZERO EDGE_ZERO}
 * @param filter                 the scale filter. One of:<br>{@link #STBIR_FILTER_DEFAULT FILTER_DEFAULT}, {@link #STBIR_FILTER_BOX FILTER_BOX}, {@link #STBIR_FILTER_TRIANGLE FILTER_TRIANGLE}, {@link #STBIR_FILTER_CUBICBSPLINE FILTER_CUBICBSPLINE}, {@link #STBIR_FILTER_CATMULLROM FILTER_CATMULLROM}, {@link #STBIR_FILTER_MITCHELL FILTER_MITCHELL}
 * @param space                  the image colorspace. One of:<br>{@link #STBIR_COLORSPACE_LINEAR COLORSPACE_LINEAR}, {@link #STBIR_COLORSPACE_SRGB COLORSPACE_SRGB}
 * @param alloc_context          pointer to the allocation context
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_uint16_generic(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int,alloc_context:java.nio.ByteBuffer):Int;
	@:overload(function (input_pixels:java.nio.ShortBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ShortBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_wrap_mode:Int,filter:Int,space:Int):Int {})
/** Alternative version of: {@link #stbir_resize_subpixel resize_subpixel}  */
/**
 * Subpixel version of {@link #stbir_resize resize}.
 *
 * @param input_pixels           the source image data
 * @param input_w                the source image width
 * @param input_h                the source image height
 * @param input_stride_in_bytes  the offset between successive rows of the source image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param output_pixels          returns the scaled image data
 * @param output_w               the resized image width
 * @param output_h               the resized image height
 * @param output_stride_in_bytes the offset between successive rows of the resized image data in memory, in bytes. You can specify 0 to mean packed continuously in memory
 * @param datatype               the image data type. One of:<br>{@link #STBIR_TYPE_UINT8 TYPE_UINT8}, {@link #STBIR_TYPE_UINT16 TYPE_UINT16}, {@link #STBIR_TYPE_UINT32 TYPE_UINT32}, {@link #STBIR_TYPE_FLOAT TYPE_FLOAT}
 * @param num_channels           the number of channels in the image (e.g. RGB=3, RGBA=4)
 * @param alpha_channel          the alpha channel index, or {@link #STBIR_ALPHA_CHANNEL_NONE ALPHA_CHANNEL_NONE} if there is no alpha channel
 * @param flags                  the alpha channel flags. 0 will propably do the right thing if you're not sure what the flags mean. One of:<br>{@link #STBIR_FLAG_ALPHA_PREMULTIPLIED FLAG_ALPHA_PREMULTIPLIED}, {@link #STBIR_FLAG_ALPHA_USES_COLORSPACE FLAG_ALPHA_USES_COLORSPACE}
 * @param edge_mode_horizontal   the horizontal edge wrap mode
 * @param edge_mode_vertical     the vertical edge wrap mode
 * @param filter_horizontal      the horizontal scale filter
 * @param filter_vertical        the vertical scale filter
 * @param space                  the image colorspace. One of:<br>{@link #STBIR_COLORSPACE_LINEAR COLORSPACE_LINEAR}, {@link #STBIR_COLORSPACE_SRGB COLORSPACE_SRGB}
 * @param alloc_context          pointer to the allocation context
 * @param x_scale                horizontal scale for subpixel correctness
 * @param y_scale                vertical scale for subpixel correctness
 * @param x_offset               horizontal offset for subpixel correctness
 * @param y_offset               vertical offset for subpixel correctness
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbir_resize_subpixel(input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,alloc_context:java.nio.ByteBuffer,x_scale:Float,y_scale:Float,x_offset:Float,y_offset:Float):Int;
	@:overload(function (input_pixels:java.nio.ByteBuffer,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:java.nio.ByteBuffer,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,x_scale:Float,y_scale:Float,x_offset:Float,y_offset:Float):Int {})
/** JNI method for {@link #stbir_resize_region resize_region}  */
	static public function nstbir_resize_region(input_pixels:haxe.Int64,input_w:Int,input_h:Int,input_stride_in_bytes:Int,output_pixels:haxe.Int64,output_w:Int,output_h:Int,output_stride_in_bytes:Int,datatype:Int,num_channels:Int,alpha_channel:Int,flags:Int,edge_mode_horizontal:Int,edge_mode_vertical:Int,filter_horizontal:Int,filter_vertical:Int,space:Int,alloc_context:haxe.Int64,s0:Float,t0:Float,s1:Float,t1:Float):Int;

}
