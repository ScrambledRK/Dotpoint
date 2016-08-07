package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.Mmsystem")
@:final
/** Native bindings to Mmsystem.h.  */
extern class Mmsystem 
{
/** general error return values.  */
	inline static public var MMSYSERR_NOERROR:Int = 0;
/** general error return values.  */
	inline static public var MMSYSERR_ERROR:Int = 1;
/** general error return values.  */
	inline static public var MMSYSERR_BADDEVICEID:Int = 2;
/** general error return values.  */
	inline static public var MMSYSERR_NOTENABLED:Int = 3;
/** general error return values.  */
	inline static public var MMSYSERR_ALLOCATED:Int = 4;
/** general error return values.  */
	inline static public var MMSYSERR_INVALHANDLE:Int = 5;
/** general error return values.  */
	inline static public var MMSYSERR_NODRIVER:Int = 6;
/** general error return values.  */
	inline static public var MMSYSERR_NOMEM:Int = 7;
/** general error return values.  */
	inline static public var MMSYSERR_NOTSUPPORTED:Int = 8;
/** general error return values.  */
	inline static public var MMSYSERR_BADERRNUM:Int = 9;
/** general error return values.  */
	inline static public var MMSYSERR_INVALFLAG:Int = 10;
/** general error return values.  */
	inline static public var MMSYSERR_INVALPARAM:Int = 11;
/** general error return values.  */
	inline static public var MMSYSERR_HANDLEBUSY:Int = 12;
/** general error return values.  */
	inline static public var MMSYSERR_INVALIDALIAS:Int = 13;
/** general error return values.  */
	inline static public var MMSYSERR_BADDB:Int = 14;
/** general error return values.  */
	inline static public var MMSYSERR_KEYNOTFOUND:Int = 15;
/** general error return values.  */
	inline static public var MMSYSERR_READERROR:Int = 16;
/** general error return values.  */
	inline static public var MMSYSERR_WRITEERROR:Int = 17;
/** general error return values.  */
	inline static public var MMSYSERR_DELETEERROR:Int = 18;
/** general error return values.  */
	inline static public var MMSYSERR_VALNOTFOUND:Int = 19;
/** general error return values.  */
	inline static public var MMSYSERR_NODRIVERCB:Int = 20;
/** general error return values.  */
	inline static public var MMSYSERR_MOREDATA:Int = 21;
/** general error return values.  */
	inline static public var MMSYSERR_LASTERROR:Int = 21;
/** joystick error return values.  */
	inline static public var JOYERR_NOERROR:Int = 0;
/** joystick error return values.  */
	inline static public var JOYERR_PARMS:Int = 165;
/** joystick error return values.  */
	inline static public var JOYERR_NOCANDO:Int = 166;
/** joystick error return values.  */
	inline static public var JOYERR_UNPLUGGED:Int = 167;
/** Constants used with JOYINFO and JOYINFOEX structures and MM_JOY* messages.  */
	inline static public var JOY_BUTTON1:Int = 1;
/** Constants used with JOYINFO and JOYINFOEX structures and MM_JOY* messages.  */
	inline static public var JOY_BUTTON2:Int = 2;
/** Constants used with JOYINFO and JOYINFOEX structures and MM_JOY* messages.  */
	inline static public var JOY_BUTTON3:Int = 4;
/** Constants used with JOYINFO and JOYINFOEX structures and MM_JOY* messages.  */
	inline static public var JOY_BUTTON4:Int = 8;
/** Constants used with JOYINFO and JOYINFOEX structures and MM_JOY* messages.  */
	inline static public var JOY_BUTTON1CHG:Int = 256;
/** Constants used with JOYINFO and JOYINFOEX structures and MM_JOY* messages.  */
	inline static public var JOY_BUTTON2CHG:Int = 512;
/** Constants used with JOYINFO and JOYINFOEX structures and MM_JOY* messages.  */
	inline static public var JOY_BUTTON3CHG:Int = 1024;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON5:Int = 16;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON6:Int = 32;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON7:Int = 64;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON8:Int = 128;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON9:Int = 256;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON10:Int = 512;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON11:Int = 1024;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON12:Int = 2048;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON13:Int = 4096;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON14:Int = 8192;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON15:Int = 16384;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON16:Int = 32768;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON17:Int = 65536;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON18:Int = 131072;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON19:Int = 262144;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON20:Int = 524288;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON21:Int = 1048576;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON22:Int = 2097152;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON23:Int = 4194304;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON24:Int = 8388608;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON25:Int = 16777216;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON26:Int = 33554432;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON27:Int = 67108864;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON28:Int = 134217728;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON29:Int = 268435456;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON30:Int = 536870912;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON31:Int = 1073741824;
/** constants used with JOYINFOEX.  */
	inline static public var JOY_BUTTON32:Int = -2147483648;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_POVCENTERED:Int = -1;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_POVFORWARD:Int = 0;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_POVRIGHT:Int = 9000;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_POVBACKWARD:Int = 18000;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_POVLEFT:Int = 27000;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNX:Int = 1;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNY:Int = 2;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNZ:Int = 4;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNR:Int = 8;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNU:Int = 16;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNV:Int = 32;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNPOV:Int = 64;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNBUTTONS:Int = 128;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNRAWDATA:Int = 256;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNPOVCTS:Int = 512;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNCENTERED:Int = 1024;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_USEDEADZONE:Int = 2048;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_RETURNALL:Int = 255;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READALWAYS:Int = 65536;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READXYONLY:Int = 131072;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READ3:Int = 262144;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READ4:Int = 524288;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READXONLY:Int = 1048576;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READYONLY:Int = 2097152;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READ5:Int = 4194304;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READ6:Int = 8388608;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READZONLY:Int = 16777216;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READRONLY:Int = 33554432;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READUONLY:Int = 67108864;
/** constants used with JOYINFOEX structure.  */
	inline static public var JOY_CAL_READVONLY:Int = 134217728;
/** joystick ID constants.  */
	inline static public var JOYSTICKID1:Int = 0;
/** joystick ID constants.  */
	inline static public var JOYSTICKID2:Int = 1;
/** joystick driver capabilites.  */
	inline static public var JOYCAPS_HASZ:Int = 1;
/** joystick driver capabilites.  */
	inline static public var JOYCAPS_HASR:Int = 2;
/** joystick driver capabilites.  */
	inline static public var JOYCAPS_HASU:Int = 4;
/** joystick driver capabilites.  */
	inline static public var JOYCAPS_HASV:Int = 8;
/** joystick driver capabilites.  */
	inline static public var JOYCAPS_HASPOV:Int = 16;
/** joystick driver capabilites.  */
	inline static public var JOYCAPS_POV4DIR:Int = 32;
/** joystick driver capabilites.  */
	inline static public var JOYCAPS_POVCTS:Int = 64;
/**
 * Queries a joystick to determine its capabilities.
 *
 * @param joyID Identifier of the joystick to be queried. Valid values for {@code joyID} range from -1 to 15. A value of -1 enables retrieval of the
 *              {@code szRegKey} member of the {@link JOYCAPS} structure whether a device is present or not.
 * @param jc    pointer to a {@code JOYCAPS} structure to contain the capabilities of the joystick.
 * @param bjc   size, in bytes, of the {@code JOYCAPS} structure.
 */
	static public function joyGetDevCaps(joyID:haxe.Int64,jc:java.nio.ByteBuffer,bjc:Int):Int;
/** JNI method for {@link #joyGetPos}  */
	static public function njoyGetPos(joyID:Int,ji:haxe.Int64):Int;
/** JNI method for {@link #joyGetDevCaps}  */
	static public function njoyGetDevCaps(joyID:haxe.Int64,jc:haxe.Int64,bjc:Int):Int;
/**
 * Queries a joystick for its position and button status.
 *
 * @param joyID identifier of the joystick to be queried. Valid values for {@code joyID} range from zero ({@link #JOYSTICKID1}) to 15
 * @param ji    pointer to a {@link JOYINFO} structure that contains the position and button status of the joystick
 */
	static public function joyGetPos(joyID:Int,ji:java.nio.ByteBuffer):Int;
/** JNI method for {@link #joyGetPosEx}  */
	static public function njoyGetPosEx(joyID:Int,ji:haxe.Int64):Int;
/**
 * Queries a joystick for its position and button status.
 *
 * @param joyID identifier of the joystick to be queried. Valid values for {@code joyID} range from zero ({@link #JOYSTICKID1}) to 15
 * @param ji    pointer to a {@link JOYINFOEX} structure that contains the position and button status of the joystick. You must set the {@code size} and
 *              {@code flags} members or {@code joyGetPosEx} will fail. The information returned from {@code joyGetPosEx} depends on the flags you specify in
 *              {@code flags}.
 */
	static public function joyGetPosEx(joyID:Int,ji:java.nio.ByteBuffer):Int;
/**
 * retrieves the system time, in milliseconds. The system time is the time elapsed since Windows was started.
 * 
 * <p>Note that the value returned by the {@code timeGetTime} function is a {@code DWORD} value. The return value wraps around to 0 every 2^32 milliseconds,
 * which is about 49.71 days. This can cause problems in code that directly uses the {@code timeGetTime} return value in computations, particularly where
 * the value is used to control code execution. You should always use the difference between two {@code timeGetTime} return values in computations.</p>
 */
	static public function timeGetTime():Int;

}
