package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Joystick")
@:final
/** Native bindings to &ltlinux/joystick.h&gt;.  */
extern class Joystick 
{
/** Types and constants for reading from /dev/js  */
	inline static public var JS_EVENT_BUTTON:Int = 1;
/** Types and constants for reading from /dev/js  */
	inline static public var JS_EVENT_AXIS:Int = 2;
/** Types and constants for reading from /dev/js  */
	inline static public var JS_EVENT_INIT:Int = 128;
/** IOCTL command: get number of axes.  */
	static public function JSIOCGAXES():Int;
/**
 * IOCTL command: get identifier string.
 *
 * @param len the string length
 */
	static public function JSIOCGNAME(len:Int):Int;
/** IOCTL command: get driver version.  */
	static public function JSIOCGVERSION():Int;
/** IOCTL command: get number of buttons.  */
	static public function JSIOCGBUTTONS():Int;

}
