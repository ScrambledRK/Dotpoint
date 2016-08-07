package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBImage")
@:final
/**
 * Native bindings to stb_image.h from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <h3>Quick notes</h3>
 * 
 * <p>Primarily of interest to game developers and other people who can avoid problematic images and only need the trivial interface. Supported formats:
 * <ul>
 * <li>JPEG baseline & progressive (12 bpc/arithmetic not supported, same as stock IJG lib</li>
 * <li>PNG 1/2/4/8-bit-per-channel (16 bpc not supported)</li>
 * <li>TGA (not sure what subset, if a subset)</li>
 * <li>BMP non-1bpp, non-RLE</li>
 * <li>PSD (composited view only, no extra channels)</li>
 * <li>GIF (*comp always reports as 4-channel)</li>
 * <li>HDR (radiance rgbE format)</li>
 * <li>PIC (Softimage PIC)</li>
 * <li>PNM (PPM and PGM binary only)</li>
 * </ul>
 * Features:
 * <ul>
 * <li>decode from memory <s>or through FILE (define STBI_NO_STDIO to remove code)</s></li>
 * <li>decode from arbitrary I/O callbacks</li>
 * <li>SIMD acceleration on x86/x64 (SSE2) and ARM (NEON)</li>
 * </ul></p>
 * 
 * <p>Limitations:
 * <ul>
 * <li>no 16-bit-per-channel PNG</li>
 * <li>no 12-bit-per-channel JPEG</li>
 * <li>no JPEGs with arithmetic coding</li>
 * <li>no 1-bit BMP</li>
 * <li>GIF always returns *comp=4</li>
 * </ul></p>
 * 
 * <p>Basic usage (see HDR discussion below for HDR usage):
 * <pre><code style="font-family: monospace">
 * int x,y,n;
 * unsigned char *data = stbi_load(filename, &x, &y, &n, 0);
 * // ... process data if not NULL ...
 * // ... x = width, y = height, n = # 8-bit components per pixel ...
 * // ... replace '0' with '1'..'4' to force that many components per pixel
 * // ... but 'n' will always be the number that it would have been if you said 0
 * stbi_image_free(data)</code></pre></p>
 * 
 * <h3>HDR image support</h3>
 * 
 * <p>stb_image now supports loading HDR images in general, and currently the Radiance .HDR file format, although the support is provided generically. You
 * can still load any file through the existing interface; if you attempt to load an HDR file, it will be automatically remapped to LDR, assuming gamma
 * 2.2 and an arbitrary scale factor defaulting to 1; both of these constants can be reconfigured through this interface:
 * <pre><code style="font-family: monospace">
 * stbi_hdr_to_ldr_gamma(2.2f);
 * stbi_hdr_to_ldr_scale(1.0f);</code></pre>
 * (note, do not use <em>inverse</em> constants; stbi_image will invert them appropriately).</p>
 * 
 * <p>Additionally, there is a new, parallel interface for loading files as (linear) floats to preserve the full dynamic range:
 * <pre><code style="font-family: monospace">
 * float *data = stbi_loadf(filename, &x, &y, &n, 0);</code></pre>
 * If you load LDR images through this interface, those images will be promoted to floating point values, run through the inverse of constants
 * corresponding to the above:
 * <pre><code style="font-family: monospace">
 * stbi_ldr_to_hdr_scale(1.0f);
 * stbi_ldr_to_hdr_gamma(2.2f);</code></pre>
 * Finally, given a filename (or an open file or memory block) containing image data, you can query for the "most appropriate" interface to use (that is,
 * whether the image is HDR or not), using:
 * <pre><code style="font-family: monospace">
 * stbi_is_hdr(char *filename);</code></pre></p>
 * 
 * <h3>iPhone PNG support</h3>
 * By default we convert iphone-formatted PNGs back to RGB, even though they are internally encoded differently. You can disable this conversion by
 * calling {@link #stbi_convert_iphone_png_to_rgb convert_iphone_png_to_rgb}(0), in which case you will always just get the native iphone "format" through (which is BGR stored in RGB).
 * 
 * <p>Call {@link #stbi_set_unpremultiply_on_load set_unpremultiply_on_load}(1) as well to force a divide per pixel to remove any premultiplied alpha *only* if the image file explicitly says
 * there's premultiplied data (currently only happens in iPhone images, and only if iPhone convert-to-rgb processing is on).</p>
 */
