package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Xf86vmode")
@:final
/** Native bindings to &lt;X11/extensions/xf86vmode.h&gt;.  */
extern class Xf86vmode 
{
/**
 * Returns the lowest numbered error and event values assigned to the extension.
 *
 * @param display    the connection to the X server
 * @param event_base the lowest numbered event value
 * @param error_base the lowest numbered error value
 */
/** Alternative version of: {@link #XF86VidModeQueryExtension}  */
	static public function XF86VidModeQueryExtension(display:haxe.Int64,event_base:java.nio.IntBuffer,error_base:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,event_base:java.nio.ByteBuffer,error_base:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XF86VidModeGetGammaRampSize}  */
	static public function nXF86VidModeGetGammaRampSize(display:haxe.Int64,screen:Int,size:haxe.Int64):Int;
/**
 * Returns the gamma ramp size.
 *
 * @param display the connection to the X server
 * @param screen  the screen number
 * @param size    the gamma ramp size
 */
/** Alternative version of: {@link #XF86VidModeGetGammaRampSize}  */
	static public function XF86VidModeGetGammaRampSize(display:haxe.Int64,screen:Int,size:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,screen:Int,size:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XF86VidModeGetGammaRamp}  */
	static public function nXF86VidModeGetGammaRamp(display:haxe.Int64,screen:Int,size:Int,red_array:haxe.Int64,green_array:haxe.Int64,blue_array:haxe.Int64):Int;
/** JNI method for {@link #XF86VidModeSetGammaRamp}  */
	static public function nXF86VidModeSetGammaRamp(display:haxe.Int64,screen:Int,size:Int,red_array:haxe.Int64,green_array:haxe.Int64,blue_array:haxe.Int64):Int;
/** Alternative version of: {@link #XF86VidModeGetGammaRamp}  */
/**
 * Returns the gamma ramp.
 *
 * @param display     the connection to the X server
 * @param screen      the screen number
 * @param size        the gamma ramp size
 * @param red_array   the red gamma ramp
 * @param green_array the green gamma ramp
 * @param blue_array  the blue gamma ramp
 */
	static public function XF86VidModeGetGammaRamp(display:haxe.Int64,screen:Int,size:Int,red_array:java.nio.ByteBuffer,green_array:java.nio.ByteBuffer,blue_array:java.nio.ByteBuffer):Int;
	@:overload(function (display:haxe.Int64,screen:Int,red_array:java.nio.ShortBuffer,green_array:java.nio.ShortBuffer,blue_array:java.nio.ShortBuffer):Int {})
/** Alternative version of: {@link #XF86VidModeSetGammaRamp}  */
/**
 * Sets the gamma ramp.
 *
 * @param display     the connection to the X server
 * @param screen      the screen number
 * @param size        the gamma ramp size
 * @param red_array   the red gamma ramp
 * @param green_array the green gamma ramp
 * @param blue_array  the blue gamma ramp
 */
	static public function XF86VidModeSetGammaRamp(display:haxe.Int64,screen:Int,size:Int,red_array:java.nio.ByteBuffer,green_array:java.nio.ByteBuffer,blue_array:java.nio.ByteBuffer):Int;
	@:overload(function (display:haxe.Int64,screen:Int,red_array:java.nio.ShortBuffer,green_array:java.nio.ShortBuffer,blue_array:java.nio.ShortBuffer):Int {})
/** JNI method for {@link #XF86VidModeQueryExtension}  */
	static public function nXF86VidModeQueryExtension(display:haxe.Int64,event_base:haxe.Int64,error_base:haxe.Int64):Int;

}
