package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTPauseDevice")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_pause_device.txt">SOFT_pause_device</a> extension.
 * 
 * <p>This extension allows applications to pause a playback device. The main purpose of this is to silence output, stop processing, and allow the audio
 * hardware to go into a low-power mode. On a mobile device, for instance, apps may want to silence output and not waste battery life with unneeded
 * processing when in the background.</p>
 */
extern class SOFTPauseDevice 
{
/** Function address.  */
	public var DevicePauseSOFT:haxe.Int64;
/** Function address.  */
	public var DeviceResumeSOFT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProviderLocal,device:haxe.Int64):Void;
/** JNI method for {@link #alcDevicePauseSOFT DevicePauseSOFT}  */
	static public function nalcDevicePauseSOFT(device:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * Resumes playback of a paused device.
 * 
 * <p>This will restart processing on the device -- sources will resume playing sound as normal. Resuming playback on a device that is not paused is a legal
 * no-op.</p>
 * 
 * <p>These functions are not reference counted. alcDeviceResumeSOFT only needs to be called once to resume playback, regardless of how many times
 * {@link #alcDevicePauseSOFT DevicePauseSOFT} was called.</p>
 *
 * @param device the device to resume
 */
	static public function alcDeviceResumeSOFT(device:haxe.Int64):Void;
/** Returns the {@link SOFTPauseDevice} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.SOFTPauseDevice;
/**
 * Pauses a playback device.
 * 
 * <p>When paused, no contexts associated with the device will be processed or updated. Playing sources will not produce sound, have their offsets
 * incremented, or process any more buffers, until the device is resumed. Pausing a device that is already paused is a legal no-op.</p>
 *
 * @param device the device to pause
 */
	static public function alcDevicePauseSOFT(device:haxe.Int64):Void;
/** JNI method for {@link #alcDeviceResumeSOFT DeviceResumeSOFT}  */
	static public function nalcDeviceResumeSOFT(device:haxe.Int64,__functionAddress:haxe.Int64):Void;

}
