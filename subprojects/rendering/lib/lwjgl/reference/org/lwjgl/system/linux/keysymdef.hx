package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.keysymdef")
@:final
/** Native bindings to keysymdef.h.  */
extern class Keysymdef 
{
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_BackSpace:Int = 65288;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Tab:Int = 65289;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Linefeed:Int = 65290;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Clear:Int = 65291;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Return:Int = 65293;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Pause:Int = 65299;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Scroll_Lock:Int = 65300;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Sys_Req:Int = 65301;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Escape:Int = 65307;
/**
 * TTY Functions, cleverly chosen to map to ascii, for convenience of programming, but could have been arbitrary (at the cost of lookup tables in client
 * code.
 */
	inline static public var XK_Delete:Int = 65535;
/** International & multi-key character composition  */
	inline static public var XK_Multi_key:Int = 65312;
/** Japanese keyboard support  */
	inline static public var XK_Kanji:Int = 65313;
/** Japanese keyboard support  */
	inline static public var XK_Muhenkan:Int = 65314;
/** Japanese keyboard support  */
	inline static public var XK_Henkan_Mode:Int = 65315;
/** Japanese keyboard support  */
	inline static public var XK_Henkan:Int = 65315;
/** Japanese keyboard support  */
	inline static public var XK_Romaji:Int = 65316;
/** Japanese keyboard support  */
	inline static public var XK_Hiragana:Int = 65317;
/** Japanese keyboard support  */
	inline static public var XK_Katakana:Int = 65318;
/** Japanese keyboard support  */
	inline static public var XK_Hiragana_Katakana:Int = 65319;
/** Japanese keyboard support  */
	inline static public var XK_Zenkaku:Int = 65320;
/** Japanese keyboard support  */
	inline static public var XK_Hankaku:Int = 65321;
/** Japanese keyboard support  */
	inline static public var XK_Zenkaku_Hankaku:Int = 65322;
/** Japanese keyboard support  */
	inline static public var XK_Touroku:Int = 65323;
/** Japanese keyboard support  */
	inline static public var XK_Massyo:Int = 65324;
/** Japanese keyboard support  */
	inline static public var XK_Kana_Lock:Int = 65325;
/** Japanese keyboard support  */
	inline static public var XK_Kana_Shift:Int = 65326;
/** Japanese keyboard support  */
	inline static public var XK_Eisu_Shift:Int = 65327;
/** Japanese keyboard support  */
	inline static public var XK_Eisu_toggle:Int = 65328;
/** Cursor control & motion  */
	inline static public var XK_Home:Int = 65360;
/** Cursor control & motion  */
	inline static public var XK_Left:Int = 65361;
/** Cursor control & motion  */
	inline static public var XK_Up:Int = 65362;
/** Cursor control & motion  */
	inline static public var XK_Right:Int = 65363;
/** Cursor control & motion  */
	inline static public var XK_Down:Int = 65364;
/** Cursor control & motion  */
	inline static public var XK_Prior:Int = 65365;
/** Cursor control & motion  */
	inline static public var XK_Page_Up:Int = 65365;
/** Cursor control & motion  */
	inline static public var XK_Next:Int = 65366;
/** Cursor control & motion  */
	inline static public var XK_Page_Down:Int = 65366;
/** Cursor control & motion  */
	inline static public var XK_End:Int = 65367;
/** Cursor control & motion  */
	inline static public var XK_Begin:Int = 65368;
/** Misc Functions  */
	inline static public var XK_Select:Int = 65376;
/** Misc Functions  */
	inline static public var XK_Print:Int = 65377;
/** Misc Functions  */
	inline static public var XK_Execute:Int = 65378;
/** Misc Functions  */
	inline static public var XK_Insert:Int = 65379;
/** Misc Functions  */
	inline static public var XK_Undo:Int = 65381;
/** Misc Functions  */
	inline static public var XK_Redo:Int = 65382;
/** Misc Functions  */
	inline static public var XK_Menu:Int = 65383;
/** Misc Functions  */
	inline static public var XK_Find:Int = 65384;
/** Misc Functions  */
	inline static public var XK_Cancel:Int = 65385;
/** Misc Functions  */
	inline static public var XK_Help:Int = 65386;
/** Misc Functions  */
	inline static public var XK_Break:Int = 65387;
/** Misc Functions  */
	inline static public var XK_Mode_switch:Int = 65406;
/** Misc Functions  */
	inline static public var XK_script_switch:Int = 65406;
/** Misc Functions  */
	inline static public var XK_Num_Lock:Int = 65407;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Space:Int = 65408;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Tab:Int = 65417;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Enter:Int = 65421;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_F1:Int = 65425;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_F2:Int = 65426;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_F3:Int = 65427;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_F4:Int = 65428;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Home:Int = 65429;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Left:Int = 65430;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Up:Int = 65431;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Right:Int = 65432;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Down:Int = 65433;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Prior:Int = 65434;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Page_Up:Int = 65434;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Next:Int = 65435;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Page_Down:Int = 65435;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_End:Int = 65436;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Begin:Int = 65437;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Insert:Int = 65438;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Delete:Int = 65439;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Equal:Int = 65469;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Multiply:Int = 65450;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Add:Int = 65451;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Separator:Int = 65452;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Subtract:Int = 65453;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Decimal:Int = 65454;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_Divide:Int = 65455;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_0:Int = 65456;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_1:Int = 65457;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_2:Int = 65458;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_3:Int = 65459;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_4:Int = 65460;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_5:Int = 65461;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_6:Int = 65462;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_7:Int = 65463;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_8:Int = 65464;
/** Keypad Functions, keypad numbers cleverly chosen to map to ascii  */
	inline static public var XK_KP_9:Int = 65465;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F1:Int = 65470;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F2:Int = 65471;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F3:Int = 65472;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F4:Int = 65473;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F5:Int = 65474;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F6:Int = 65475;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F7:Int = 65476;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F8:Int = 65477;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F9:Int = 65478;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F10:Int = 65479;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F11:Int = 65480;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L1:Int = 65480;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F12:Int = 65481;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L2:Int = 65481;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F13:Int = 65482;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L3:Int = 65482;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F14:Int = 65483;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L4:Int = 65483;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F15:Int = 65484;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L5:Int = 65484;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F16:Int = 65485;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L6:Int = 65485;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F17:Int = 65486;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L7:Int = 65486;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F18:Int = 65487;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L8:Int = 65487;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F19:Int = 65488;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L9:Int = 65488;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F20:Int = 65489;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_L10:Int = 65489;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F21:Int = 65490;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R1:Int = 65490;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F22:Int = 65491;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R2:Int = 65491;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F23:Int = 65492;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R3:Int = 65492;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F24:Int = 65493;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R4:Int = 65493;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F25:Int = 65494;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R5:Int = 65494;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F26:Int = 65495;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R6:Int = 65495;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F27:Int = 65496;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R7:Int = 65496;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F28:Int = 65497;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R8:Int = 65497;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F29:Int = 65498;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R9:Int = 65498;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F30:Int = 65499;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R10:Int = 65499;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F31:Int = 65500;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R11:Int = 65500;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F32:Int = 65501;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R12:Int = 65501;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F33:Int = 65502;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R13:Int = 65502;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F34:Int = 65503;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R14:Int = 65503;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_F35:Int = 65504;
/**
 * Auxilliary Functions; note the duplicate definitions for left and right function keys; Sun keyboards and a few other manufactures have such function key
 * groups on the left and/or right sides of the keyboard. We've not found a keyboard with more than 35 function keys total.
 */
	inline static public var XK_R15:Int = 65504;
/** Modifiers  */
	inline static public var XK_Shift_L:Int = 65505;
/** Modifiers  */
	inline static public var XK_Shift_R:Int = 65506;
/** Modifiers  */
	inline static public var XK_Control_L:Int = 65507;
/** Modifiers  */
	inline static public var XK_Control_R:Int = 65508;
/** Modifiers  */
	inline static public var XK_Caps_Lock:Int = 65509;
/** Modifiers  */
	inline static public var XK_Shift_Lock:Int = 65510;
/** Modifiers  */
	inline static public var XK_Meta_L:Int = 65511;
/** Modifiers  */
	inline static public var XK_Meta_R:Int = 65512;
/** Modifiers  */
	inline static public var XK_Alt_L:Int = 65513;
/** Modifiers  */
	inline static public var XK_Alt_R:Int = 65514;
/** Modifiers  */
	inline static public var XK_Super_L:Int = 65515;
/** Modifiers  */
	inline static public var XK_Super_R:Int = 65516;
/** Modifiers  */
	inline static public var XK_Hyper_L:Int = 65517;
/** Modifiers  */
	inline static public var XK_Hyper_R:Int = 65518;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Lock:Int = 65025;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Level2_Latch:Int = 65026;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Level3_Shift:Int = 65027;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Level3_Latch:Int = 65028;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Level3_Lock:Int = 65029;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Group_Shift:Int = 65406;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Group_Latch:Int = 65030;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Group_Lock:Int = 65031;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Next_Group:Int = 65032;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Next_Group_Lock:Int = 65033;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Prev_Group:Int = 65034;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Prev_Group_Lock:Int = 65035;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_First_Group:Int = 65036;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_First_Group_Lock:Int = 65037;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Last_Group:Int = 65038;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Last_Group_Lock:Int = 65039;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Left_Tab:Int = 65056;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Move_Line_Up:Int = 65057;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Move_Line_Down:Int = 65058;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Partial_Line_Up:Int = 65059;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Partial_Line_Down:Int = 65060;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Partial_Space_Left:Int = 65061;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Partial_Space_Right:Int = 65062;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Set_Margin_Left:Int = 65063;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Set_Margin_Right:Int = 65064;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Release_Margin_Left:Int = 65065;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Release_Margin_Right:Int = 65066;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Release_Both_Margins:Int = 65067;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Fast_Cursor_Left:Int = 65068;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Fast_Cursor_Right:Int = 65069;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Fast_Cursor_Up:Int = 65070;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Fast_Cursor_Down:Int = 65071;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Continuous_Underline:Int = 65072;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Discontinuous_Underline:Int = 65073;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Emphasize:Int = 65074;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Center_Object:Int = 65075;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_ISO_Enter:Int = 65076;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_grave:Int = 65104;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_acute:Int = 65105;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_circumflex:Int = 65106;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_tilde:Int = 65107;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_macron:Int = 65108;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_breve:Int = 65109;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_abovedot:Int = 65110;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_diaeresis:Int = 65111;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_abovering:Int = 65112;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_doubleacute:Int = 65113;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_caron:Int = 65114;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_cedilla:Int = 65115;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_ogonek:Int = 65116;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_iota:Int = 65117;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_voiced_sound:Int = 65118;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_dead_semivoiced_sound:Int = 65119;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_First_Virtual_Screen:Int = 65232;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Prev_Virtual_Screen:Int = 65233;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Next_Virtual_Screen:Int = 65234;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Last_Virtual_Screen:Int = 65236;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Terminate_Server:Int = 65237;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Left:Int = 65248;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Right:Int = 65249;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Up:Int = 65250;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Down:Int = 65251;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_UpLeft:Int = 65252;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_UpRight:Int = 65253;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DownLeft:Int = 65254;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DownRight:Int = 65255;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Button_Dflt:Int = 65256;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Button1:Int = 65257;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Button2:Int = 65258;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Button3:Int = 65259;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Button4:Int = 65260;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Button5:Int = 65261;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DblClick_Dflt:Int = 65262;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DblClick1:Int = 65263;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DblClick2:Int = 65264;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DblClick3:Int = 65265;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DblClick4:Int = 65266;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DblClick5:Int = 65267;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Drag_Dflt:Int = 65268;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Drag1:Int = 65269;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Drag2:Int = 65270;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Drag3:Int = 65271;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Drag4:Int = 65272;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_EnableKeys:Int = 65273;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_Accelerate:Int = 65274;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DfltBtnNext:Int = 65275;
/** ISO 9995 Function and Modifier Keys Byte 3 = 0xFE  */
	inline static public var XK_Pointer_DfltBtnPrev:Int = 65276;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Duplicate:Int = 64769;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_FieldMark:Int = 64770;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Right2:Int = 64771;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Left2:Int = 64772;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_BackTab:Int = 64773;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_EraseEOF:Int = 64774;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_EraseInput:Int = 64775;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Reset:Int = 64776;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Quit:Int = 64777;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_PA1:Int = 64778;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_PA2:Int = 64779;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_PA3:Int = 64780;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Test:Int = 64781;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Attn:Int = 64782;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_CursorBlink:Int = 64783;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_AltCursor:Int = 64784;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_KeyClick:Int = 64785;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Jump:Int = 64786;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Ident:Int = 64787;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Rule:Int = 64788;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Copy:Int = 64789;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Play:Int = 64790;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Setup:Int = 64791;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Record:Int = 64792;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_ChangeScreen:Int = 64793;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_DeleteWord:Int = 64794;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_ExSelect:Int = 64795;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_CursorSelect:Int = 64796;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_PrintScreen:Int = 64797;
/** 3270 Terminal Keys Byte 3 = 0xFD  */
	inline static public var XK_3270_Enter:Int = 64798;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_space:Int = 32;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_exclam:Int = 33;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_quotedbl:Int = 34;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_numbersign:Int = 35;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_dollar:Int = 36;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_percent:Int = 37;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ampersand:Int = 38;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_apostrophe:Int = 39;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_quoteright:Int = 39;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_parenleft:Int = 40;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_parenright:Int = 41;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_asterisk:Int = 42;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_plus:Int = 43;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_comma:Int = 44;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_minus:Int = 45;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_period:Int = 46;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_slash:Int = 47;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_0:Int = 48;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_1:Int = 49;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_2:Int = 50;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_3:Int = 51;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_4:Int = 52;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_5:Int = 53;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_6:Int = 54;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_7:Int = 55;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_8:Int = 56;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_9:Int = 57;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_colon:Int = 58;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_semicolon:Int = 59;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_less:Int = 60;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_equal:Int = 61;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_greater:Int = 62;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_question:Int = 63;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_at:Int = 64;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_A:Int = 65;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_B:Int = 66;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_C:Int = 67;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_D:Int = 68;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_E:Int = 69;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_F:Int = 70;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_G:Int = 71;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_H:Int = 72;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_I:Int = 73;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_J:Int = 74;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_K:Int = 75;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_L:Int = 76;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_M:Int = 77;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_N:Int = 78;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_O:Int = 79;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_P:Int = 80;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Q:Int = 81;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_R:Int = 82;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_S:Int = 83;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_T:Int = 84;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_U:Int = 85;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_V:Int = 86;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_W:Int = 87;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_X:Int = 88;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Y:Int = 89;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Z:Int = 90;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_bracketleft:Int = 91;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_backslash:Int = 92;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_bracketright:Int = 93;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_asciicircum:Int = 94;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_underscore:Int = 95;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_grave:Int = 96;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_quoteleft:Int = 96;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_a:Int = 97;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_b:Int = 98;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_c:Int = 99;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_d:Int = 100;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_e:Int = 101;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_f:Int = 102;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_g:Int = 103;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_h:Int = 104;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_i:Int = 105;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_j:Int = 106;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_k:Int = 107;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_l:Int = 108;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_m:Int = 109;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_n:Int = 110;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_o:Int = 111;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_p:Int = 112;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_q:Int = 113;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_r:Int = 114;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_s:Int = 115;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_t:Int = 116;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_u:Int = 117;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_v:Int = 118;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_w:Int = 119;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_x:Int = 120;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_y:Int = 121;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_z:Int = 122;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_braceleft:Int = 123;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_bar:Int = 124;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_braceright:Int = 125;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_asciitilde:Int = 126;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_nobreakspace:Int = 160;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_exclamdown:Int = 161;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_cent:Int = 162;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_sterling:Int = 163;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_currency:Int = 164;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_yen:Int = 165;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_brokenbar:Int = 166;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_section:Int = 167;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_diaeresis:Int = 168;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_copyright:Int = 169;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ordfeminine:Int = 170;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_guillemotleft:Int = 171;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_notsign:Int = 172;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_hyphen:Int = 173;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_registered:Int = 174;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_macron:Int = 175;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_degree:Int = 176;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_plusminus:Int = 177;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_twosuperior:Int = 178;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_threesuperior:Int = 179;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_acute:Int = 180;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_mu:Int = 181;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_paragraph:Int = 182;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_periodcentered:Int = 183;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_cedilla:Int = 184;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_onesuperior:Int = 185;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_masculine:Int = 186;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_guillemotright:Int = 187;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_onequarter:Int = 188;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_onehalf:Int = 189;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_threequarters:Int = 190;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_questiondown:Int = 191;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Agrave:Int = 192;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Aacute:Int = 193;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Acircumflex:Int = 194;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Atilde:Int = 195;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Adiaeresis:Int = 196;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Aring:Int = 197;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_AE:Int = 198;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ccedilla:Int = 199;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Egrave:Int = 200;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Eacute:Int = 201;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ecircumflex:Int = 202;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ediaeresis:Int = 203;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Igrave:Int = 204;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Iacute:Int = 205;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Icircumflex:Int = 206;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Idiaeresis:Int = 207;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ETH:Int = 208;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Eth:Int = 208;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ntilde:Int = 209;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ograve:Int = 210;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Oacute:Int = 211;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ocircumflex:Int = 212;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Otilde:Int = 213;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Odiaeresis:Int = 214;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_multiply:Int = 215;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ooblique:Int = 216;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ugrave:Int = 217;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Uacute:Int = 218;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Ucircumflex:Int = 219;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Udiaeresis:Int = 220;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Yacute:Int = 221;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_THORN:Int = 222;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_Thorn:Int = 222;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ssharp:Int = 223;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_agrave:Int = 224;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_aacute:Int = 225;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_acircumflex:Int = 226;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_atilde:Int = 227;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_adiaeresis:Int = 228;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_aring:Int = 229;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ae:Int = 230;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ccedilla:Int = 231;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_egrave:Int = 232;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_eacute:Int = 233;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ecircumflex:Int = 234;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ediaeresis:Int = 235;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_igrave:Int = 236;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_iacute:Int = 237;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_icircumflex:Int = 238;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_idiaeresis:Int = 239;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_eth:Int = 240;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ntilde:Int = 241;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ograve:Int = 242;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_oacute:Int = 243;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ocircumflex:Int = 244;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_otilde:Int = 245;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_odiaeresis:Int = 246;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_division:Int = 247;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_oslash:Int = 248;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ugrave:Int = 249;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_uacute:Int = 250;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ucircumflex:Int = 251;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_udiaeresis:Int = 252;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_yacute:Int = 253;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_thorn:Int = 254;
/** Latin 1 Byte 3 = 0  */
	inline static public var XK_ydiaeresis:Int = 255;

}
