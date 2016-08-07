package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBTruetype")
@:final
/**
 * Native bindings to stb_truetype.h from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <p>This library processes TrueType files:
 * <ul>
 * <li>parse files</li>
 * <li>extract glyph metrics</li>
 * <li>extract glyph shapes</li>
 * <li>render glyphs to one-channel bitmaps with antialiasing (box filter)</li>
 * </ul></p>
 * 
 * <h3>ADDITIONAL DOCUMENTATION</h3>
 * Some important concepts to understand to use this library:
 * 
 * <p><b>Codepoint</b></p>
 * 
 * <p>Characters are defined by unicode codepoints, e.g. 65 is uppercase A, 231 is lowercase c with a cedilla, 0x7e30 is the hiragana for "ma".</p>
 * 
 * <p><b>Glyph</b></p>
 * 
 * <p>A visual character shape (every codepoint is rendered as some glyph)</p>
 * 
 * <p><b>Glyph index</b></p>
 * 
 * <p>A font-specific integer ID representing a glyph</p>
 * 
 * <p><b>Baseline</b></p>
 * 
 * <p>Glyph shapes are defined relative to a baseline, which is the bottom of uppercase characters. Characters extend both above and below the baseline.</p>
 * 
 * <p><b>Current Point</b></p>
 * 
 * <p>As you draw text to the screen, you keep track of a "current point" which is the origin of each character. The current point's vertical position is the
 * baseline. Even "baked fonts" use this model.</p>
 * 
 * <p><b>Vertical Font Metrics</b></p>
 * 
 * <p>The vertical qualities of the font, used to vertically position and space the characters. See docs for {@link #stbtt_GetFontVMetrics GetFontVMetrics}.</p>
 * 
 * <p><b>Font Size in Pixels or Points</b></p>
 * 
 * <p>The preferred interface for specifying font sizes in stb_truetype is to specify how tall the font's vertical extent should be in pixels. If that sounds
 * good enough, skip the next paragraph.</p>
 * 
 * <p>Most font APIs instead use "points", which are a common typographic measurement for describing font size, defined as 72 points per inch. stb_truetype
 * provides a point API for compatibility. However, true "per inch" conventions don't make much sense on computer displays since different monitors have
 * different number of pixels per inch. For example, Windows traditionally uses a convention that there are 96 pixels per inch, thus making 'inch'
 * measurements have nothing to do with inches, and thus effectively defining a point to be 1.333 pixels. Additionally, the TrueType font data provides an
 * explicit scale factor to scale a given font's glyphs to points, but the author has observed that this scale factor is often wrong for non-commercial
 * fonts, thus making fonts scaled in points according to the TrueType spec incoherently sized in practice.</p>
 * 
 * <h3>ADVANCED USAGE</h3>
 * 
 * <p>Quality:
 * <ul>
 * <li>Use the functions with Subpixel at the end to allow your characters to have subpixel positioning. Since the font is anti-aliased, not hinted, this
 * is very important for quality. (This is not possible with baked fonts.)</li>
 * <li>Kerning is now supported, and if you're supporting subpixel rendering then kerning is worth using to give your text a polished look.</li>
 * </ul>
 * Performance:
 * <ul>
 * <li>Convert Unicode codepoints to glyph indexes and operate on the glyphs; if you don't do this, stb_truetype is forced to do the conversion on every
 * call.</li>
 * <li>There are a lot of memory allocations. We should modify it to take a temp buffer and allocate from the temp buffer (without freeing), should help
 * performance a lot.</li>
 * </ul></p>
 * 
 * <h3>NOTES</h3>
 * 
 * <p>The system uses the raw data found in the .ttf file without changing it and without building auxiliary data structures. This is a bit inefficient on
 * little-endian systems (the data is big-endian), but assuming you're caching the bitmaps or glyph shapes this shouldn't be a big deal.</p>
 * 
 * <p>It appears to be very hard to programmatically determine what font a given file is in a general way. I provide an API for this, but I don't recommend
 * it.</p>
 * 
 * <h3>SAMPLE PROGRAMS</h3>
 * 
 * <p>Incomplete text-in-3d-api example, which draws quads properly aligned to be lossless:
 * <pre><code style="font-family: monospace">
 * unsigned char ttf_buffer[1<<20];
 * unsigned char temp_bitmap[512*512];
 * 
 * stbtt_bakedchar cdata[96]; // ASCII 32..126 is 95 glyphs
 * GLuint ftex;
 * 
 * void my_stbtt_initfont(void)
 * {
 *    fread(ttf_buffer, 1, 1<<20, fopen("c:/windows/fonts/times.ttf", "rb"));
 *    stbtt_BakeFontBitmap(ttf_buffer,0, 32.0, temp_bitmap,512,512, 32,96, cdata); // no guarantee this fits!
 *    // can free ttf_buffer at this point
 *    glGenTextures(1, &ftex);
 *    glBindTexture(GL_TEXTURE_2D, ftex);
 *    glTexImage2D(GL_TEXTURE_2D, 0, GL_ALPHA, 512,512, 0, GL_ALPHA, GL_UNSIGNED_BYTE, temp_bitmap);
 *    // can free temp_bitmap at this point
 *    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
 * }
 * 
 * void my_stbtt_print(float x, float y, char *text)
 * {
 *    // assume orthographic projection with units = screen pixels, origin at top left
 *    glEnable(GL_TEXTURE_2D);
 *    glBindTexture(GL_TEXTURE_2D, ftex);
 *    glBegin(GL_QUADS);
 *    while (*text) {
 *       if (*text >= 32 && *text < 128) {
 *          stbtt_aligned_quad q;
 *          stbtt_GetBakedQuad(cdata, 512,512, *text-32, &x,&y,&q,1);//1=opengl & d3d10+,0=d3d9
 *          glTexCoord2f(q.s0,q.t1); glVertex2f(q.x0,q.y0);
 *          glTexCoord2f(q.s1,q.t1); glVertex2f(q.x1,q.y0);
 *          glTexCoord2f(q.s1,q.t0); glVertex2f(q.x1,q.y1);
 *          glTexCoord2f(q.s0,q.t0); glVertex2f(q.x0,q.y1);
 *       }
 *       ++text;
 *    }
 *    glEnd();
 * }</code></pre>
 * Complete program (this compiles): get a single bitmap, print as ASCII art:
 * <pre><code style="font-family: monospace">
 * char ttf_buffer[1<<25];
 * 
 * int main(int argc, char **argv)
 * {
 *    stbtt_fontinfo font;
 *    unsigned char *bitmap;
 *    int w,h,i,j,c = (argc > 1 ? atoi(argv[1]) : 'a'), s = (argc > 2 ? atoi(argv[2]) : 20);
 * 
 *    fread(ttf_buffer, 1, 1<<25, fopen(argc > 3 ? argv[3] : "c:/windows/fonts/arialbd.ttf", "rb"));
 * 
 *    stbtt_InitFont(&font, ttf_buffer, stbtt_GetFontOffsetForIndex(ttf_buffer,0));
 *    bitmap = stbtt_GetCodepointBitmap(&font, 0,stbtt_ScaleForPixelHeight(&font, s), c, &w, &h, 0,0);
 * 
 *    for (j=0; j < h; ++j) {
 *       for (i=0; i < w; ++i)
 *          putchar(" .:ioVM@"[bitmap[j*w+i]>>5]);
 *       putchar('\n');
 *    }
 *    return 0;
 * }</code></pre>
 * Complete program: print "Hello World!" banner, with bugs:
 * <pre><code style="font-family: monospace">
 * char buffer[24<<20];
 * unsigned char screen[20][79];
 * 
 * int main(int arg, char **argv)
 * {
 *    stbtt_fontinfo font;
 *    int i,j,ascent,baseline,ch=0;
 *    float scale, xpos=2; // leave a little padding in case the character extends left
 *    char *text = "Heljo World!";
 * 
 *    fread(buffer, 1, 1000000, fopen("c:/windows/fonts/arialbd.ttf", "rb"));
 *    stbtt_InitFont(&font, buffer, 0);
 * 
 *    scale = stbtt_ScaleForPixelHeight(&font, 15);
 *    stbtt_GetFontVMetrics(&font, &ascent,0,0);
 *    baseline = (int) (ascent*scale);
 * 
 *    while (text[ch]) {
 *       int advance,lsb,x0,y0,x1,y1;
 *       float x_shift = xpos - (float) floor(xpos);
 *       stbtt_GetCodepointHMetrics(&font, text[ch], &advance, &lsb);
 *       stbtt_GetCodepointBitmapBoxSubpixel(&font, text[ch], scale,scale,x_shift,0, &x0,&y0,&x1,&y1);
 *       stbtt_MakeCodepointBitmapSubpixel(&font, &screen[baseline + y0][(int) xpos + x0], x1-x0,y1-y0, 79, scale,scale,x_shift,0, text[ch]);
 *       // note that this stomps the old data, so where character boxes overlap (e.g. 'lj') it's wrong
 *       // because this API is really for baking character bitmaps into textures. if you want to render
 *       // a sequence of characters, you really need to render each bitmap to a temp buffer, then
 *       // "alpha blend" that into the working buffer
 *       xpos += (advance * scale);
 *       if (text[ch+1])
 *          xpos += scale*stbtt_GetCodepointKernAdvance(&font, text[ch],text[ch+1]);
 *       ++ch;
 *    }
 * 
 *    for (j=0; j < 20; ++j) {
 *       for (i=0; i < 78; ++i)
 *          putchar(" .:ioVM@"[screen[j][i]>>5]);
 *       putchar('\n');
 *    }
 * 
 *    return 0;
 * }</code></pre>
 * <h3>Finding the right font...</h3></p>
 * 
 * <p>You should really just solve this offline, keep your own tables of what font is what, and don't try to get it out of the .ttf file. That's because
 * getting it out of the .ttf file is really hard, because the names in the file can appear in many possible encodings, in many possible languages, and
 * e.g. if you need a case-insensitive comparison, the details of that depend on the encoding & language in a complex way (actually underspecified in
 * truetype, but also gigantic).</p>
 * 
 * <p>But you can use the provided functions in two possible ways:
 * <ul>
 * <li>{@link #stbtt_FindMatchingFont FindMatchingFont} will use *case-sensitive* comparisons on unicode-encoded names to try to find the font you want; you can run this before
 * calling {@link #stbtt_InitFont InitFont}</li>
 * <li>{@link #stbtt_GetFontNameString GetFontNameString} lets you get any of the various strings from the file yourself and do your own comparisons on them. You have to have called
 * {@link #stbtt_InitFont InitFont} first.</li>
 * </ul></p>
 */