extern class STBImage 
{
/**
 * Changes the gamma value used when converting LDR images to HDR. The default value is 2.2f
 *
 * @param scale the scale factor
 */
	static public function stbi_ldr_to_hdr_scale(scale:Float):Void;
/** JNI method for {@link #stbi_loadf_from_memory loadf_from_memory}  */
	static public function nstbi_loadf_from_memory(buffer:haxe.Int64,len:Int,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64,req_comp:Int):haxe.Int64;
/** JNI method for {@link #stbi_zlib_decode_noheader_malloc zlib_decode_noheader_malloc}  */
	static public function nstbi_zlib_decode_noheader_malloc(buffer:haxe.Int64,len:Int,outlen:haxe.Int64):haxe.Int64;
/** JNI method for {@link #stbi_info_from_memory info_from_memory}  */
	static public function nstbi_info_from_memory(buffer:haxe.Int64,len:Int,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64):Int;
/** JNI method for {@link #stbi_zlib_decode_noheader_buffer zlib_decode_noheader_buffer}  */
	static public function nstbi_zlib_decode_noheader_buffer(obuffer:haxe.Int64,olen:Int,ibuffer:haxe.Int64,ilen:Int):Int;
/** Returns a brief reason for failure.  */
	static public function stbi_failure_reason():String;
/**
 * Indicate whether we should process iPhone images back to canonical format, or just pass them through "as-is".
 *
 * @param flag_true_if_should_convert the convert iPhone PNG to RGB flag
 */
	static public function stbi_convert_iphone_png_to_rgb(flag_true_if_should_convert:Int):Void;
/** JNI method for {@link #stbi_zlib_decode_malloc_guesssize_headerflag zlib_decode_malloc_guesssize_headerflag}  */
	static public function nstbi_zlib_decode_malloc_guesssize_headerflag(buffer:haxe.Int64,len:Int,initial_size:Int,outlen:haxe.Int64,parse_header:Int):haxe.Int64;
/**
 * Changes the gamma value used when converting LDR images to HDR. The default value is 2.2f
 *
 * @param gamma the gamma value
 */
	static public function stbi_ldr_to_hdr_gamma(gamma:Float):Void;
/**
 * Creates a {@link STBIReadCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link STBIReadCallback} instance
 */
	static public function STBIReadCallback(sam:org.lwjgl.stb.STBIReadCallback_SAM):org.lwjgl.stb.STBIReadCallback;
/** Alternative version of: {@link #stbi_loadf_from_memory loadf_from_memory}  */
/**
 * Floating-point version of {@link #stbi_load_from_memory load_from_memory}.
 *
 * @param buffer   the buffer from which to load the image data
 * @param len      the buffer length, in bytes
 * @param x        outputs the image width in pixels
 * @param y        outputs the image height in pixels
 * @param comp     outputs number of components in image
 * @param req_comp 0 or 1..4 to force that many components per pixel. One of:<br>0, 1, 2, 3, 4
 */
	static public function stbi_loadf_from_memory(buffer:java.nio.ByteBuffer,len:Int,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer,req_comp:Int):java.nio.FloatBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.FloatBuffer {})
