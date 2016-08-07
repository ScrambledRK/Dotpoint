package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBEasyFont")
@:final
/**
 * Native bindings to stb_easy_font.h from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <p>Bitmap font for use in 3D APIs:
 * <ul>
 * <li>Easy-to-deploy</li>
 * <li>reasonably compact</li>
 * <li>extremely inefficient performance-wise</li>
 * <li>crappy-looking</li>
 * <li>ASCII-only</li>
 * </ul>
 * Intended for when you just want to get some text displaying in a 3D app as quickly as possible.</p>
 * 
 * <p>Doesn't use any textures, instead builds characters out of quads.</p>
 * 
 * <h3>SAMPLE CODE</h3>
 * 
 * <p>Here's sample code for old OpenGL; it's a lot more complicated to make work on modern APIs, and that's your problem.
 * <pre><code style="font-family: monospace">
 * void print_string(float x, float y, char *text, float r, float g, float b)
 * {
 * 	static char buffer[99999]; // ~500 chars
 * 	int num_quads;
 * 
 * 	num_quads = stb_easy_font_print(x, y, text, NULL, buffer, sizeof(buffer));
 * 
 * 	glColor3f(r,g,b);
 * 	glEnableClientState(GL_VERTEX_ARRAY);
 * 	glVertexPointer(2, GL_FLOAT, 16, buffer);
 * 	glDrawArrays(GL_QUADS, 0, num_quads*4);
 * 	glDisableClientState(GL_VERTEX_ARRAY);
 * }</code></pre></p>
 */
extern class STBEasyFont 
{
/** CharSequence version of: {@link #stb_easy_font_width easy_font_width}  */
/**
 * Takes a string without newlines and returns the horizontal size.
 *
 * @param text an ASCII string
 *
 * @return the horizontal size, in pixels
 */
	static public function stb_easy_font_width(text:java.nio.ByteBuffer):Int;
	@:overload(function (text:java.lang.CharSequence):Int {})
/** JNI method for {@link #stb_easy_font_width easy_font_width}  */
	static public function nstb_easy_font_width(text:haxe.Int64):Int;
/**
 * Use positive values to expand the space between characters, and small negative values (no smaller than {@code -1.5}) to contract the space between characters.
 * 
 * <p>E.g. {@code spacing = 1} adds one "pixel" of spacing between the characters. {@code spacing = -1} is reasonable but feels a bit too compact to me;
 * {@code -0.5} is a reasonable compromise as long as you're scaling the font up.</p>
 *
 * @param spacing the font spacing
 */
	static public function stb_easy_font_spacing(spacing:Float):Void;
/** CharSequence version of: {@link #stb_easy_font_print easy_font_print}  */
/** Alternative version of: {@link #stb_easy_font_print easy_font_print}  */
/**
 * Takes a string (which can contain '\n') and fills out a vertex buffer with renderable data to draw the string. Output data assumes increasing x is
 * rightwards, increasing y is downwards.
 * 
 * <p>The vertex data is divided into quads, i.e. there are four vertices in the vertex buffer for each quad.</p>
 * 
 * <p>The vertices are stored in an interleaved format:
 * <pre><code style="font-family: monospace">
 * x:float
 * y:float
 * z:float
 * color:uint8[4]</code></pre>
 * You can ignore z and color if you get them from elsewhere. This format was chosen in the hopes it would make it easier for you to reuse existing
 * buffer-drawing code.</p>
 * 
 * <p>If you pass in {@code NULL} for color, it becomes {@code 255,255,255,255}.</p>
 * 
 * <p>If the buffer isn't large enough, it will truncate. Expect it to use an average of ~270 bytes per character.</p>
 * 
 * <p>If your API doesn't draw quads, build a reusable index list that allows you to render quads as indexed triangles.</p>
 *
 * @param x             the x offset
 * @param y             the y offset
 * @param text          an ASCII string
 * @param color         the text color, in RGBA (4 bytes)
 * @param vertex_buffer a pointer to memory in which to store the vertex data
 * @param vbuf_size     the {@code vertex_buffer} size, in bytes
 *
 * @return the number of quads
 */
	static public function stb_easy_font_print(x:Float,y:Float,text:java.nio.ByteBuffer,color:java.nio.ByteBuffer,vertex_buffer:java.nio.ByteBuffer,vbuf_size:Int):Int;
	@:overload(function (x:Float,y:Float,text:java.lang.CharSequence,color:java.nio.ByteBuffer,vertex_buffer:java.nio.ByteBuffer):Int {})
	@:overload(function (x:Float,y:Float,text:java.nio.ByteBuffer,color:java.nio.ByteBuffer,vertex_buffer:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #stb_easy_font_print easy_font_print}  */
	static public function nstb_easy_font_print(x:Float,y:Float,text:haxe.Int64,color:haxe.Int64,vertex_buffer:haxe.Int64,vbuf_size:Int):Int;

}