extern class STBTruetype 
{
/** Vertex type.  */
	inline static public var STBTT_vmove:Int8 = 1;
/** Vertex type.  */
	inline static public var STBTT_vline:Int8 = 2;
/** Vertex type.  */
	inline static public var STBTT_vcurve:Int8 = 3;
/** Style flags, use in {@link #stbtt_FindMatchingFont FindMatchingFont}.  */
	inline static public var STBTT_MACSTYLE_DONTCARE:Int = 0;
/** Style flags, use in {@link #stbtt_FindMatchingFont FindMatchingFont}.  */
	inline static public var STBTT_MACSTYLE_BOLD:Int = 1;
/** Style flags, use in {@link #stbtt_FindMatchingFont FindMatchingFont}.  */
	inline static public var STBTT_MACSTYLE_ITALIC:Int = 2;
/** Style flags, use in {@link #stbtt_FindMatchingFont FindMatchingFont}.  */
	inline static public var STBTT_MACSTYLE_UNDERSCORE:Int = 4;
/** Style flags, use in {@link #stbtt_FindMatchingFont FindMatchingFont}.  */
	inline static public var STBTT_MACSTYLE_NONE:Int = 8;
/** Platform IDs.  */
	inline static public var STBTT_PLATFORM_ID_UNICODE:Int = 0;
/** Platform IDs.  */
	inline static public var STBTT_PLATFORM_ID_MAC:Int = 1;
/** Platform IDs.  */
	inline static public var STBTT_PLATFORM_ID_ISO:Int = 2;
/** Platform IDs.  */
	inline static public var STBTT_PLATFORM_ID_MICROSOFT:Int = 3;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_UNICODE PLATFORM_ID_UNICODE}.  */
	inline static public var STBTT_UNICODE_EID_UNICODE_1_0:Int = 0;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_UNICODE PLATFORM_ID_UNICODE}.  */
	inline static public var STBTT_UNICODE_EID_UNICODE_1_1:Int = 1;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_UNICODE PLATFORM_ID_UNICODE}.  */
	inline static public var STBTT_UNICODE_EID_ISO_10646:Int = 2;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_UNICODE PLATFORM_ID_UNICODE}.  */
	inline static public var STBTT_UNICODE_EID_UNICODE_2_0_BMP:Int = 3;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_UNICODE PLATFORM_ID_UNICODE}.  */
	inline static public var STBTT_UNICODE_EID_UNICODE_2_0_FULL:Int = 4;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_EID_SYMBOL:Int = 0;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_EID_UNICODE_BMP:Int = 1;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_EID_SHIFTJIS:Int = 2;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_EID_UNICODE_FULL:Int = 10;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_ROMAN:Int = 0;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_JAPANESE:Int = 1;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_CHINESE_TRAD:Int = 2;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_KOREAN:Int = 3;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_ARABIC:Int = 4;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_HEBREW:Int = 5;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_GREEK:Int = 6;
/** Encoding IDs for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_EID_RUSSIAN:Int = 7;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_ENGLISH:Int = 1033;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_CHINESE:Int = 2052;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_DUTCH:Int = 1043;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_FRENCH:Int = 1036;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_GERMAN:Int = 1031;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_HEBREW:Int = 1037;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_ITALIAN:Int = 1040;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_JAPANESE:Int = 1041;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_KOREAN:Int = 1042;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_RUSSIAN:Int = 1049;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_SPANISH:Int = 1033;
/** Language ID for {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}.  */
	inline static public var STBTT_MS_LANG_SWEDISH:Int = 1053;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_ENGLISH:Int = 0;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_ARABIC:Int = 12;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_DUTCH:Int = 4;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_FRENCH:Int = 1;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_GERMAN:Int = 2;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_HEBREW:Int = 10;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_ITALIAN:Int = 3;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_JAPANESE:Int = 11;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_KOREAN:Int = 23;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_RUSSIAN:Int = 32;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_SPANISH:Int = 6;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_SWEDISH:Int = 5;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_CHINESE_SIMPLIFIED:Int = 33;
/** Language ID for {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}.  */
	inline static public var STBTT_MAC_LANG_CHINESE_TRAD:Int = 19;
/** JNI method for {@link #stbtt_GetGlyphBitmapSubpixel GetGlyphBitmapSubpixel}  */
	static public function nstbtt_GetGlyphBitmapSubpixel(info:haxe.Int64,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,glyph:Int,width:haxe.Int64,height:haxe.Int64,xoff:haxe.Int64,yoff:haxe.Int64):haxe.Int64;