/** CharSequence version of: {@link #stbi_info info}  */
/** Alternative version of: {@link #stbi_info info}  */
/**
 * Returns image dimensions &amp; components without fully decoding the image.
 *
 * @param filename the file name
 * @param x        outputs the image width in pixels
 * @param y        outputs the image height in pixels
 * @param comp     outputs number of components in image
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbi_info(filename:java.nio.ByteBuffer,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer):Int;
	@:overload(function (filename:java.lang.CharSequence,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer):Int {})
	@:overload(function (filename:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer):Int {})
/** Alternative version of: {@link #stbi_load_from_callbacks load_from_callbacks}  */
/**
 * Callback version of {@link #stbi_load load}.
 * 
 * <p>I/O callbacks allow you to read from arbitrary sources, like packaged files or some other source. Data read from callbacks are processed through a
 * small internal buffer (currently 128 bytes) to try to reduce overhead.</p>
 * 
 * <p>The three functions you must define are "read" (reads some bytes of data), "skip" (skips some bytes of data), "eof" (reports if the stream is at the
 * end).</p>
 *
 * @param clbk     an {@link STBIIOCallbacks} struct
 * @param user     a pointer to user data
 * @param x        outputs the image width in pixels
 * @param y        outputs the image height in pixels
 * @param comp     outputs number of components in image
 * @param req_comp 0 or 1..4 to force that many components per pixel. One of:<br>0, 1, 2, 3, 4
 */
	static public function stbi_load_from_callbacks(clbk:java.nio.ByteBuffer,user:java.nio.ByteBuffer,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer,req_comp:Int):java.nio.ByteBuffer;
	@:overload(function (clbk:java.nio.ByteBuffer,user:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.ByteBuffer {})
/**
 * Creates a {@link STBIEOFCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link STBIEOFCallback} instance
 */
	static public function STBIEOFCallback(sam:org.lwjgl.stb.STBIEOFCallback_SAM):org.lwjgl.stb.STBIEOFCallback;
/** Alternative version of: {@link #stbi_zlib_decode_malloc_guesssize zlib_decode_malloc_guesssize}  */
/**
 * ZLIB client - used by PNG, available for other purposes
 *
 * @param buffer       
 * @param len          
 * @param initial_size 
 */
	static public function stbi_zlib_decode_malloc_guesssize(buffer:java.nio.ByteBuffer,len:Int,initial_size:Int):java.nio.ByteBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer,initial_size:Int):java.nio.ByteBuffer {})
/** Alternative version of: {@link #stbi_zlib_decode_buffer zlib_decode_buffer}  */
/**
 * ZLIB client - used by PNG, available for other purposes
 *
 * @param obuffer 
 * @param olen    
 * @param ibuffer 
 * @param ilen    
 */
	static public function stbi_zlib_decode_buffer(obuffer:java.nio.ByteBuffer,olen:Int,ibuffer:java.nio.ByteBuffer,ilen:Int):Int;
	@:overload(function (obuffer:java.nio.ByteBuffer,ibuffer:java.nio.ByteBuffer):Int {})
