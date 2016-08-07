package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXEXTVisualInfo")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/visual_rating.txt">GLX_EXT_visual_info</a> extension.
 * 
 * <p>This extension allows the user to request a particular X visual type to be associated with a GLX visual, and allows the user to query the X visual type
 * underlying a GLX visual.</p>
 * 
 * <p>In addition, this extension provides a means to request a visual with a transparent pixel and to query whether a visual supports a transparent pixel
 * value and the value of the transparent pixel. Note that the notion of level and transparent pixels are orthogonal as both layer 1 and layer 0 visuals
 * may or may not have a transparent pixel value.</p>
 */
extern class GLXEXTVisualInfo 
{
/** Accepted by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}, and by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual}.  */
	inline static public var GLX_X_VISUAL_TYPE_EXT:Int = 34;
/** Accepted by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}, and by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual}.  */
	inline static public var GLX_TRANSPARENT_TYPE_EXT:Int = 35;
/** Accepted by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}, and by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual}.  */
	inline static public var GLX_TRANSPARENT_INDEX_VALUE_EXT:Int = 36;
/** Accepted by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}, and by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual}.  */
	inline static public var GLX_TRANSPARENT_RED_VALUE_EXT:Int = 37;
/** Accepted by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}, and by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual}.  */
	inline static public var GLX_TRANSPARENT_GREEN_VALUE_EXT:Int = 38;
/** Accepted by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}, and by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual}.  */
	inline static public var GLX_TRANSPARENT_BLUE_VALUE_EXT:Int = 39;
/** Accepted by the {@code attrib} parameter of {@link GLX#glXGetConfig GetConfig}, and by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual}.  */
	inline static public var GLX_TRANSPARENT_ALPHA_VALUE_EXT:Int = 40;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_X_VISUAL_TYPE_EXT X_VISUAL_TYPE_EXT} token).
 */
	inline static public var GLX_TRUE_COLOR_EXT:Int = 32770;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_X_VISUAL_TYPE_EXT X_VISUAL_TYPE_EXT} token).
 */
	inline static public var GLX_DIRECT_COLOR_EXT:Int = 32771;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_X_VISUAL_TYPE_EXT X_VISUAL_TYPE_EXT} token).
 */
	inline static public var GLX_PSEUDO_COLOR_EXT:Int = 32772;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_X_VISUAL_TYPE_EXT X_VISUAL_TYPE_EXT} token).
 */
	inline static public var GLX_STATIC_COLOR_EXT:Int = 32773;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_X_VISUAL_TYPE_EXT X_VISUAL_TYPE_EXT} token).
 */
	inline static public var GLX_GRAY_SCALE_EXT:Int = 32774;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_X_VISUAL_TYPE_EXT X_VISUAL_TYPE_EXT} token).
 */
	inline static public var GLX_STATIC_GRAY_EXT:Int = 32775;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_TRANSPARENT_TYPE_EXT TRANSPARENT_TYPE_EXT} token).
 */
	inline static public var GLX_NONE_EXT:Int = 32768;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_TRANSPARENT_TYPE_EXT TRANSPARENT_TYPE_EXT} token).
 */
	inline static public var GLX_TRANSPARENT_RGB_EXT:Int = 32776;
/**
 * Returned by {@link GLX#glXGetConfig GetConfig}, and accepted by the {@code attrib_list} parameter of {@link GLX#glXChooseVisual ChooseVisual} (following the
 * {@link #GLX_TRANSPARENT_TYPE_EXT TRANSPARENT_TYPE_EXT} token).
 */
	inline static public var GLX_TRANSPARENT_INDEX_EXT:Int = 32777;

}
