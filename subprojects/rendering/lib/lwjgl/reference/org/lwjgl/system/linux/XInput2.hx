package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XInput2")
@:final
/** Native bindings to XInput2.h.  */
extern class XInput2 
{
/** Event types  */
	inline static public var XI_DeviceChanged:Int = 1;
/** Event types  */
	inline static public var XI_KeyPress:Int = 2;
/** Event types  */
	inline static public var XI_KeyRelease:Int = 3;
/** Event types  */
	inline static public var XI_ButtonPress:Int = 4;
/** Event types  */
	inline static public var XI_ButtonRelease:Int = 5;
/** Event types  */
	inline static public var XI_Motion:Int = 6;
/** Event types  */
	inline static public var XI_Enter:Int = 7;
/** Event types  */
	inline static public var XI_Leave:Int = 8;
/** Event types  */
	inline static public var XI_FocusIn:Int = 9;
/** Event types  */
	inline static public var XI_FocusOut:Int = 10;
/** Event types  */
	inline static public var XI_HierarchyChanged:Int = 11;
/** Event types  */
	inline static public var XI_PropertyEvent:Int = 12;
/** Event types  */
	inline static public var XI_RawKeyPress:Int = 13;
/** Event types  */
	inline static public var XI_RawKeyRelease:Int = 14;
/** Event types  */
	inline static public var XI_RawButtonPress:Int = 15;
/** Event types  */
	inline static public var XI_RawButtonRelease:Int = 16;
/** Event types  */
	inline static public var XI_RawMotion:Int = 17;
/** Event types  */
	inline static public var XI_TouchBegin:Int = 18;
/** Event types  */
	inline static public var XI_TouchUpdate:Int = 19;
/** Event types  */
	inline static public var XI_TouchEnd:Int = 20;
/** Event types  */
	inline static public var XI_TouchOwnership:Int = 21;
/** Event types  */
	inline static public var XI_RawTouchBegin:Int = 22;
/** Event types  */
	inline static public var XI_RawTouchUpdate:Int = 23;
/** Event types  */
	inline static public var XI_RawTouchEnd:Int = 24;
/** JNI method for {@link #XISelectEvents}  */
	static public function nXISelectEvents(display:haxe.Int64,w:haxe.Int64,masks:haxe.Int64,num_masks:Int):Int;
/** JNI method for {@link #XIQueryVersion}  */
	static public function nXIQueryVersion(display:haxe.Int64,major_version_inout:haxe.Int64,minor_version_inout:haxe.Int64):Int;
/**
 * Announces and queries the supported XI2 version.
 *
 * @param display             the connection to the X server
 * @param major_version_inout the client's supported XI2 major version, and returns the server's supported major version
 * @param minor_version_inout the client's supported XI2 minor version, and returns the server's supported minor version
 */
/** Alternative version of: {@link #XIQueryVersion}  */
	static public function XIQueryVersion(display:haxe.Int64,major_version_inout:java.nio.IntBuffer,minor_version_inout:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,major_version_inout:java.nio.ByteBuffer,minor_version_inout:java.nio.ByteBuffer):Int {})
/** Alternative version of: {@link #XISelectEvents}  */
/**
 * Selects XI2 events.
 * 
 * <p>{@code XISelectEvents} sets the event mask for this client on win. Further events are only reported to this client if the event type matches the
 * selected event mask. The masks overrides the previously selected event mask for the given device.</p>
 * 
 * <p>If deviceid is a valid device, the event mask is selected only for this device. If deviceid is XIAllDevices or XIAllMasterDevices, the event mask is
 * selected for all devices or all master devices, respectively. The effective event mask is the bit-wise OR of the XIAllDevices, XIAllMasterDevices and
 * the respective device's event mask.</p>
 *
 * @param display   the connection to the X server
 * @param w         the window
 * @param masks     a pointer to an array of {@link XIEventMask} structures
 * @param num_masks number of masks in {@code masks}
 */
	static public function XISelectEvents(display:haxe.Int64,w:haxe.Int64,masks:java.nio.ByteBuffer,num_masks:Int):Int;
	@:overload(function (display:haxe.Int64,w:haxe.Int64,masks:java.nio.ByteBuffer):Int {})

}
