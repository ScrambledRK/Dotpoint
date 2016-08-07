package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBImageWrite")
@:final
/**
 * Native bindings to stb_image_write.h from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <h3>ABOUT</h3>
 * 
 * <p>This header file is a library for writing images to C stdio.</p>
 * 
 * <p>The PNG output is not optimal; it is 20-50% larger than the file written by a decent optimizing implementation. This library is designed for source
 * code compactness and simplicitly, not optimal image file size or run-time performance.</p>
 * 
 * <h3>USAGE</h3>
 * 
 * <p>There are four functions, one for each image file format:
 * <pre><code style="font-family: monospace">
 * int stbi_write_png(char const *filename, int w, int h, int comp, const void *data, int stride_in_bytes);
 * int stbi_write_bmp(char const *filename, int w, int h, int comp, const void *data);
 * int stbi_write_tga(char const *filename, int w, int h, int comp, const void *data);
 * int stbi_write_hdr(char const *filename, int w, int h, int comp, const void *data);</code></pre>
 * The functions create an image file defined by the parameters. The image is a rectangle of pixels stored from left-to-right, top-to-bottom. Each pixel
 * contains {@code comp} channels of data stored interleaved with 8-bits per channel, in the following order: 1=Y, 2=YA, 3=RGB, 4=RGBA. (Y is monochrome
 * color.) The rectangle is {@code w} pixels wide and {@code h} pixels tall. The {@code *data} pointer points to the first byte of the top-left-most
 * pixel.</p>
 */
extern class STBImageWrite 
{
/** CharSequence version of: {@link #stbi_write_png write_png}  */
/**
 * Writes a PNR image file.
 * 
 * <p>PNG creates output files with the same number of components as the input.</p>
 * 
 * <p>PNG supports writing rectangles of data even when the bytes storing rows of data are not consecutive in memory (e.g. sub-rectangles of a larger image),
 * by supplying the stride between the beginning of adjacent rows. The other formats do not. (Thus you cannot write a native-format BMP through the BMP
 * writer, both because it is in BGR order and because it may have padding at the end of the line.)</p>
 *
 * @param filename        the image file path
 * @param w               the image width, in pixels
 * @param h               the image height, in pixels
 * @param comp            the number of channels in each pixel
 * @param data            the image data
 * @param stride_in_bytes the distance in bytes from the first byte of a row of pixels to the first byte of the next row of pixels
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbi_write_png(filename:java.nio.ByteBuffer,w:Int,h:Int,comp:Int,data:java.nio.ByteBuffer,stride_in_bytes:Int):Int;
	@:overload(function (filename:java.lang.CharSequence,w:Int,h:Int,comp:Int,data:java.nio.ByteBuffer,stride_in_bytes:Int):Int {})
/** JNI method for {@link #stbi_write_hdr write_hdr}  */
	static public function nstbi_write_hdr(filename:haxe.Int64,w:Int,h:Int,comp:Int,data:haxe.Int64):Int;
/** JNI method for {@link #stbi_write_bmp write_bmp}  */
	static public function nstbi_write_bmp(filename:haxe.Int64,w:Int,h:Int,comp:Int,data:haxe.Int64):Int;
/** CharSequence version of: {@link #stbi_write_tga write_tga}  */
/**
 * Writes a TGA image file.
 *
 * @param filename the image file path
 * @param w        the image width, in pixels
 * @param h        the image height, in pixels
 * @param comp     the number of channels in each pixel
 * @param data     the image data
 */
	static public function stbi_write_tga(filename:java.nio.ByteBuffer,w:Int,h:Int,comp:Int,data:java.nio.ByteBuffer):Int;
	@:overload(function (filename:java.lang.CharSequence,w:Int,h:Int,comp:Int,data:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #stbi_write_png write_png}  */
	static public function nstbi_write_png(filename:haxe.Int64,w:Int,h:Int,comp:Int,data:haxe.Int64,stride_in_bytes:Int):Int;
/** CharSequence version of: {@link #stbi_write_bmp write_bmp}  */
/**
 * Writes a BMP image file.
 * 
 * <p>The BMP format expands Y to RGB in the file format and does not output alpha.</p>
 *
 * @param filename the image file path
 * @param w        the image width, in pixels
 * @param h        the image height, in pixels
 * @param comp     the number of channels in each pixel
 * @param data     the image data
 */
	static public function stbi_write_bmp(filename:java.nio.ByteBuffer,w:Int,h:Int,comp:Int,data:java.nio.ByteBuffer):Int;
	@:overload(function (filename:java.lang.CharSequence,w:Int,h:Int,comp:Int,data:java.nio.ByteBuffer):Int {})
/** CharSequence version of: {@link #stbi_write_hdr write_hdr}  */
/** Alternative version of: {@link #stbi_write_hdr write_hdr}  */
/**
 * Writes an HDR image file.
 * 
 * <p>HDR expects linear float data. Since the format is always 32-bit rgb(e) data, alpha (if provided) is discarded, and for monochrome data it is
 * replicated across all three channels.</p>
 *
 * @param filename the image file path
 * @param w        the image width, in pixels
 * @param h        the image height, in pixels
 * @param comp     the number of channels in each pixel
 * @param data     the image data
 */
	static public function stbi_write_hdr(filename:java.nio.ByteBuffer,w:Int,h:Int,comp:Int,data:java.nio.ByteBuffer):Int;
	@:overload(function (filename:java.lang.CharSequence,w:Int,h:Int,comp:Int,data:java.nio.FloatBuffer):Int {})
	@:overload(function (filename:java.nio.ByteBuffer,w:Int,h:Int,comp:Int,data:java.nio.FloatBuffer):Int {})
/** JNI method for {@link #stbi_write_tga write_tga}  */
	static public function nstbi_write_tga(filename:haxe.Int64,w:Int,h:Int,comp:Int,data:haxe.Int64):Int;

}