/** Alternative version of: {@link #stbtt_GetFontVMetrics GetFontVMetrics}  */
/**
 * Returns vertical metrics for the specified font. You should advance the vertical position by {@code *ascent - *descent + *lineGap}
 * 
 * <p>The returned values are expressed in unscaled coordinates, so you must multiply by the scale factor for a given size.</p>
 *
 * @param info    an {@link STBTTFontinfo} struct
 * @param ascent  returns the coordinate above the baseline the font extends
 * @param descent returns the coordinate below the baseline the font extends (i.e. it is typically negative)
 * @param lineGap returns the spacing between one row's descent and the next row's ascent
 */
	static public function stbtt_GetFontVMetrics(info:java.nio.ByteBuffer,ascent:java.nio.ByteBuffer,descent:java.nio.ByteBuffer,lineGap:java.nio.ByteBuffer):Void;
	@:overload(function (info:java.nio.ByteBuffer,ascent:java.nio.IntBuffer,descent:java.nio.IntBuffer,lineGap:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #stbtt_GetGlyphHMetrics GetGlyphHMetrics}  */
/**
 * Glyph version of {@link #stbtt_GetCodepointHMetrics GetCodepointHMetrics}, for greater efficiency.
 *
 * @param info            an {@link STBTTFontinfo} struct
 * @param glyph_index     the glyph index
 * @param advanceWidth    the offset from the current horizontal position to the next horizontal position
 * @param leftSideBearing the offset from the current horizontal position to the left edge of the character
 */
	static public function stbtt_GetGlyphHMetrics(info:java.nio.ByteBuffer,glyph_index:Int,advanceWidth:java.nio.ByteBuffer,leftSideBearing:java.nio.ByteBuffer):Void;
	@:overload(function (info:java.nio.ByteBuffer,glyph_index:Int,advanceWidth:java.nio.IntBuffer,leftSideBearing:java.nio.IntBuffer):Void {})
/** JNI method for {@link #stbtt_PackBegin PackBegin}  */
	static public function nstbtt_PackBegin(spc:haxe.Int64,pixels:haxe.Int64,width:Int,height:Int,stride_in_bytes:Int,padding:Int,alloc_context:haxe.Int64):Int;
/** JNI method for {@link #stbtt_FreeBitmap FreeBitmap}  */
	static public function nstbtt_FreeBitmap(bitmap:haxe.Int64,userdata:haxe.Int64):Void;
/** Alternative version of: {@link #stbtt_GetCodepointBitmapSubpixel GetCodepointBitmapSubpixel}  */
/**
 * Same as {@link #stbtt_GetCodepointBitmap GetCodepointBitmap}, but you can specify a subpixel shift for the character.
 *
 * @param info      an {@link STBTTFontinfo} struct
 * @param scale_x   the horizontal scale
 * @param scale_y   the vertical scale
 * @param shift_x   the horizontal subpixel shift
 * @param shift_y   the vertical subpixel shift
 * @param codepoint the unicode codepoint to render
 * @param width     returns the bitmap width
 * @param height    returns the bitmap height
 * @param xoff      returns the horizontal offset in pixel space from the glyph origin to the left of the bitmap
 * @param yoff      returns the vertical offset in pixel space from the glyph origin to the top of the bitmap
 */
	static public function stbtt_GetCodepointBitmapSubpixel(info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,codepoint:Int,width:java.nio.ByteBuffer,height:java.nio.ByteBuffer,xoff:java.nio.ByteBuffer,yoff:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,codepoint:Int,width:java.nio.IntBuffer,height:java.nio.IntBuffer,xoff:java.nio.IntBuffer,yoff:java.nio.IntBuffer):java.nio.ByteBuffer {})
/** JNI method for {@link #stbtt_MakeCodepointBitmap MakeCodepointBitmap}  */
	static public function nstbtt_MakeCodepointBitmap(info:haxe.Int64,output:haxe.Int64,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,codepoint:Int):Void;
/** Alternative version of: {@link #stbtt_GetCodepointBitmap GetCodepointBitmap}  */
/**
 * Allocates a large-enough single-channel 8bpp bitmap and renders the specified character/glyph at the specified scale into it, with antialiasing.
 *
 * @param info      an {@link STBTTFontinfo} struct
 * @param scale_x   the horizontal scale
 * @param scale_y   the vertical scale
 * @param codepoint the unicode codepoint to render
 * @param width     returns the bitmap width
 * @param height    returns the bitmap height
 * @param xoff      returns the horizontal offset in pixel space from the glyph origin to the left of the bitmap
 * @param yoff      returns the vertical offset in pixel space from the glyph origin to the top of the bitmap
 */
	static public function stbtt_GetCodepointBitmap(info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,codepoint:Int,width:java.nio.ByteBuffer,height:java.nio.ByteBuffer,xoff:java.nio.ByteBuffer,yoff:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,codepoint:Int,width:java.nio.IntBuffer,height:java.nio.IntBuffer,xoff:java.nio.IntBuffer,yoff:java.nio.IntBuffer):java.nio.ByteBuffer {})
/**
 * Frees the data allocated by {@link #stbtt_GetCodepointShape GetCodepointShape} and {@link #stbtt_GetGlyphShape GetGlyphShape}.
 *
 * @param info     an {@link STBTTFontinfo} struct
 * @param vertices the array of {@link STBTTVertex} structs to free
 */
	static public function stbtt_FreeShape(info:java.nio.ByteBuffer,vertices:java.nio.ByteBuffer):Void;
/** JNI method for {@link #stbtt_GetCodepointBitmapBoxSubpixel GetCodepointBitmapBoxSubpixel}  */
	static public function nstbtt_GetCodepointBitmapBoxSubpixel(font:haxe.Int64,codepoint:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,ix0:haxe.Int64,iy0:haxe.Int64,ix1:haxe.Int64,iy1:haxe.Int64):Void;
/**
 * Returns the additional amount to add to the {@code advance} value between {@code ch1} and {@code ch2}.
 *
 * @param info an {@link STBTTFontinfo} struct
 * @param ch1  the first unicode codepoint
 * @param ch2  the second unicode codepoint
 */
	static public function stbtt_GetCodepointKernAdvance(info:java.nio.ByteBuffer,ch1:Int,ch2:Int):Int;
/**
 * Frees a bitmap allocated by {@link #stbtt_GetCodepointBitmap GetCodepointBitmap}, {@link #stbtt_GetCodepointBitmapSubpixel GetCodepointBitmapSubpixel}, {@link #stbtt_GetGlyphBitmap GetGlyphBitmap} or {@link #stbtt_GetGlyphBitmapSubpixel GetGlyphBitmapSubpixel}.
 *
 * @param bitmap   the bitmap to free
 * @param userdata a pointer to user data
 */
	static public function stbtt_FreeBitmap(bitmap:java.nio.ByteBuffer,userdata:java.nio.ByteBuffer):Void;
/** JNI method for {@link #stbtt_GetCodepointBitmapBox GetCodepointBitmapBox}  */
	static public function nstbtt_GetCodepointBitmapBox(font:haxe.Int64,codepoint:Int,scale_x:Float,scale_y:Float,ix0:haxe.Int64,iy0:haxe.Int64,ix1:haxe.Int64,iy1:haxe.Int64):Void;
/** JNI method for {@link #stbtt_GetBakedQuad GetBakedQuad}  */
	static public function nstbtt_GetBakedQuad(chardata:haxe.Int64,pw:Int,ph:Int,char_index:Int,xpos:haxe.Int64,ypos:haxe.Int64,q:haxe.Int64,opengl_fillrule:Int):Void;
/** JNI method for {@link #stbtt_GetFontBoundingBox GetFontBoundingBox}  */
	static public function nstbtt_GetFontBoundingBox(info:haxe.Int64,x0:haxe.Int64,y0:haxe.Int64,x1:haxe.Int64,y1:haxe.Int64):Void;
/** JNI method for {@link #stbtt_GetCodepointKernAdvance GetCodepointKernAdvance}  */
	static public function nstbtt_GetCodepointKernAdvance(info:haxe.Int64,ch1:Int,ch2:Int):Int;
/** JNI method for {@link #stbtt_GetCodepointBox GetCodepointBox}  */
	static public function nstbtt_GetCodepointBox(info:haxe.Int64,codepoint:Int,x0:haxe.Int64,y0:haxe.Int64,x1:haxe.Int64,y1:haxe.Int64):Int;
/**
 * Same as {@link #stbtt_MakeCodepointBitmap MakeCodepointBitmap}, but you can specify a subpixel shift for the character.
 *
 * @param info       an {@link STBTTFontinfo} struct
 * @param output     the bitmap storage
 * @param out_w      the bitmap width
 * @param out_h      the bitmap height
 * @param out_stride the row stride, in bytes
 * @param scale_x    the horizontal scale
 * @param scale_y    the vertical scale
 * @param shift_x    the horizontal subpixel shift
 * @param shift_y    the vertical subpixel shift
 * @param codepoint  the unicode codepoint to render
 */
	static public function stbtt_MakeCodepointBitmapSubpixel(info:java.nio.ByteBuffer,output:java.nio.ByteBuffer,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,codepoint:Int):Void;
/**
 * Oversampling a font increases the quality by allowing higher-quality subpixel positioning, and is especially valuable at smaller text sizes.
 * 
 * <p>This function sets the amount of oversampling for all following calls to {@link #stbtt_PackFontRange PackFontRange}. The default (no oversampling) is achieved by
 * {@code h_oversample=1, v_oversample=1}. The total number of pixels required is {@code h_oversample*v_oversample} larger than the default; for example,
 * 2x2 oversampling requires 4x the storage of 1x1. For best results, render oversampled textures with bilinear filtering. Look at the readme in
 * <a href="https://github.com/nothings/stb/blob/master/tests/oversample/README.md">stb/tests/oversample</a> for information about oversampled fonts.</p>
 *
 * @param spc          an {@link STBTTPackContext} struct
 * @param h_oversample the horizontal oversampling amount
 * @param v_oversample the vertical oversampling amount
 */
	static public function stbtt_PackSetOversampling(spc:java.nio.ByteBuffer,h_oversample:Int,v_oversample:Int):Void;
/** Alternative version of: {@link #stbtt_CompareUTF8toUTF16_bigendian CompareUTF8toUTF16_bigendian}  */
/**
 * Returns 1/0 whether the first string interpreted as utf8 is identical to the second string interpreted as big-endian utf16... useful for strings
 * returned from {@link #stbtt_GetFontNameString GetFontNameString}.
 *
 * @param s1   the first string
 * @param len1 the length of the first string, in bytes
 * @param s2   the second string
 * @param len2 the length of the second string, in bytes
 */
	static public function stbtt_CompareUTF8toUTF16_bigendian(s1:java.nio.ByteBuffer,len1:Int,s2:java.nio.ByteBuffer,len2:Int):Int;
	@:overload(function (s1:java.nio.ByteBuffer,s2:java.nio.ByteBuffer):Int {})
