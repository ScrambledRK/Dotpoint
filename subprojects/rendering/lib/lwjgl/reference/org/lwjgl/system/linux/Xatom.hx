package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Xatom")
@:final
/** Native bindings to Xatom.h.  */
extern class Xatom 
{
/** Predefined atoms.  */
	inline static public var XA_PRIMARY:haxe.Int64 = 1;
/** Predefined atoms.  */
	inline static public var XA_SECONDARY:haxe.Int64 = 2;
/** Predefined atoms.  */
	inline static public var XA_ARC:haxe.Int64 = 3;
/** Predefined atoms.  */
	inline static public var XA_ATOM:haxe.Int64 = 4;
/** Predefined atoms.  */
	inline static public var XA_BITMAP:haxe.Int64 = 5;
/** Predefined atoms.  */
	inline static public var XA_CARDINAL:haxe.Int64 = 6;
/** Predefined atoms.  */
	inline static public var XA_COLORMAP:haxe.Int64 = 7;
/** Predefined atoms.  */
	inline static public var XA_CURSOR:haxe.Int64 = 8;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER0:haxe.Int64 = 9;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER1:haxe.Int64 = 10;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER2:haxe.Int64 = 11;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER3:haxe.Int64 = 12;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER4:haxe.Int64 = 13;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER5:haxe.Int64 = 14;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER6:haxe.Int64 = 15;
/** Predefined atoms.  */
	inline static public var XA_CUT_BUFFER7:haxe.Int64 = 16;
/** Predefined atoms.  */
	inline static public var XA_DRAWABLE:haxe.Int64 = 17;
/** Predefined atoms.  */
	inline static public var XA_FONT:haxe.Int64 = 18;
/** Predefined atoms.  */
	inline static public var XA_INTEGER:haxe.Int64 = 19;
/** Predefined atoms.  */
	inline static public var XA_PIXMAP:haxe.Int64 = 20;
/** Predefined atoms.  */
	inline static public var XA_POINT:haxe.Int64 = 21;
/** Predefined atoms.  */
	inline static public var XA_RECTANGLE:haxe.Int64 = 22;
/** Predefined atoms.  */
	inline static public var XA_RESOURCE_MANAGER:haxe.Int64 = 23;
/** Predefined atoms.  */
	inline static public var XA_RGB_COLOR_MAP:haxe.Int64 = 24;
/** Predefined atoms.  */
	inline static public var XA_RGB_BEST_MAP:haxe.Int64 = 25;
/** Predefined atoms.  */
	inline static public var XA_RGB_BLUE_MAP:haxe.Int64 = 26;
/** Predefined atoms.  */
	inline static public var XA_RGB_DEFAULT_MAP:haxe.Int64 = 27;
/** Predefined atoms.  */
	inline static public var XA_RGB_GRAY_MAP:haxe.Int64 = 28;
/** Predefined atoms.  */
	inline static public var XA_RGB_GREEN_MAP:haxe.Int64 = 29;
/** Predefined atoms.  */
	inline static public var XA_RGB_RED_MAP:haxe.Int64 = 30;
/** Predefined atoms.  */
	inline static public var XA_STRING:haxe.Int64 = 31;
/** Predefined atoms.  */
	inline static public var XA_VISUALID:haxe.Int64 = 32;
/** Predefined atoms.  */
	inline static public var XA_WINDOW:haxe.Int64 = 33;
/** Predefined atoms.  */
	inline static public var XA_WM_COMMAND:haxe.Int64 = 34;
/** Predefined atoms.  */
	inline static public var XA_WM_HINTS:haxe.Int64 = 35;
/** Predefined atoms.  */
	inline static public var XA_WM_CLIENT_MACHINE:haxe.Int64 = 36;
/** Predefined atoms.  */
	inline static public var XA_WM_ICON_NAME:haxe.Int64 = 37;
/** Predefined atoms.  */
	inline static public var XA_WM_ICON_SIZE:haxe.Int64 = 38;
/** Predefined atoms.  */
	inline static public var XA_WM_NAME:haxe.Int64 = 39;
/** Predefined atoms.  */
	inline static public var XA_WM_NORMAL_HINTS:haxe.Int64 = 40;
/** Predefined atoms.  */
	inline static public var XA_WM_SIZE_HINTS:haxe.Int64 = 41;
/** Predefined atoms.  */
	inline static public var XA_WM_ZOOM_HINTS:haxe.Int64 = 42;
/** Predefined atoms.  */
	inline static public var XA_MIN_SPACE:haxe.Int64 = 43;
/** Predefined atoms.  */
	inline static public var XA_NORM_SPACE:haxe.Int64 = 44;
/** Predefined atoms.  */
	inline static public var XA_MAX_SPACE:haxe.Int64 = 45;
/** Predefined atoms.  */
	inline static public var XA_END_SPACE:haxe.Int64 = 46;
/** Predefined atoms.  */
	inline static public var XA_SUPERSCRIPT_X:haxe.Int64 = 47;
/** Predefined atoms.  */
	inline static public var XA_SUPERSCRIPT_Y:haxe.Int64 = 48;
/** Predefined atoms.  */
	inline static public var XA_SUBSCRIPT_X:haxe.Int64 = 49;
/** Predefined atoms.  */
	inline static public var XA_SUBSCRIPT_Y:haxe.Int64 = 50;
/** Predefined atoms.  */
	inline static public var XA_UNDERLINE_POSITION:haxe.Int64 = 51;
/** Predefined atoms.  */
	inline static public var XA_UNDERLINE_THICKNESS:haxe.Int64 = 52;
/** Predefined atoms.  */
	inline static public var XA_STRIKEOUT_ASCENT:haxe.Int64 = 53;
/** Predefined atoms.  */
	inline static public var XA_STRIKEOUT_DESCENT:haxe.Int64 = 54;
/** Predefined atoms.  */
	inline static public var XA_ITALIC_ANGLE:haxe.Int64 = 55;
/** Predefined atoms.  */
	inline static public var XA_X_HEIGHT:haxe.Int64 = 56;
/** Predefined atoms.  */
	inline static public var XA_QUAD_WIDTH:haxe.Int64 = 57;
/** Predefined atoms.  */
	inline static public var XA_WEIGHT:haxe.Int64 = 58;
/** Predefined atoms.  */
	inline static public var XA_POINT_SIZE:haxe.Int64 = 59;
/** Predefined atoms.  */
	inline static public var XA_RESOLUTION:haxe.Int64 = 60;
/** Predefined atoms.  */
	inline static public var XA_COPYRIGHT:haxe.Int64 = 61;
/** Predefined atoms.  */
	inline static public var XA_NOTICE:haxe.Int64 = 62;
/** Predefined atoms.  */
	inline static public var XA_FONT_NAME:haxe.Int64 = 63;
/** Predefined atoms.  */
	inline static public var XA_FAMILY_NAME:haxe.Int64 = 64;
/** Predefined atoms.  */
	inline static public var XA_FULL_NAME:haxe.Int64 = 65;
/** Predefined atoms.  */
	inline static public var XA_CAP_HEIGHT:haxe.Int64 = 66;
/** Predefined atoms.  */
	inline static public var XA_WM_CLASS:haxe.Int64 = 67;
/** Predefined atoms.  */
	inline static public var XA_WM_TRANSIENT_FOR:haxe.Int64 = 68;
/** Predefined atoms.  */
	inline static public var XA_LAST_PREDEFINED:haxe.Int64 = 68;

}
