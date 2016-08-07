package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GPU_DEVICE")
@:final
/**
 * Receives information about the display device specified by the {@code deviceIndex} parameter of the {@link WGLNVGPUAffinity#wglEnumGpuDevicesNV}
 * function.
 */
extern class GPU_DEVICE implements org.lwjgl.Pointer
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
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var VIRTUALSCREEN:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getVirtualScreenRight():Int;
	public function getVirtualScreenTop():Int;
	public function getDeviceStringString(byteLen:Int):String;
	@:overload(function ():String {})
	public function setVirtualScreenLeft(left:Int):Void;
	static public function virtualScreenBottom(gpu_device:java.nio.ByteBuffer,bottom:Int):Void;
	@:overload(function (gpu_device:java.nio.ByteBuffer):Int {})
	static public function DeviceStringString(gpu_device:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (gpu_device:java.nio.ByteBuffer):String {})
	public function setVirtualScreen(virtualScreen:java.nio.ByteBuffer):Void;
	public function getCb():Int;
	static public function virtualScreenLeft(gpu_device:java.nio.ByteBuffer,left:Int):Void;
	@:overload(function (gpu_device:java.nio.ByteBuffer):Int {})
	static public function virtualScreenSet(gpu_device:java.nio.ByteBuffer,virtualScreen:java.nio.ByteBuffer):Void;
	static public function DeviceNameSet(gpu_device:java.nio.ByteBuffer,DeviceName:java.nio.ByteBuffer):Void;
	public function buffer():java.nio.ByteBuffer;
	public function getDeviceString(DeviceString:java.nio.ByteBuffer):Void;
	static public function DeviceString(gpu_device:java.nio.ByteBuffer,DeviceString:java.lang.CharSequence):Void;
	static public function virtualScreenRight(gpu_device:java.nio.ByteBuffer,right:Int):Void;
	@:overload(function (gpu_device:java.nio.ByteBuffer):Int {})
	static public function cb(gpu_device:java.nio.ByteBuffer,cb:Int):Void;
	@:overload(function (gpu_device:java.nio.ByteBuffer):Int {})
	public function getDeviceNameString(byteLen:Int):String;
	@:overload(function ():String {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Alternative virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(cb:Int,DeviceName:java.nio.ByteBuffer,DeviceString:java.nio.ByteBuffer,Flags:Int,virtualScreen:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	@:overload(function (cb:Int,DeviceName:java.lang.CharSequence,DeviceString:java.lang.CharSequence,Flags:Int,virtualScreen:java.nio.ByteBuffer):java.nio.ByteBuffer {})
	public function setDeviceString(DeviceString:java.nio.ByteBuffer):Void;
	@:overload(function (DeviceString:java.lang.CharSequence):Void {})
	static public function DeviceNameGet(gpu_device:java.nio.ByteBuffer,DeviceName:java.nio.ByteBuffer):Void;
	public function setVirtualScreenRight(right:Int):Void;
	static public function DeviceStringSet(gpu_device:java.nio.ByteBuffer,DeviceString:java.nio.ByteBuffer):Void;
	public function setCb(cb:Int):Void;
	public function getVirtualScreen(virtualScreen:java.nio.ByteBuffer):Void;
	static public function virtualScreenTop(gpu_device:java.nio.ByteBuffer,top:Int):Void;
	@:overload(function (gpu_device:java.nio.ByteBuffer):Int {})
	static public function DeviceNameString(gpu_device:java.nio.ByteBuffer,byteLen:Int):String;
	@:overload(function (gpu_device:java.nio.ByteBuffer):String {})
	static public function virtualScreenGet(gpu_device:java.nio.ByteBuffer,virtualScreen:java.nio.ByteBuffer):Void;
	public function getPointer():haxe.Int64;
	static public function Flags(gpu_device:java.nio.ByteBuffer,Flags:Int):Void;
	@:overload(function (gpu_device:java.nio.ByteBuffer):Int {})
	public function getVirtualScreenLeft():Int;
	public function setVirtualScreenTop(top:Int):Void;
	static public function DeviceStringGet(gpu_device:java.nio.ByteBuffer,DeviceString:java.nio.ByteBuffer):Void;
	public function setDeviceName(DeviceName:java.nio.ByteBuffer):Void;
	@:overload(function (DeviceName:java.lang.CharSequence):Void {})
	public function getVirtualScreenBottom():Int;
	public function getDeviceName(DeviceName:java.nio.ByteBuffer):Void;
	public function getFlags():Int;
	public function setVirtualScreenBottom(bottom:Int):Void;
	public function setFlags(Flags:Int):Void;
	static public function DeviceName(gpu_device:java.nio.ByteBuffer,DeviceName:java.lang.CharSequence):Void;

}