/** Alternative version of: {@link #stbi_loadf_from_callbacks loadf_from_callbacks}  */
/**
 * Floating-point version of {@link #stbi_load_from_callbacks load_from_callbacks}.
 *
 * @param clbk     an {@link STBIIOCallbacks} struct
 * @param user     a pointer to user data
 * @param x        outputs the image width in pixels
 * @param y        outputs the image height in pixels
 * @param comp     outputs number of components in image
 * @param req_comp 0 or 1..4 to force that many components per pixel. One of:<br>0, 1, 2, 3, 4
 */
	static public function stbi_loadf_from_callbacks(clbk:java.nio.ByteBuffer,user:java.nio.ByteBuffer,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer,req_comp:Int):java.nio.FloatBuffer;
	@:overload(function (clbk:java.nio.ByteBuffer,user:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.FloatBuffer {})
/** JNI method for {@link #stbi_zlib_decode_buffer zlib_decode_buffer}  */
	static public function nstbi_zlib_decode_buffer(obuffer:haxe.Int64,olen:Int,ibuffer:haxe.Int64,ilen:Int):Int;
/** CharSequence version of: {@link #stbi_is_hdr is_hdr}  */
/**
 * Checks if the specified file contains an HDR image.
 *
 * @param filename the file name
 *
 * @return 1 if the image is HDR, 0 otherwise
 */
	static public function stbi_is_hdr(filename:java.nio.ByteBuffer):Int;
	@:overload(function (filename:java.lang.CharSequence):Int {})
/** JNI method for {@link #stbi_info_from_callbacks info_from_callbacks}  */
	static public function nstbi_info_from_callbacks(clbk:haxe.Int64,user:haxe.Int64,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64):Int;
/** JNI method for {@link #stbi_load load}  */
	static public function nstbi_load(filename:haxe.Int64,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64,req_comp:Int):haxe.Int64;
/** JNI method for {@link #stbi_loadf loadf}  */
	static public function nstbi_loadf(filename:haxe.Int64,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64,req_comp:Int):haxe.Int64;
/** JNI method for {@link #stbi_image_free image_free}  */
	static public function nstbi_image_free(retval_from_stbi_load:haxe.Int64):Void;
/**
 * Changes the scale factor used when converting HDR images to LDR. The default value is 1.0f
 *
 * @param scale the scale factor
 */
	static public function stbi_hdr_to_ldr_scale(scale:Float):Void;
/** Alternative version of: {@link #stbi_zlib_decode_noheader_malloc zlib_decode_noheader_malloc}  */
/**
 * ZLIB client - used by PNG, available for other purposes
 *
 * @param buffer 
 * @param len    
 */
	static public function stbi_zlib_decode_noheader_malloc(buffer:java.nio.ByteBuffer,len:Int):java.nio.ByteBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/**
 * Changes the gamma value used when converting HDR images to LDR. The default value is 2.2f
 *
 * @param gamma the gamma value
 */
	static public function stbi_hdr_to_ldr_gamma(gamma:Float):Void;
/**
 * Creates a {@link STBISkipCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link STBISkipCallback} instance
 */
	static public function STBISkipCallback(sam:org.lwjgl.stb.STBISkipCallback_SAM):org.lwjgl.stb.STBISkipCallback;
/** JNI method for {@link #stbi_zlib_decode_malloc_guesssize zlib_decode_malloc_guesssize}  */
	static public function nstbi_zlib_decode_malloc_guesssize(buffer:haxe.Int64,len:Int,initial_size:Int,outlen:haxe.Int64):haxe.Int64;
/**
 * For image formats that explicitly notate that they have premultiplied alpha, we just return the colors as stored in the file. Set this flag to force
 * unpremultiplication. Results are undefined if the unpremultiply overflows.
 *
 * @param flag_true_if_should_unpremultiply the unpremultiply flag
 */
	static public function stbi_set_unpremultiply_on_load(flag_true_if_should_unpremultiply:Int):Void;
/** CharSequence version of: {@link #stbi_loadf loadf}  */
/** Alternative version of: {@link #stbi_loadf loadf}  */
/**
 * Floating-point version of {@link #stbi_load load}.
 *
 * @param filename the file name
 * @param x        outputs the image width in pixels
 * @param y        outputs the image height in pixels
 * @param comp     outputs number of components in image
 * @param req_comp 0 or 1..4 to force that many components per pixel. One of:<br>0, 1, 2, 3, 4
 */
	static public function stbi_loadf(filename:java.nio.ByteBuffer,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer,req_comp:Int):java.nio.FloatBuffer;
	@:overload(function (filename:java.lang.CharSequence,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.FloatBuffer {})
	@:overload(function (filename:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.FloatBuffer {})
/** JNI method for {@link #stbi_failure_reason failure_reason}  */
	static public function nstbi_failure_reason():haxe.Int64;
/** Alternative version of: {@link #stbi_zlib_decode_noheader_buffer zlib_decode_noheader_buffer}  */
/**
 * ZLIB client - used by PNG, available for other purposes
 *
 * @param obuffer 
 * @param olen    
 * @param ibuffer 
 * @param ilen    
 */
	static public function stbi_zlib_decode_noheader_buffer(obuffer:java.nio.ByteBuffer,olen:Int,ibuffer:java.nio.ByteBuffer,ilen:Int):Int;
	@:overload(function (obuffer:java.nio.ByteBuffer,ibuffer:java.nio.ByteBuffer):Int {})
/** Alternative version of: {@link #stbi_load_from_memory load_from_memory}  */
/**
 * In-memory version of {@link #stbi_load load}.
 *
 * @param buffer   the buffer from which to load the image data
 * @param len      the buffer length, in bytes
 * @param x        outputs the image width in pixels
 * @param y        outputs the image height in pixels
 * @param comp     outputs number of components in image
 * @param req_comp 0 or 1..4 to force that many components per pixel. One of:<br>0, 1, 2, 3, 4
 */
	static public function stbi_load_from_memory(buffer:java.nio.ByteBuffer,len:Int,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer,req_comp:Int):java.nio.ByteBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.ByteBuffer {})
/** JNI method for {@link #stbi_is_hdr_from_callbacks is_hdr_from_callbacks}  */
	static public function nstbi_is_hdr_from_callbacks(clbk:haxe.Int64,user:haxe.Int64):Int;
/** JNI method for {@link #stbi_load_from_memory load_from_memory}  */
	static public function nstbi_load_from_memory(buffer:haxe.Int64,len:Int,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64,req_comp:Int):haxe.Int64;
/** CharSequence version of: {@link #stbi_load load}  */
/** Alternative version of: {@link #stbi_load load}  */
/**
 * Loads an image from the specified file.
 * 
 * <p>The return value from an image loader is an {@code 'unsigned char *'} which points to the pixel data, or {@code NULL} on an allocation failure or if the image
 * is corrupt or invalid. The pixel data consists of {@code *y} scanlines of {@code *x} pixels, with each pixel consisting of N interleaved 8-bit
 * components; the first pixel pointed to is top-left-most in the image. There is no padding between image scanlines or between pixels, regardless of
 * format. The number of components N is {@code 'req_comp'} if {@code req_comp} is non-zero, or {@code *comp} otherwise. If {@code req_comp} is non-zero,
 * {@code *comp} has the number of components that <i>would</i> have been output otherwise. E.g. if you set {@code req_comp} to 4, you will always get
 * RGBA output, but you can check {@code *comp} to see if it's trivially opaque because e.g. there were only 3 channels in the source image.</p>
 * 
 * <p>An output image with N components has the following components interleaved in this order in each pixel:
 * <pre><code style="font-family: monospace">
 * N=#comp     components
 *   1           grey
 *   2           grey, alpha
 *   3           red, green, blue
 *   4           red, green, blue, alpha</code></pre>
 * If image loading fails for any reason, the return value will be {@code NULL}, and {@code *x}, {@code *y}, {@code *comp} will be unchanged. The function
 * {@link #stbi_failure_reason failure_reason} can be queried for an extremely brief, end-user unfriendly explanation of why the load failed.</p>
 * 
 * <p>Paletted PNG, BMP, GIF, and PIC images are automatically depalettized.</p>
 *
 * @param filename the file name
 * @param x        outputs the image width in pixels
 * @param y        outputs the image height in pixels
 * @param comp     outputs number of components in image
 * @param req_comp 0 or 1..4 to force that many components per pixel. One of:<br>0, 1, 2, 3, 4
 */
	static public function stbi_load(filename:java.nio.ByteBuffer,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer,req_comp:Int):java.nio.ByteBuffer;
	@:overload(function (filename:java.lang.CharSequence,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.ByteBuffer {})
	@:overload(function (filename:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer,req_comp:Int):java.nio.ByteBuffer {})
/** Alternative version of: {@link #stbi_is_hdr_from_memory is_hdr_from_memory}  */
/**
 * In-memory version of {@link #stbi_is_hdr is_hdr}.
 *
 * @param buffer the buffer from which to read the image data
 * @param len    the buffer length, in bytes
 */
	static public function stbi_is_hdr_from_memory(buffer:java.nio.ByteBuffer,len:Int):Int;
	@:overload(function (buffer:java.nio.ByteBuffer):Int {})
/**
 * Callback version of {@link #stbi_is_hdr is_hdr}.
 *
 * @param clbk an {@link STBIIOCallbacks} struct
 * @param user a pointer to user data
 */
	static public function stbi_is_hdr_from_callbacks(clbk:java.nio.ByteBuffer,user:java.nio.ByteBuffer):Int;
/** JNI method for {@link #stbi_info info}  */
	static public function nstbi_info(filename:haxe.Int64,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64):Int;
/** Alternative version of: {@link #stbi_info_from_callbacks info_from_callbacks}  */
/**
 * Callback version of {@link #stbi_info info}.
 *
 * @param clbk an {@link STBIIOCallbacks} struct
 * @param user a pointer to user data
 * @param x    outputs the image width in pixels
 * @param y    outputs the image height in pixels
 * @param comp outputs number of components in image
 */
	static public function stbi_info_from_callbacks(clbk:java.nio.ByteBuffer,user:java.nio.ByteBuffer,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer):Int;
	@:overload(function (clbk:java.nio.ByteBuffer,user:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer):Int {})
/** Alternative version of: {@link #stbi_zlib_decode_malloc_guesssize_headerflag zlib_decode_malloc_guesssize_headerflag}  */
/**
 * ZLIB client - used by PNG, available for other purposes
 *
 * @param buffer       
 * @param len          
 * @param initial_size 
 * @param parse_header 
 */
	static public function stbi_zlib_decode_malloc_guesssize_headerflag(buffer:java.nio.ByteBuffer,len:Int,initial_size:Int,parse_header:Int):java.nio.ByteBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer,initial_size:Int,parse_header:Int):java.nio.ByteBuffer {})
/**
 * Frees a loaded image
 *
 * @param retval_from_stbi_load an stb image
 */
	static public function stbi_image_free(retval_from_stbi_load:java.nio.ByteBuffer):Void;
/** JNI method for {@link #stbi_is_hdr is_hdr}  */
	static public function nstbi_is_hdr(filename:haxe.Int64):Int;
/** Alternative version of: {@link #stbi_zlib_decode_malloc zlib_decode_malloc}  */
/**
 * ZLIB client - used by PNG, available for other purposes
 *
 * @param buffer 
 * @param len    
 */
	static public function stbi_zlib_decode_malloc(buffer:java.nio.ByteBuffer,len:Int):java.nio.ByteBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/** Alternative version of: {@link #stbi_info_from_memory info_from_memory}  */
/**
 * In-memory version of {@link #stbi_info info}.
 *
 * @param buffer the buffer from which to read the image data
 * @param len    the buffer length, in bytes
 * @param x      outputs the image width in pixels
 * @param y      outputs the image height in pixels
 * @param comp   outputs number of components in image
 */
	static public function stbi_info_from_memory(buffer:java.nio.ByteBuffer,len:Int,x:java.nio.ByteBuffer,y:java.nio.ByteBuffer,comp:java.nio.ByteBuffer):Int;
	@:overload(function (buffer:java.nio.ByteBuffer,x:java.nio.IntBuffer,y:java.nio.IntBuffer,comp:java.nio.IntBuffer):Int {})
/** JNI method for {@link #stbi_zlib_decode_malloc zlib_decode_malloc}  */
	static public function nstbi_zlib_decode_malloc(buffer:haxe.Int64,len:Int,outlen:haxe.Int64):haxe.Int64;
/** JNI method for {@link #stbi_is_hdr_from_memory is_hdr_from_memory}  */
	static public function nstbi_is_hdr_from_memory(buffer:haxe.Int64,len:Int):Int;
/** JNI method for {@link #stbi_loadf_from_callbacks loadf_from_callbacks}  */
	static public function nstbi_loadf_from_callbacks(clbk:haxe.Int64,user:haxe.Int64,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64,req_comp:Int):haxe.Int64;
/**
 * Flips the image vertically, so the first pixel in the output array is the bottom left.
 *
 * @param flag_true_if_should_flip the flip vertically on load flag
 */
	static public function stbi_set_flip_vertically_on_load(flag_true_if_should_flip:Int):Void;
/** JNI method for {@link #stbi_load_from_callbacks load_from_callbacks}  */
	static public function nstbi_load_from_callbacks(clbk:haxe.Int64,user:haxe.Int64,x:haxe.Int64,y:haxe.Int64,comp:haxe.Int64,req_comp:Int):haxe.Int64;

}
