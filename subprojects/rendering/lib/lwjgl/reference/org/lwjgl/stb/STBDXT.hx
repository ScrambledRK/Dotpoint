package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBDXT")
@:final
/**
 * Native bindings to stb_dxt.h from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <p>DXT1/DXT5 compressor.</p>
 */
extern class STBDXT 
{
	inline static public var STB_DXT_NORMAL:Int = 0;
/** Use dithering. Dubious win, never use for normal maps and the like!  */
	inline static public var STB_DXT_DITHER:Int = 1;
/** High quality mode, does two refinement steps instead of 1. ~30-40% slower.  */
	inline static public var STB_DXT_HIGHQUAL:Int = 2;
/**
 * Call this function for every block (you must pad). The source should be a 4x4 block of RGBA data in row-major order; A is ignored if you specify
 * {@code alpha=0}; you can turn on dithering and "high quality" using {@code mode}.
 *
 * @param dest  a buffer in which to store the compressed block
 * @param src   the block to compress
 * @param alpha 1 to compress the alpha channel, 0 to ignore it
 * @param mode  the compression mode. One of:<br>{@link #STB_DXT_NORMAL DXT_NORMAL}, {@link #STB_DXT_DITHER DXT_DITHER}, {@link #STB_DXT_HIGHQUAL DXT_HIGHQUAL}
 */
	static public function stb_compress_dxt_block(dest:java.nio.ByteBuffer,src:java.nio.ByteBuffer,alpha:Int,mode:Int):Void;
/** JNI method for {@link #stb_compress_dxt_block compress_dxt_block}  */
	static public function nstb_compress_dxt_block(dest:haxe.Int64,src:haxe.Int64,alpha:Int,mode:Int):Void;

}