/** Alternative version of: {@link #stbtt_InitFont InitFont}  */
/**
 * Given an offset into the file that defines a font, this function builds the necessary cached info for the rest of the system. You must allocate the
 * {@link STBTTFontinfo} yourself, and stbtt_InitFont will fill it out. You don't need to do anything special to free it, because the contents are pure value
 * data with no additional data structures.
 *
 * @param info   an {@link STBTTFontinfo} struct
 * @param data   the font data
 * @param offset the font data offset
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbtt_InitFont(info:java.nio.ByteBuffer,data:java.nio.ByteBuffer,offset:Int):Int;
	@:overload(function (info:java.nio.ByteBuffer,data:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #stbtt_GetGlyphHMetrics GetGlyphHMetrics}  */
	static public function nstbtt_GetGlyphHMetrics(info:haxe.Int64,glyph_index:Int,advanceWidth:haxe.Int64,leftSideBearing:haxe.Int64):Void;
/** JNI method for {@link #stbtt_PackFontRanges PackFontRanges}  */
	static public function nstbtt_PackFontRanges(spc:haxe.Int64,fontdata:haxe.Int64,font_index:Int,ranges:haxe.Int64,num_ranges:Int):Int;
/** JNI method for {@link #stbtt_MakeCodepointBitmapSubpixel MakeCodepointBitmapSubpixel}  */
	static public function nstbtt_MakeCodepointBitmapSubpixel(info:haxe.Int64,output:haxe.Int64,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,codepoint:Int):Void;
/** JNI method for {@link #stbtt_GetGlyphShape GetGlyphShape}  */
	static public function nstbtt_GetGlyphShape(info:haxe.Int64,glyph_index:Int,vertices:haxe.Int64):Int;
