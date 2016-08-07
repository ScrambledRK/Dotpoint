package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.ALDevice")
/**
 * This class is a wrapper around an ALC Device handle. A Device can be, depending on the implementation, a hardware device, or a daemon/OS service/actual
 * server. This mechanism also permits different drivers (and hardware) to coexist within the same system, as well as allowing several applications to share
 * system resources for audio, including a single hardware output device. The details are left to the implementation, which has to map the available backends to
 * unique device specifiers.
 */
extern class ALDevice extends org.lwjgl.system.PointerWrapper 
{
	public function new(device:haxe.Int64):Void;
	static public function getLastDevice():org.lwjgl.openal.ALDevice;
	public function destroy():Void;
/**
 * Creates the default device.
 *
 * @return the created device
 */
/**
 * Creates a device.
 *
 * @param deviceName the name of the device to open. It may be null, in which case the default device will be used.
 *
 * @return the created device
 */
	static public function create(deviceName:String):org.lwjgl.openal.ALDevice;
	@:overload(function ():org.lwjgl.openal.ALDevice {})
	public function getCapabilities():org.lwjgl.openal.ALCCapabilities;

}
