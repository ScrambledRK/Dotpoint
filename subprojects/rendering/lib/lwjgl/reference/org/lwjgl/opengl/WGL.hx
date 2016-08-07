package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGL")
@:final
/** Native bindings to WGL functionality.  */
extern class WGL 
{
/** UseFontOutlines format.  */
	inline static public var WGL_FONT_LINES:Int = 0;
/** UseFontOutlines format.  */
	inline static public var WGL_FONT_POLYGONS:Int = 1;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_MAIN_PLANE:Int = 1;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY1:Int = 2;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY2:Int = 4;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY3:Int = 8;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY4:Int = 16;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY5:Int = 32;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY6:Int = 64;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY7:Int = 128;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY8:Int = 256;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY9:Int = 512;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY10:Int = 1024;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY11:Int = 2048;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY12:Int = 4096;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY13:Int = 8192;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY14:Int = 16384;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_OVERLAY15:Int = 32768;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY1:Int = 65536;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY2:Int = 131072;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY3:Int = 262144;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY4:Int = 524288;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY5:Int = 1048576;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY6:Int = 2097152;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY7:Int = 4194304;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY8:Int = 8388608;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY9:Int = 16777216;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY10:Int = 33554432;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY11:Int = 67108864;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY12:Int = 134217728;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY13:Int = 268435456;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY14:Int = 536870912;
/** SwapLayerBuffers flags.  */
	inline static public var WGL_SWAP_UNDERLAY15:Int = 1073741824;
/**
 * Deletes a specified OpenGL rendering context.
 *
 * @param context handle to an OpenGL rendering context that the function will delete
 */
	static public function wglDeleteContext(context:haxe.Int64):Int;
/** JNI method for {@link #wglGetProcAddress GetProcAddress}  */
	static public function nwglGetProcAddress(proc:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #wglGetProcAddress GetProcAddress}  */
/**
 * Returns the address of an OpenGL extension function for use with the current OpenGL rendering context.
 *
 * @param proc points to a null-terminated string that is the name of the extension function. The name of the extension function must be identical to a
 *             corresponding function implemented by OpenGL.
 */
	static public function wglGetProcAddress(proc:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (proc:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #wglCreateContext CreateContext}  */
	static public function nwglCreateContext(hdc:haxe.Int64):haxe.Int64;
/** JNI method for {@link #wglCopyContext CopyContext}  */
	static public function nwglCopyContext(src:haxe.Int64,dst:haxe.Int64,mask:Int):Int;
/**
 * Creates a new OpenGL rendering context for drawing to a specified layer plane on a device context.
 *
 * @param hdc        the device context for a new rendering context
 * @param layerPlane the layer plane to which you want to bind a rendering context. The value 0 identifies the main plane. Positive values of {@code layerPlace} identify
 *                   overlay planes, where 1 is the first overlay plane over the main plane, 2 is the second overlay plane over the first overlay plane, and so on.
 *                   Negative values identify underlay planes, where 1 is the first underlay plane under the main plane, 2 is the second underlay plane under the first
 *                   underlay plane, and so on. The number of overlay and underlay planes is given in the {@code reserved} member of the {@link PIXELFORMATDESCRIPTOR}
 *                   structure.
 */
	static public function wglCreateLayerContext(hdc:haxe.Int64,layerPlane:Int):haxe.Int64;
/** JNI method for {@link #wglDeleteContext DeleteContext}  */
	static public function nwglDeleteContext(context:haxe.Int64):Int;
/** Obtains a handle to the device context that is associated with the current OpenGL rendering context of the calling thread.  */
	static public function wglGetCurrentDC():haxe.Int64;
/**
 * Creates a new OpenGL rendering context, which is suitable for drawing on the device referenced by device. The rendering context has the same pixel
 * format as the device context.
 *
 * @param hdc handle to a device context for which the function creates a suitable OpenGL rendering context
 */
	static public function wglCreateContext(hdc:haxe.Int64):haxe.Int64;
/** Obtains a handle to the current OpenGL rendering context of the calling thread.  */
	static public function wglGetCurrentContext():haxe.Int64;
/**
 * Creates a set of display lists, one for each glyph of the currently selected outline font of a device context, for use with the current rendering
 * context. The display lists are used to draw 3-D characters of TrueType fonts. Each display list describes a glyph outline in floating-point coordinates.
 * 
 * <p>The run of glyphs begins with thefirstglyph of the font of the specified device context. The em square size of the font, the notional grid size of the
 * original font outline from which the font is fitted, is mapped to 1.0 in the x- and y-coordinates in the display lists. The extrusion parameter sets how
 * much depth the font has in the z direction.</p>
 * 
 * <p>The glyphMetrics parameter returns a {@link GLYPHMETRICSFLOAT} structure that contains information about the placement and orientation of each glyph in
 * a character cell.</p>
 *
 * @param hdc          the device context with the desired outline font. The outline font of {@code dc} is used to create the display lists in the current rendering
 *                     context.
 * @param first        the first of the set of glyphs that form the font outline display lists
 * @param count        the number of glyphs in the set of glyphs used to form the font outline display lists. The {@code wglUseFontOutlines} function creates count display
 *                     lists, one display list for each glyph in a set of glyphs.
 * @param listBase     the starting display list
 * @param deviation    the maximum chordal deviation from the original outlines. When deviation is zero, the chordal deviation is equivalent to one design unit of the
 *                     original font. The value of deviation must be equal to or greater than 0.
 * @param extrusion    how much a font is extruded in the negative z direction. The value must be equal to or greater than 0. When extrusion is 0, the display lists are
 *                     not extruded.
 * @param format       the format to use in the display lists. When format is {@link #WGL_FONT_LINES FONT_LINES}, the {@code wglUseFontOutlines} function creates fonts with line
 *                     segments. When format is {@link #WGL_FONT_POLYGONS FONT_POLYGONS}, {@code wglUseFontOutlines} creates fonts with polygons. One of:<br>{@link #WGL_FONT_LINES FONT_LINES}, {@link #WGL_FONT_POLYGONS FONT_POLYGONS}
 * @param glyphMetrics an array of {@code count} {@link GLYPHMETRICSFLOAT} structures that is to receive the metrics of the glyphs. When {@code glyphMetrics} is {@code NULL}, no
 *                     glyph metrics are returned.
 */
	static public function wglUseFontOutlines(hdc:haxe.Int64,first:Int,count:Int,listBase:Int,deviation:Float,extrusion:Float,format:Int,glyphMetrics:java.nio.ByteBuffer):Int;
/**
 * Creates a set of bitmap display lists for use in the current OpenGL rendering context. The set of bitmap display lists is based on the glyphs in the
 * currently selected font in the device context. You can then use bitmaps to draw characters in an OpenGL image.
 * 
 * <p>Creates count display lists, one for each of a run of count glyphs that begins with the first glyph in the device parameter's selected fonts.</p>
 *
 * @param hdc      the device context whose currently selected font will be used to form the glyph bitmap display lists in the current OpenGL rendering context
 * @param first    the first glyph in the run of glyphs that will be used to form glyph bitmap display lists
 * @param count    the number of glyphs in the run of glyphs that will be used to form glyph bitmap display lists. The function creates count display lists, one for each glyph in the run.
 * @param listBase the starting display list
 */
	static public function wglUseFontBitmaps(hdc:haxe.Int64,first:Int,count:Int,listBase:Int):Int;
/** JNI method for {@link #wglUseFontBitmaps UseFontBitmaps}  */
	static public function nwglUseFontBitmaps(hdc:haxe.Int64,first:Int,count:Int,listBase:Int):Int;
/** JNI method for {@link #wglUseFontOutlines UseFontOutlines}  */
	static public function nwglUseFontOutlines(hdc:haxe.Int64,first:Int,count:Int,listBase:Int,deviation:Float,extrusion:Float,format:Int,glyphMetrics:haxe.Int64):Int;
/**
 * Makes a specified OpenGL rendering context the calling thread's current rendering context. All subsequent OpenGL calls made by the thread are drawn on
 * the device identified by device. You can also use MakeCurrent to change the calling thread's current rendering context so it's no longer current.
 *
 * @param hdc     handle to a device context. Subsequent OpenGL calls made by the calling thread are drawn on the device identified by {@code dc}.
 * @param context handle to an OpenGL rendering context that the function sets as the calling thread's rendering context. If {@code context} is {@code NULL}, the function
 *                makes the calling thread's current rendering context no longer current, and releases the device context that is used by the rendering context. In
 *                this case, {@code hdc} is ignored.
 */
	static public function wglMakeCurrent(hdc:haxe.Int64,context:haxe.Int64):Int;
/** JNI method for {@link #wglCreateLayerContext CreateLayerContext}  */
	static public function nwglCreateLayerContext(hdc:haxe.Int64,layerPlane:Int):haxe.Int64;
/** JNI method for {@link #wglShareLists ShareLists}  */
	static public function nwglShareLists(context1:haxe.Int64,context2:haxe.Int64):Int;
/**
 * Copies selected groups of rendering states from one OpenGL rendering context to another.
 *
 * @param src  the source OpenGL rendering context whose state information is to be copied
 * @param dst  the destination OpenGL rendering context to which state information is to be copied
 * @param mask which groups of the {@code src} rendering state are to be copied to {@code dst}. It contains the bitwise-OR of the same symbolic names that are
 *             passed to the {@link org.lwjgl.opengl.GL11#glPushAttrib} function. You can use {@link org.lwjgl.opengl.GL11#GL_ALL_ATTRIB_BITS} to copy all the
 *             rendering state information.
 */
	static public function wglCopyContext(src:haxe.Int64,dst:haxe.Int64,mask:Int):Int;
/**
 * Enables multiple OpenGL rendering contexts to share a single display-list space.
 *
 * @param context1 the OpenGL rendering context with which to share display lists.
 * @param context2 the OpenGL rendering context to share display lists with {@code context1}. The {@code context2} parameter should not contain any existing display
 *                 lists when {@code wglShareLists} is called.
 */
	static public function wglShareLists(context1:haxe.Int64,context2:haxe.Int64):Int;

}