/** Alternative version of: {@link #stbtt_BakeFontBitmap BakeFontBitmap}  */
/**
 * Bakes a font to a bitmap for use as texture.
 * 
 * <p>This uses a very simply packing, use with {@link #stbtt_GetBakedQuad GetBakedQuad}.</p>
 *
 * @param data         the font data
 * @param offset       the font data offset, use 0 for plain .ttf files
 * @param pixel_height the font height, in pixels
 * @param pixels       a buffer in which to write the font bitmap
 * @param pw           the bitmap width, in pixels
 * @param ph           the bitmap height, in pixels
 * @param first_char   the first character to bake
 * @param num_chars    the number of characters to bake, starting at {@code first_char}
 * @param chardata     an array of {@link STBTTBakedChar} structs, it's {@code num_chars} long
 *
 * @return if positive, the first unused row of the bitmap. If negative, returns the negative of the number of characters that fit. If 0, no characters fit and no
 *         rows were used.
 */
	static public function stbtt_BakeFontBitmap(data:java.nio.ByteBuffer,offset:Int,pixel_height:Float,pixels:java.nio.ByteBuffer,pw:Int,ph:Int,first_char:Int,num_chars:Int,chardata:java.nio.ByteBuffer):Int;
	@:overload(function (data:java.nio.ByteBuffer,pixel_height:Float,pixels:java.nio.ByteBuffer,pw:Int,ph:Int,first_char:Int,chardata:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #stbtt_GetGlyphBitmapBoxSubpixel GetGlyphBitmapBoxSubpixel}  */
	static public function nstbtt_GetGlyphBitmapBoxSubpixel(font:haxe.Int64,glyph:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,ix0:haxe.Int64,iy0:haxe.Int64,ix1:haxe.Int64,iy1:haxe.Int64):Void;
/** Alternative version of: {@link #stbtt_PackBegin PackBegin}  */
/**
 * Initializes a packing context stored in the passed-in {@code stbtt_pack_context}. Future calls using this context will pack characters into the bitmap
 * passed in here: a 1-channel bitmap that is width x height.
 *
 * @param spc             an {@link STBTTPackContext} struct
 * @param pixels          a buffer in which to store the bitmap data
 * @param width           the bitmap width, in pixels
 * @param height          the bitmap height, in pixels
 * @param stride_in_bytes the distance from one row to the next (or 0 to mean they are packed tightly together)
 * @param padding         the amount of padding to leave between each character (normally you want '1' for bitmaps you'll use as textures with bilinear filtering)
 * @param alloc_context   a pointer to an allocation context
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbtt_PackBegin(spc:java.nio.ByteBuffer,pixels:java.nio.ByteBuffer,width:Int,height:Int,stride_in_bytes:Int,padding:Int,alloc_context:java.nio.ByteBuffer):Int;
	@:overload(function (spc:java.nio.ByteBuffer,pixels:java.nio.ByteBuffer,width:Int,height:Int,stride_in_bytes:Int,padding:Int):Int {})
/** JNI method for {@link #stbtt_IsGlyphEmpty IsGlyphEmpty}  */
	static public function nstbtt_IsGlyphEmpty(info:haxe.Int64,glyph_index:Int):Int;
/**
 * Returns non-zero if nothing is drawn for this glyph.
 *
 * @param info        an {@link STBTTFontinfo} struct
 * @param glyph_index the glyph index
 */
	static public function stbtt_IsGlyphEmpty(info:java.nio.ByteBuffer,glyph_index:Int):Int;
/** JNI method for {@link #stbtt_ScaleForPixelHeight ScaleForPixelHeight}  */
	static public function nstbtt_ScaleForPixelHeight(info:haxe.Int64,pixels:Float):Float;
/** Alternative version of: {@link #stbtt_GetFontBoundingBox GetFontBoundingBox}  */
/**
 * Returns the bounding box around all possible characters.
 *
 * @param info an {@link STBTTFontinfo} struct
 * @param x0   the left coordinate
 * @param y0   the bottom coordinate
 * @param x1   the right coordinate
 * @param y1   the top coordinate
 */
	static public function stbtt_GetFontBoundingBox(info:java.nio.ByteBuffer,x0:java.nio.ByteBuffer,y0:java.nio.ByteBuffer,x1:java.nio.ByteBuffer,y1:java.nio.ByteBuffer):Void;
	@:overload(function (info:java.nio.ByteBuffer,x0:java.nio.IntBuffer,y0:java.nio.IntBuffer,x1:java.nio.IntBuffer,y1:java.nio.IntBuffer):Void {})
/** JNI method for {@link #stbtt_GetCodepointHMetrics GetCodepointHMetrics}  */
	static public function nstbtt_GetCodepointHMetrics(info:haxe.Int64,codepoint:Int,advanceWidth:haxe.Int64,leftSideBearing:haxe.Int64):Void;
/** Alternative version of: {@link #stbtt_GetCodepointBitmapBox GetCodepointBitmapBox}  */
/**
 * Get the bbox of the bitmap centered around the glyph origin; so the bitmap width is {@code ix1-ix0}, height is {@code iy1-iy0}, and location to place
 * the bitmap top left is {@code (leftSideBearing*scale,iy0)}.
 * 
 * <p>Note that the bitmap uses y-increases-down, but the shape uses y-increases-up, so {@code CodepointBitmapBox} and {@code CodepointBox} are inverted.</p>
 *
 * @param font      an {@link STBTTFontinfo} struct
 * @param codepoint the unicode codepoint
 * @param scale_x   the horizontal scale
 * @param scale_y   the vertical scale
 * @param ix0       returns the left coordinate
 * @param iy0       returns the bottom coordinate
 * @param ix1       returns the right coordinate
 * @param iy1       returns the top coordinate
 */
	static public function stbtt_GetCodepointBitmapBox(font:java.nio.ByteBuffer,codepoint:Int,scale_x:Float,scale_y:Float,ix0:java.nio.ByteBuffer,iy0:java.nio.ByteBuffer,ix1:java.nio.ByteBuffer,iy1:java.nio.ByteBuffer):Void;
	@:overload(function (font:java.nio.ByteBuffer,codepoint:Int,scale_x:Float,scale_y:Float,ix0:java.nio.IntBuffer,iy0:java.nio.IntBuffer,ix1:java.nio.IntBuffer,iy1:java.nio.IntBuffer):Void {})
/** JNI method for {@link #stbtt_MakeGlyphBitmap MakeGlyphBitmap}  */
	static public function nstbtt_MakeGlyphBitmap(info:haxe.Int64,output:haxe.Int64,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,glyph:Int):Void;
/**
 * If you're going to perform multiple operations on the same character and you want a speed-up, call this function with the character you're going to
 * process, then use glyph-based functions instead of the codepoint-based functions.
 *
 * @param info              an {@link STBTTFontinfo} struct
 * @param unicode_codepoint the unicode code point
 *
 * @return the glyph index
 */
	static public function stbtt_FindGlyphIndex(info:java.nio.ByteBuffer,unicode_codepoint:Int):Int;
/** JNI method for {@link #stbtt_PackFontRange PackFontRange}  */
	static public function nstbtt_PackFontRange(spc:haxe.Int64,fontdata:haxe.Int64,font_index:Int,font_size:Float,first_unicode_char_in_range:Int,num_chars_in_range:Int,chardata_for_range:haxe.Int64):Int;
/** JNI method for {@link #stbtt_InitFont InitFont}  */
	static public function nstbtt_InitFont(info:haxe.Int64,data:haxe.Int64,offset:Int):Int;
/** JNI method for {@link #stbtt_GetGlyphBitmapBox GetGlyphBitmapBox}  */
	static public function nstbtt_GetGlyphBitmapBox(font:haxe.Int64,glyph:Int,scale_x:Float,scale_y:Float,ix0:haxe.Int64,iy0:haxe.Int64,ix1:haxe.Int64,iy1:haxe.Int64):Void;
/** Alternative version of: {@link #stbtt_GetBakedQuad GetBakedQuad}  */
/**
 * Computes quad to draw for a given char and advances the current position.
 * 
 * <p>The coordinate system used assumes y increases downwards. Characters will extend both above and below the current position; see discussion of
 * "BASELINE" above.</p>
 *
 * @param chardata        an array of {@link STBTTBakedChar} structs
 * @param pw              the bitmap width, in pixels
 * @param ph              the bitmap height, in pixels
 * @param char_index      the character index in the {@code chardata} array
 * @param xpos            the current x position, in screen pixel space
 * @param ypos            the current y position, in screen pixel space
 * @param q               an {@link STBTTAlignedQuad} struct in which to return the quad to draw
 * @param opengl_fillrule 1 if opengl fill rule; 0 if DX9 or earlier
 */
	static public function stbtt_GetBakedQuad(chardata:java.nio.ByteBuffer,pw:Int,ph:Int,char_index:Int,xpos:java.nio.ByteBuffer,ypos:java.nio.ByteBuffer,q:java.nio.ByteBuffer,opengl_fillrule:Int):Void;
	@:overload(function (chardata:java.nio.ByteBuffer,pw:Int,ph:Int,char_index:Int,xpos:java.nio.FloatBuffer,ypos:java.nio.FloatBuffer,q:java.nio.ByteBuffer,opengl_fillrule:Int):Void {})
/** Alternative version of: {@link #stbtt_GetCodepointBitmapBoxSubpixel GetCodepointBitmapBoxSubpixel}  */
/**
 * Same as {@link #stbtt_GetCodepointBitmapBox GetCodepointBitmapBox}, but you can specify a subpixel shift for the character.
 *
 * @param font      an {@link STBTTFontinfo} struct
 * @param codepoint the unicode codepoint
 * @param scale_x   the horizontal scale
 * @param scale_y   the vertical scale
 * @param shift_x   the horizontal subpixel shift
 * @param shift_y   the vertical subpixel shift
 * @param ix0       returns the left coordinate
 * @param iy0       returns the bottom coordinate
 * @param ix1       returns the right coordinate
 * @param iy1       returns the top coordinate
 */
	static public function stbtt_GetCodepointBitmapBoxSubpixel(font:java.nio.ByteBuffer,codepoint:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,ix0:java.nio.ByteBuffer,iy0:java.nio.ByteBuffer,ix1:java.nio.ByteBuffer,iy1:java.nio.ByteBuffer):Void;
	@:overload(function (font:java.nio.ByteBuffer,codepoint:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,ix0:java.nio.IntBuffer,iy0:java.nio.IntBuffer,ix1:java.nio.IntBuffer,iy1:java.nio.IntBuffer):Void {})
/** JNI method for {@link #stbtt_GetCodepointShape GetCodepointShape}  */
	static public function nstbtt_GetCodepointShape(info:haxe.Int64,unicode_codepoint:Int,vertices:haxe.Int64):Int;
/** CharSequence version of: {@link #stbtt_FindMatchingFont FindMatchingFont}  */
/**
 * Returns the offset (not index) of the font that matches, or -1 if none.
 * 
 * <p>If you use STBTT_MACSTYLE_DONTCARE, use a font name like "Arial Bold". If you use any other flag, use a font name like "Arial"; this checks the
 * {@code macStyle} header field; I don't know if fonts set this consistently.</p>
 *
 * @param fontdata the font data
 * @param name     the font name
 * @param flags    the style flags. One of:<br>{@link #STBTT_MACSTYLE_DONTCARE MACSTYLE_DONTCARE}, {@link #STBTT_MACSTYLE_BOLD MACSTYLE_BOLD}, {@link #STBTT_MACSTYLE_ITALIC MACSTYLE_ITALIC}, {@link #STBTT_MACSTYLE_UNDERSCORE MACSTYLE_UNDERSCORE}, {@link #STBTT_MACSTYLE_NONE MACSTYLE_NONE}
 */
	static public function stbtt_FindMatchingFont(fontdata:java.nio.ByteBuffer,name:java.nio.ByteBuffer,flags:Int):Int;
	@:overload(function (fontdata:java.nio.ByteBuffer,name:java.lang.CharSequence,flags:Int):Int {})
/**
 * Same as {@link #stbtt_MakeGlyphBitmap MakeGlyphBitmap}, but you can specify a subpixel shift for the character.
 *
 * @param info       an {@link STBTTFontinfo} struct
 * @param output     the bitmap storage
 * @param out_w      the bitmap width
 * @param out_h      the bitmap height
 * @param out_stride the row stride, in bytes
 * @param scale_x    the horizontal scale
 * @param scale_y    the vertical scale
 * @param shift_x    the horizontal subpixel shift
 * @param shift_y    the vertical subpixel shift
 * @param glyph      the glyph index to render
 */
	static public function stbtt_MakeGlyphBitmapSubpixel(info:java.nio.ByteBuffer,output:java.nio.ByteBuffer,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,glyph:Int):Void;
/**
 * Glyph version of {@link #stbtt_GetCodepointKernAdvance GetCodepointKernAdvance}, for greater efficiency.
 *
 * @param info   an {@link STBTTFontinfo} struct
 * @param glyph1 the first glyph index
 * @param glyph2 the second glyph index
 */
	static public function stbtt_GetGlyphKernAdvance(info:java.nio.ByteBuffer,glyph1:Int,glyph2:Int):Int;
/** JNI method for {@link #stbtt_FindGlyphIndex FindGlyphIndex}  */
	static public function nstbtt_FindGlyphIndex(info:haxe.Int64,unicode_codepoint:Int):Int;
/** JNI method for {@link #stbtt_GetCodepointBitmapSubpixel GetCodepointBitmapSubpixel}  */
	static public function nstbtt_GetCodepointBitmapSubpixel(info:haxe.Int64,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,codepoint:Int,width:haxe.Int64,height:haxe.Int64,xoff:haxe.Int64,yoff:haxe.Int64):haxe.Int64;
/** Alternative version of: {@link #stbtt_GetCodepointBox GetCodepointBox}  */
/**
 * Gets the bounding box of the visible part of the glyph, in unscaled coordinates.
 *
 * @param info      an {@link STBTTFontinfo} struct
 * @param codepoint the unicode codepoint
 * @param x0        returns the left coordinate
 * @param y0        returns the bottom coordinate
 * @param x1        returns the right coordinate
 * @param y1        returns the top coordinate
 */
	static public function stbtt_GetCodepointBox(info:java.nio.ByteBuffer,codepoint:Int,x0:java.nio.ByteBuffer,y0:java.nio.ByteBuffer,x1:java.nio.ByteBuffer,y1:java.nio.ByteBuffer):Int;
	@:overload(function (info:java.nio.ByteBuffer,codepoint:Int,x0:java.nio.IntBuffer,y0:java.nio.IntBuffer,x1:java.nio.IntBuffer,y1:java.nio.IntBuffer):Int {})
/**
 * Cleans up the packing context and frees all memory.
 *
 * @param spc an {@link STBTTPackContext} struct
 */
	static public function stbtt_PackEnd(spc:java.nio.ByteBuffer):Void;
/** JNI method for {@link #stbtt_GetFontOffsetForIndex GetFontOffsetForIndex}  */
	static public function nstbtt_GetFontOffsetForIndex(data:haxe.Int64,index:Int):Int;
/** Alternative version of: {@link #stbtt_PackFontRange PackFontRange}  */
/**
 * Creates character bitmaps from the {@code font_index}'th font found in fontdata (use {@code font_index=0} if you don't know what that is). It creates
 * {@code num_chars_in_range} bitmaps for characters with unicode values starting at {@code first_unicode_char_in_range} and increasing. Data for how to
 * render them is stored in {@code chardata_for_range}; pass these to {@link #stbtt_GetPackedQuad GetPackedQuad} to get back renderable quads.
 *
 * @param spc                         an {@link STBTTPackContext} struct
 * @param fontdata                    the font data
 * @param font_index                  the font index (use 0 if you don't know what that is
 * @param font_size                   the full height of the character from ascender to descender, as computed by {@link #stbtt_ScaleForPixelHeight ScaleForPixelHeight}. To use a point size as computed by
 *                                    {@link #stbtt_ScaleForMappingEmToPixels ScaleForMappingEmToPixels}, wrap the font size in {@link #STBTT_POINT_SIZE} and pass the result, i.e.:
 *                                    <pre><code style="font-family: monospace">
 *                                    ...,                  20 , ... // font max minus min y is 20 pixels tall
 *                                    ..., STBTT_POINT_SIZE(20), ... // 'M' is 20 pixels tall</code></pre>
 * @param first_unicode_char_in_range the first unicode code point in the range
 * @param num_chars_in_range          the number of unicode code points in the range
 * @param chardata_for_range          an array of {@link STBTTPackedchar} structs
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbtt_PackFontRange(spc:java.nio.ByteBuffer,fontdata:java.nio.ByteBuffer,font_index:Int,font_size:Float,first_unicode_char_in_range:Int,num_chars_in_range:Int,chardata_for_range:java.nio.ByteBuffer):Int;
	@:overload(function (spc:java.nio.ByteBuffer,fontdata:java.nio.ByteBuffer,font_index:Int,font_size:Float,first_unicode_char_in_range:Int,chardata_for_range:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #stbtt_GetGlyphKernAdvance GetGlyphKernAdvance}  */
	static public function nstbtt_GetGlyphKernAdvance(info:haxe.Int64,glyph1:Int,glyph2:Int):Int;
/** JNI method for {@link #stbtt_FreeShape FreeShape}  */
	static public function nstbtt_FreeShape(info:haxe.Int64,vertices:haxe.Int64):Void;
/** JNI method for {@link #stbtt_GetCodepointBitmap GetCodepointBitmap}  */
	static public function nstbtt_GetCodepointBitmap(info:haxe.Int64,scale_x:Float,scale_y:Float,codepoint:Int,width:haxe.Int64,height:haxe.Int64,xoff:haxe.Int64,yoff:haxe.Int64):haxe.Int64;
/** Alternative version of: {@link #stbtt_GetGlyphBitmap GetGlyphBitmap}  */
/**
 * Allocates a large-enough single-channel 8bpp bitmap and renders the specified character/glyph at the specified scale into it, with antialiasing.
 *
 * @param info    an {@link STBTTFontinfo} struct
 * @param scale_x the horizontal scale
 * @param scale_y the vertical scale
 * @param glyph   the glyph index to render
 * @param width   returns the bitmap width
 * @param height  returns the bitmap height
 * @param xoff    returns the horizontal offset in pixel space from the glyph origin to the left of the bitmap
 * @param yoff    returns the vertical offset in pixel space from the glyph origin to the top of the bitmap
 */
	static public function stbtt_GetGlyphBitmap(info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,glyph:Int,width:java.nio.ByteBuffer,height:java.nio.ByteBuffer,xoff:java.nio.ByteBuffer,yoff:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,glyph:Int,width:java.nio.IntBuffer,height:java.nio.IntBuffer,xoff:java.nio.IntBuffer,yoff:java.nio.IntBuffer):java.nio.ByteBuffer {})
/** Alternative version of: {@link #stbtt_GetGlyphBitmapBoxSubpixel GetGlyphBitmapBoxSubpixel}  */
/**
 * Same as {@link #stbtt_GetGlyphBitmapBox GetGlyphBitmapBox}, but you can specify a subpixel shift for the character.
 *
 * @param font    an {@link STBTTFontinfo} struct
 * @param glyph   the glyph index
 * @param scale_x the horizontal scale
 * @param scale_y the vertical scale
 * @param shift_x the horizontal subpixel shift
 * @param shift_y the vertical subpixel shift
 * @param ix0     returns the left coordinate
 * @param iy0     returns the bottom coordinate
 * @param ix1     returns the right coordinate
 * @param iy1     returns the top coordinate
 */
	static public function stbtt_GetGlyphBitmapBoxSubpixel(font:java.nio.ByteBuffer,glyph:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,ix0:java.nio.ByteBuffer,iy0:java.nio.ByteBuffer,ix1:java.nio.ByteBuffer,iy1:java.nio.ByteBuffer):Void;
	@:overload(function (font:java.nio.ByteBuffer,glyph:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,ix0:java.nio.IntBuffer,iy0:java.nio.IntBuffer,ix1:java.nio.IntBuffer,iy1:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #stbtt_GetCodepointShape GetCodepointShape}  */
/**
 * Returns number of vertices and fills {@code *vertices} with the pointer to them
 * 
 * <p>The shape is a series of countours. Each one starts with a {@link #STBTT_vmove vmove}, then consists of a series of mixed {@link #STBTT_vline vline} and {@link #STBTT_vcurve vcurve} segments. A {@link #STBTT_vline vline} draws a
 * line from previous endpoint to its {@code x,y}; a {@link #STBTT_vcurve vcurve} draws a quadratic bezier from previous endpoint to its {@code x,y}, using {@code cx,cy} as
 * the bezier control point.</p>
 * 
 * <p>The {@link STBTTVertex} values are expressed in "unscaled" coordinates.</p>
 *
 * @param info              an {@link STBTTFontinfo} struct
 * @param unicode_codepoint the unicode codepoint
 * @param vertices          returns a pointer to an array of {@link STBTTVertex} structs
 */
	static public function stbtt_GetCodepointShape(info:java.nio.ByteBuffer,unicode_codepoint:Int,vertices:java.nio.ByteBuffer):Int;
	@:overload(function (info:java.nio.ByteBuffer,unicode_codepoint:Int,vertices:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #stbtt_GetGlyphBitmap GetGlyphBitmap}  */
	static public function nstbtt_GetGlyphBitmap(info:haxe.Int64,scale_x:Float,scale_y:Float,glyph:Int,width:haxe.Int64,height:haxe.Int64,xoff:haxe.Int64,yoff:haxe.Int64):haxe.Int64;
/** JNI method for {@link #stbtt_PackSetOversampling PackSetOversampling}  */
	static public function nstbtt_PackSetOversampling(spc:haxe.Int64,h_oversample:Int,v_oversample:Int):Void;
/** Alternative version of: {@link #stbtt_GetGlyphShape GetGlyphShape}  */
/**
 * Glyph version of {@link #stbtt_GetCodepointShape GetCodepointShape}, for greater efficiency.
 *
 * @param info        an {@link STBTTFontinfo} struct
 * @param glyph_index the unicode codepoint
 * @param vertices    returns a pointer to an array of {@link STBTTVertex} structs
 */
	static public function stbtt_GetGlyphShape(info:java.nio.ByteBuffer,glyph_index:Int,vertices:java.nio.ByteBuffer):Int;
	@:overload(function (info:java.nio.ByteBuffer,glyph_index:Int,vertices:org.lwjgl.PointerBuffer):Int {})
/** Alternative version of: {@link #stbtt_GetCodepointHMetrics GetCodepointHMetrics}  */
/**
 * Returns horizontal metrics for the specified codepoint.
 * 
 * <p>The returned values are expressed in unscaled coordinates.</p>
 *
 * @param info            an {@link STBTTFontinfo} struct
 * @param codepoint       the unicode codepoint
 * @param advanceWidth    the offset from the current horizontal position to the next horizontal position
 * @param leftSideBearing the offset from the current horizontal position to the left edge of the character
 */
	static public function stbtt_GetCodepointHMetrics(info:java.nio.ByteBuffer,codepoint:Int,advanceWidth:java.nio.ByteBuffer,leftSideBearing:java.nio.ByteBuffer):Void;
	@:overload(function (info:java.nio.ByteBuffer,codepoint:Int,advanceWidth:java.nio.IntBuffer,leftSideBearing:java.nio.IntBuffer):Void {})
/** JNI method for {@link #stbtt_MakeGlyphBitmapSubpixel MakeGlyphBitmapSubpixel}  */
	static public function nstbtt_MakeGlyphBitmapSubpixel(info:haxe.Int64,output:haxe.Int64,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,glyph:Int):Void;
/** JNI method for {@link #stbtt_FindMatchingFont FindMatchingFont}  */
	static public function nstbtt_FindMatchingFont(fontdata:haxe.Int64,name:haxe.Int64,flags:Int):Int;
/**
 * Same as {@link #stbtt_GetGlyphBitmap GetGlyphBitmap}, but you pass in storage for the bitmap in the form of {@code output}, with row spacing of {@code out_stride} bytes. The
 * bitmap is clipped to {@code out_w/out_h} bytes. Call {@link #stbtt_GetGlyphBitmapBox GetGlyphBitmapBox} to get the width and height and positioning info for it first.
 *
 * @param info       an {@link STBTTFontinfo} struct
 * @param output     the bitmap storage
 * @param out_w      the bitmap width
 * @param out_h      the bitmap height
 * @param out_stride the row stride, in bytes
 * @param scale_x    the horizontal scale
 * @param scale_y    the vertical scale
 * @param glyph      the glyph index to render
 */
	static public function stbtt_MakeGlyphBitmap(info:java.nio.ByteBuffer,output:java.nio.ByteBuffer,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,glyph:Int):Void;
/** JNI method for {@link #stbtt_CompareUTF8toUTF16_bigendian CompareUTF8toUTF16_bigendian}  */
	static public function nstbtt_CompareUTF8toUTF16_bigendian(s1:haxe.Int64,len1:Int,s2:haxe.Int64,len2:Int):Int;
/**
 * Converts the full height of a character from ascender to descender, as computed by {@link #stbtt_ScaleForPixelHeight ScaleForPixelHeight}, to a point size as computed by
 * {@link #stbtt_ScaleForMappingEmToPixels ScaleForMappingEmToPixels}.
 *
 * @param font_size the full height of a character
 *
 * @return the point size of the character
 */
	static public function STBTT_POINT_SIZE(font_size:Int):Int;
/** Alternative version of: {@link #stbtt_GetPackedQuad GetPackedQuad}  */
/**
 * Computes quad to draw for a given char and advances the current position.
 * 
 * <p>The coordinate system used assumes y increases downwards. Characters will extend both above and below the current position; see discussion of
 * "BASELINE" above.</p>
 *
 * @param chardata         an array of {@link STBTTPackedchar} structs
 * @param pw               the bitmap width, in pixels
 * @param ph               the bitmap height, in pixels
 * @param char_index       the character index in the {@code chardata} array
 * @param xpos             the current x position, in screen pixel space
 * @param ypos             the current y position, in screen pixel space
 * @param q                an {@link STBTTAlignedQuad} struct in which to return the quad to draw
 * @param align_to_integer 1 to align the quad to integer coordinates
 */
	static public function stbtt_GetPackedQuad(chardata:java.nio.ByteBuffer,pw:Int,ph:Int,char_index:Int,xpos:java.nio.ByteBuffer,ypos:java.nio.ByteBuffer,q:java.nio.ByteBuffer,align_to_integer:Int):Void;
	@:overload(function (chardata:java.nio.ByteBuffer,pw:Int,ph:Int,char_index:Int,xpos:java.nio.FloatBuffer,ypos:java.nio.FloatBuffer,q:java.nio.ByteBuffer,align_to_integer:Int):Void {})
/** Alternative version of: {@link #stbtt_GetGlyphBitmapSubpixel GetGlyphBitmapSubpixel}  */
/**
 * Same as {@link #stbtt_GetGlyphBitmap GetGlyphBitmap}, but you can specify a subpixel shift for the character.
 *
 * @param info    an {@link STBTTFontinfo} struct
 * @param scale_x the horizontal scale
 * @param scale_y the vertical scale
 * @param shift_x the horizontal subpixel shift
 * @param shift_y the vertical subpixel shift
 * @param glyph   the glyph index to render
 * @param width   returns the bitmap width
 * @param height  returns the bitmap height
 * @param xoff    returns the horizontal offset in pixel space from the glyph origin to the left of the bitmap
 * @param yoff    returns the vertical offset in pixel space from the glyph origin to the top of the bitmap
 */
	static public function stbtt_GetGlyphBitmapSubpixel(info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,glyph:Int,width:java.nio.ByteBuffer,height:java.nio.ByteBuffer,xoff:java.nio.ByteBuffer,yoff:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (info:java.nio.ByteBuffer,scale_x:Float,scale_y:Float,shift_x:Float,shift_y:Float,glyph:Int,width:java.nio.IntBuffer,height:java.nio.IntBuffer,xoff:java.nio.IntBuffer,yoff:java.nio.IntBuffer):java.nio.ByteBuffer {})
/**
 * Computes a scale factor to produce a font whose EM size is mapped to {@code pixels} tall. This is probably what traditional APIs compute, but I'm not
 * positive.
 *
 * @param info   an {@link STBTTFontinfo} struct
 * @param pixels the font height, in pixels
 *
 * @return the scale factor
 */
	static public function stbtt_ScaleForMappingEmToPixels(info:java.nio.ByteBuffer,pixels:Float):Float;
/** JNI method for {@link #stbtt_GetFontVMetrics GetFontVMetrics}  */
	static public function nstbtt_GetFontVMetrics(info:haxe.Int64,ascent:haxe.Int64,descent:haxe.Int64,lineGap:haxe.Int64):Void;
/** JNI method for {@link #stbtt_GetPackedQuad GetPackedQuad}  */
	static public function nstbtt_GetPackedQuad(chardata:haxe.Int64,pw:Int,ph:Int,char_index:Int,xpos:haxe.Int64,ypos:haxe.Int64,q:haxe.Int64,align_to_integer:Int):Void;
/** JNI method for {@link #stbtt_GetFontNameString GetFontNameString}  */
	static public function nstbtt_GetFontNameString(font:haxe.Int64,length:haxe.Int64,platformID:Int,encodingID:Int,languageID:Int,nameID:Int):haxe.Int64;
/** Alternative version of: {@link #stbtt_PackFontRanges PackFontRanges}  */
/**
 * Creates character bitmaps from multiple ranges of characters stored in ranges. This will usually create a better-packed bitmap than multiple calls to
 * {@link #stbtt_PackFontRange PackFontRange}.
 *
 * @param spc        an {@link STBTTPackContext} struct
 * @param fontdata   the font data
 * @param font_index the font index (use 0 if you don't know what that is
 * @param ranges     an array of {@link STBTTPackRange} structs
 * @param num_ranges the number of {@link STBTTPackRange} structs in {@code ranges}
 *
 * @return 1 on success, 0 on failure
 */
	static public function stbtt_PackFontRanges(spc:java.nio.ByteBuffer,fontdata:java.nio.ByteBuffer,font_index:Int,ranges:java.nio.ByteBuffer,num_ranges:Int):Int;
	@:overload(function (spc:java.nio.ByteBuffer,fontdata:java.nio.ByteBuffer,font_index:Int,ranges:java.nio.ByteBuffer):Int {})
/** Alternative version of: {@link #stbtt_GetGlyphBox GetGlyphBox}  */
/**
 * Glyph version of {@link #stbtt_GetCodepointBox GetCodepointBox}, for greater efficiency.
 *
 * @param info        an {@link STBTTFontinfo} struct
 * @param glyph_index the glyph index
 * @param x0          returns the left coordinate
 * @param y0          returns the bottom coordinate
 * @param x1          returns the right coordinate
 * @param y1          returns the top coordinate
 */
	static public function stbtt_GetGlyphBox(info:java.nio.ByteBuffer,glyph_index:Int,x0:java.nio.ByteBuffer,y0:java.nio.ByteBuffer,x1:java.nio.ByteBuffer,y1:java.nio.ByteBuffer):Int;
	@:overload(function (info:java.nio.ByteBuffer,glyph_index:Int,x0:java.nio.IntBuffer,y0:java.nio.IntBuffer,x1:java.nio.IntBuffer,y1:java.nio.IntBuffer):Int {})
/**
 * Same as {@link #stbtt_GetCodepointBitmap GetCodepointBitmap}, but you pass in storage for the bitmap in the form of {@code output}, with row spacing of {@code out_stride} bytes. The
 * bitmap is clipped to {@code out_w/out_h} bytes. Call {@link #stbtt_GetCodepointBitmapBox GetCodepointBitmapBox} to get the width and height and positioning info for it first.
 *
 * @param info       an {@link STBTTFontinfo} struct
 * @param output     the bitmap storage
 * @param out_w      the bitmap width
 * @param out_h      the bitmap height
 * @param out_stride the row stride, in bytes
 * @param scale_x    the horizontal scale
 * @param scale_y    the vertical scale
 * @param codepoint  the unicode codepoint to render
 */
	static public function stbtt_MakeCodepointBitmap(info:java.nio.ByteBuffer,output:java.nio.ByteBuffer,out_w:Int,out_h:Int,out_stride:Int,scale_x:Float,scale_y:Float,codepoint:Int):Void;
/** JNI method for {@link #stbtt_ScaleForMappingEmToPixels ScaleForMappingEmToPixels}  */
	static public function nstbtt_ScaleForMappingEmToPixels(info:haxe.Int64,pixels:Float):Float;
/**
 * Each .ttf/.ttc file may have more than one font. Each font has a sequential index number starting from 0. Call this function to get the font offset for
 * a given index; it returns -1 if the index is out of range. A regular .ttf file will only define one font and it always be at offset 0, so it will
 * return '0' for index 0, and -1 for all other indices. You can just skip this step if you know it's that kind of font.
 *
 * @param data  the font data
 * @param index the font index
 */
	static public function stbtt_GetFontOffsetForIndex(data:java.nio.ByteBuffer,index:Int):Int;
/** Alternative version of: {@link #stbtt_GetGlyphBitmapBox GetGlyphBitmapBox}  */
/**
 * Get the bbox of the bitmap centered around the glyph origin; so the bitmap width is {@code ix1-ix0}, height is {@code iy1-iy0}, and location to place
 * the bitmap top left is {@code (leftSideBearing*scale,iy0)}.
 * 
 * <p>Note that the bitmap uses y-increases-down, but the shape uses y-increases-up, so {@code GlyphBitmapBox} and {@code GlyphBox} are inverted.</p>
 *
 * @param font    an {@link STBTTFontinfo} struct
 * @param glyph   the glyph index
 * @param scale_x the horizontal scale
 * @param scale_y the vertical scale
 * @param ix0     returns the left coordinate
 * @param iy0     returns the bottom coordinate
 * @param ix1     returns the right coordinate
 * @param iy1     returns the top coordinate
 */
	static public function stbtt_GetGlyphBitmapBox(font:java.nio.ByteBuffer,glyph:Int,scale_x:Float,scale_y:Float,ix0:java.nio.ByteBuffer,iy0:java.nio.ByteBuffer,ix1:java.nio.ByteBuffer,iy1:java.nio.ByteBuffer):Void;
	@:overload(function (font:java.nio.ByteBuffer,glyph:Int,scale_x:Float,scale_y:Float,ix0:java.nio.IntBuffer,iy0:java.nio.IntBuffer,ix1:java.nio.IntBuffer,iy1:java.nio.IntBuffer):Void {})
/**
 * Returns the string (which may be big-endian double byte, e.g. for unicode) and puts the length in bytes in {@code *length}.
 * 
 * <p>See the truetype spec:
 * <ul>
 * <li><a href="https://developer.apple.com/fonts/TrueType-Reference-Manual/RM06/Chap6name.html">TrueType Reference Manual - The 'name' table</a></li>
 * <li><a href="http://www.microsoft.com/typography/otspec/name.htm">OpenType™ Specification - The Naming Table</a></li>
 * </ul></p>
 *
 * @param font       an {@link STBTTFontinfo} struct
 * @param platformID the platform ID. One of:<br>{@link #STBTT_PLATFORM_ID_UNICODE PLATFORM_ID_UNICODE}, {@link #STBTT_PLATFORM_ID_MAC PLATFORM_ID_MAC}, {@link #STBTT_PLATFORM_ID_ISO PLATFORM_ID_ISO}, {@link #STBTT_PLATFORM_ID_MICROSOFT PLATFORM_ID_MICROSOFT}
 * @param encodingID the encoding ID. One of:<br>{@link #STBTT_UNICODE_EID_UNICODE_1_0 UNICODE_EID_UNICODE_1_0}, {@link #STBTT_UNICODE_EID_UNICODE_1_1 UNICODE_EID_UNICODE_1_1}, {@link #STBTT_UNICODE_EID_ISO_10646 UNICODE_EID_ISO_10646}, {@link #STBTT_UNICODE_EID_UNICODE_2_0_BMP UNICODE_EID_UNICODE_2_0_BMP}, {@link #STBTT_UNICODE_EID_UNICODE_2_0_FULL UNICODE_EID_UNICODE_2_0_FULL}, {@link #STBTT_MS_EID_SYMBOL MS_EID_SYMBOL}, {@link #STBTT_MS_EID_UNICODE_BMP MS_EID_UNICODE_BMP}, {@link #STBTT_MS_EID_SHIFTJIS MS_EID_SHIFTJIS}, {@link #STBTT_MS_EID_UNICODE_FULL MS_EID_UNICODE_FULL}, {@link #STBTT_MAC_EID_ROMAN MAC_EID_ROMAN}, {@link #STBTT_MAC_EID_JAPANESE MAC_EID_JAPANESE}, {@link #STBTT_MAC_EID_CHINESE_TRAD MAC_EID_CHINESE_TRAD}, {@link #STBTT_MAC_EID_KOREAN MAC_EID_KOREAN}, {@link #STBTT_MAC_EID_ARABIC MAC_EID_ARABIC}, {@link #STBTT_MAC_EID_HEBREW MAC_EID_HEBREW}, {@link #STBTT_MAC_EID_GREEK MAC_EID_GREEK}, {@link #STBTT_MAC_EID_RUSSIAN MAC_EID_RUSSIAN}
 * @param languageID the language ID. One of:<br>{@link #STBTT_MS_LANG_ENGLISH MS_LANG_ENGLISH}, {@link #STBTT_MS_LANG_CHINESE MS_LANG_CHINESE}, {@link #STBTT_MS_LANG_DUTCH MS_LANG_DUTCH}, {@link #STBTT_MS_LANG_FRENCH MS_LANG_FRENCH}, {@link #STBTT_MS_LANG_GERMAN MS_LANG_GERMAN}, {@link #STBTT_MS_LANG_HEBREW MS_LANG_HEBREW}, {@link #STBTT_MS_LANG_ITALIAN MS_LANG_ITALIAN}, {@link #STBTT_MS_LANG_JAPANESE MS_LANG_JAPANESE}, {@link #STBTT_MS_LANG_KOREAN MS_LANG_KOREAN}, {@link #STBTT_MS_LANG_RUSSIAN MS_LANG_RUSSIAN}, {@link #STBTT_MS_LANG_SPANISH MS_LANG_SPANISH}, {@link #STBTT_MS_LANG_SWEDISH MS_LANG_SWEDISH}, {@link #STBTT_MAC_LANG_ENGLISH MAC_LANG_ENGLISH}, {@link #STBTT_MAC_LANG_ARABIC MAC_LANG_ARABIC}, {@link #STBTT_MAC_LANG_DUTCH MAC_LANG_DUTCH}, {@link #STBTT_MAC_LANG_FRENCH MAC_LANG_FRENCH}, {@link #STBTT_MAC_LANG_GERMAN MAC_LANG_GERMAN}, {@link #STBTT_MAC_LANG_HEBREW MAC_LANG_HEBREW}, {@link #STBTT_MAC_LANG_ITALIAN MAC_LANG_ITALIAN}, {@link #STBTT_MAC_LANG_JAPANESE MAC_LANG_JAPANESE}, {@link #STBTT_MAC_LANG_KOREAN MAC_LANG_KOREAN}, {@link #STBTT_MAC_LANG_RUSSIAN MAC_LANG_RUSSIAN}, {@link #STBTT_MAC_LANG_SPANISH MAC_LANG_SPANISH}, {@link #STBTT_MAC_LANG_SWEDISH MAC_LANG_SWEDISH}, {@link #STBTT_MAC_LANG_CHINESE_SIMPLIFIED MAC_LANG_CHINESE_SIMPLIFIED}, {@link #STBTT_MAC_LANG_CHINESE_TRAD MAC_LANG_CHINESE_TRAD}
 * @param nameID     the name ID
 */
	static public function stbtt_GetFontNameString(font:java.nio.ByteBuffer,platformID:Int,encodingID:Int,languageID:Int,nameID:Int):java.nio.ByteBuffer;
/** JNI method for {@link #stbtt_BakeFontBitmap BakeFontBitmap}  */
	static public function nstbtt_BakeFontBitmap(data:haxe.Int64,offset:Int,pixel_height:Float,pixels:haxe.Int64,pw:Int,ph:Int,first_char:Int,num_chars:Int,chardata:haxe.Int64):Int;
/**
 * Computes a scale factor to produce a font whose "height" is {@code pixels} tall. Height is measured as the distance from the highest ascender to the
 * lowest descender; in other words, it's equivalent to calling {@link #stbtt_GetFontVMetrics GetFontVMetrics} and computing:
 * <pre><code style="font-family: monospace">
 * scale = pixels / (ascent - descent)</code></pre>
 * so if you prefer to measure height by the ascent only, use a similar calculation.
 *
 * @param info   an {@link STBTTFontinfo} struct
 * @param pixels the font height, in pixels
 *
 * @return the scale factor
 */
	static public function stbtt_ScaleForPixelHeight(info:java.nio.ByteBuffer,pixels:Float):Float;
/** JNI method for {@link #stbtt_GetGlyphBox GetGlyphBox}  */
	static public function nstbtt_GetGlyphBox(info:haxe.Int64,glyph_index:Int,x0:haxe.Int64,y0:haxe.Int64,x1:haxe.Int64,y1:haxe.Int64):Int;
/** JNI method for {@link #stbtt_PackEnd PackEnd}  */
	static public function nstbtt_PackEnd(spc:haxe.Int64):Void;

}
