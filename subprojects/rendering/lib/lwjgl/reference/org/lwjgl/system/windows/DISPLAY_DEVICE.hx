package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.DISPLAY_DEVICE")
@:final
/** Receives information about the display device specified by the devNum parameter of the {@link WinUser#EnumDisplayDevices} function.  */
extern class DISPLAY_DEVICE implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var CB:Int;
/** The struct member offsets.  */
	static public var DEVICENAME:Int;
/** The struct member offsets.  */
	static public var DEVICESTRING:Int;
/** The struct member offsets.  */
	static public var STATEFLAGS:Int;
/** The struct member offsets.  */
	static public var DEVICEID:Int;
/** The struct member offsets.  */
	static public var DEVICEKEY:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getDeviceIDString(byteLen:Int):String;
	@:overload(function ():String {})
	public function getDeviceStringString(byteLen:Int):String;
	@:overload(function ():String {})
	public function setStateFlags(StateFlags:Int):Void;
	static public function DeviceStringString(display_device:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (display_device:java.nio.ByteBuffer):String {})
	static public function StateFlags(display_device:java.nio.ByteBuffer,StateFlags:Int):Void;
	@:overload(function (display_device:java.nio.ByteBuffer):Int {})
	static public function DeviceIDString(display_device:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (display_device:java.nio.ByteBuffer):String {})
	public function getCb():Int;
	static public function DeviceKeyGet(display_device:java.nio.ByteBuffer,DeviceKey:java.nio.ByteBuffer):Void;
	public function getDeviceID(DeviceID:java.nio.ByteBuffer):Void;
	public function getDeviceKeyString(byteLen:Int):String;
	@:overload(function ():String {})
	static public function DeviceNameSet(display_device:java.nio.ByteBuffer,DeviceName:java.nio.ByteBuffer):Void;
	public function buffer():java.nio.ByteBuffer;
	static public function DeviceKeySet(display_device:java.nio.ByteBuffer,DeviceKey:java.nio.ByteBuffer):Void;
	public function setDeviceID(DeviceID:java.nio.ByteBuffer):Void;
	@:overload(function (DeviceID:java.lang.CharSequence):Void {})
	public function getDeviceString(DeviceString:java.nio.ByteBuffer):Void;
	static public function DeviceString(display_device:java.nio.ByteBuffer,DeviceString:java.lang.CharSequence):Void;
	public function getDeviceKey(DeviceKey:java.nio.ByteBuffer):Void;
	static public function DeviceKeyString(display_device:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (display_device:java.nio.ByteBuffer):String {})
	static public function cb(display_device:java.nio.ByteBuffer,cb:Int):Void;
	@:overload(function (display_device:java.nio.ByteBuffer):Int {})
	public function getDeviceNameString(byteLen:Int):String;
	@:overload(function ():String {})
	public function getStateFlags():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Alternative virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(cb:Int,DeviceName:java.nio.ByteBuffer,DeviceString:java.nio.ByteBuffer,StateFlags:Int,DeviceID:java.nio.ByteBuffer,DeviceKey:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	@:overload(function (cb:Int,DeviceName:java.lang.CharSequence,DeviceString:java.lang.CharSequence,StateFlags:Int,DeviceID:java.lang.CharSequence,DeviceKey:java.lang.CharSequence):java.nio.ByteBuffer {})
	public function setDeviceString(DeviceString:java.nio.ByteBuffer):Void;
	@:overload(function (DeviceString:java.lang.CharSequence):Void {})
	static public function DeviceNameGet(display_device:java.nio.ByteBuffer,DeviceName:java.nio.ByteBuffer):Void;
	static public function DeviceIDGet(display_device:java.nio.ByteBuffer,DeviceID:java.nio.ByteBuffer):Void;
	static public function DeviceStringSet(display_device:java.nio.ByteBuffer,DeviceString:java.nio.ByteBuffer):Void;
	public function setCb(cb:Int):Void;
	public function setDeviceKey(DeviceKey:java.nio.ByteBuffer):Void;
	@:overload(function (DeviceKey:java.lang.CharSequence):Void {})
	static public function DeviceID(display_device:java.nio.ByteBuffer,DeviceID:java.lang.CharSequence):Void;
	static public function DeviceNameString(display_device:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (display_device:java.nio.ByteBuffer):String {})
	public function getPointer():haxe.Int64;
	static public function DeviceStringGet(display_device:java.nio.ByteBuffer,DeviceString:java.nio.ByteBuffer):Void;
	public function setDeviceName(DeviceName:java.nio.ByteBuffer):Void;
	@:overload(function (DeviceName:java.lang.CharSequence):Void {})
	static public function DeviceIDSet(display_device:java.nio.ByteBuffer,DeviceID:java.nio.ByteBuffer):Void;
	public function getDeviceName(DeviceName:java.nio.ByteBuffer):Void;
	static public function DeviceKey(display_device:java.nio.ByteBuffer,DeviceKey:java.lang.CharSequence):Void;
	static public function DeviceName(display_device:java.nio.ByteBuffer,DeviceName:java.lang.CharSequence):Void;

}
