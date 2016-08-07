package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XKBlib")
@:final
/** Native bindings to XKBlib.h.  */
extern class XKBlib 
{
/**
 * XkbUseCoreKbd is used to specify the core keyboard without having to look up its X input extension identifier.
 * XkbUseCorePtr is used to specify the core pointer without having to look up its X input extension identifier.
 * XkbDfltXIClass is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension device class.
 * XkbDfltXIId is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension feedback identifier.
 * XkbAllXIClasses is used to get information about all device indicators, whether they're part of the indicator feedback class or the keyboard feedback class.
 * XkbAllXIIds is used to get information about all device indicator feedbacks without having to list them.
 * XkbXINone is used to indicate that no class or id has been specified.
 * 
 * <p>XkbLegalXILedClass(c) True if 'c' specifies a legal class with LEDs
 * XkbLegalXIBellClass(c) True if 'c' specifies a legal class with bells
 * XkbExplicitXIDevice(d) True if 'd' explicitly specifies a device
 * XkbExplicitXIClass(c) True if 'c' explicitly specifies a device class
 * XkbExplicitXIId(c) True if 'i' explicitly specifies a device id
 * XkbSingleXIClass(c) True if 'c' specifies exactly one device class, including the default.
 * XkbSingleXIId(i) True if 'i' specifies exactly one device identifier, including the default.</p>
 */
	inline static public var XkbUseCoreKbd:Int = 256;
/**
 * XkbUseCoreKbd is used to specify the core keyboard without having to look up its X input extension identifier.
 * XkbUseCorePtr is used to specify the core pointer without having to look up its X input extension identifier.
 * XkbDfltXIClass is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension device class.
 * XkbDfltXIId is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension feedback identifier.
 * XkbAllXIClasses is used to get information about all device indicators, whether they're part of the indicator feedback class or the keyboard feedback class.
 * XkbAllXIIds is used to get information about all device indicator feedbacks without having to list them.
 * XkbXINone is used to indicate that no class or id has been specified.
 * 
 * <p>XkbLegalXILedClass(c) True if 'c' specifies a legal class with LEDs
 * XkbLegalXIBellClass(c) True if 'c' specifies a legal class with bells
 * XkbExplicitXIDevice(d) True if 'd' explicitly specifies a device
 * XkbExplicitXIClass(c) True if 'c' explicitly specifies a device class
 * XkbExplicitXIId(c) True if 'i' explicitly specifies a device id
 * XkbSingleXIClass(c) True if 'c' specifies exactly one device class, including the default.
 * XkbSingleXIId(i) True if 'i' specifies exactly one device identifier, including the default.</p>
 */
	inline static public var XkbUseCorePtr:Int = 512;
/**
 * XkbUseCoreKbd is used to specify the core keyboard without having to look up its X input extension identifier.
 * XkbUseCorePtr is used to specify the core pointer without having to look up its X input extension identifier.
 * XkbDfltXIClass is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension device class.
 * XkbDfltXIId is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension feedback identifier.
 * XkbAllXIClasses is used to get information about all device indicators, whether they're part of the indicator feedback class or the keyboard feedback class.
 * XkbAllXIIds is used to get information about all device indicator feedbacks without having to list them.
 * XkbXINone is used to indicate that no class or id has been specified.
 * 
 * <p>XkbLegalXILedClass(c) True if 'c' specifies a legal class with LEDs
 * XkbLegalXIBellClass(c) True if 'c' specifies a legal class with bells
 * XkbExplicitXIDevice(d) True if 'd' explicitly specifies a device
 * XkbExplicitXIClass(c) True if 'c' explicitly specifies a device class
 * XkbExplicitXIId(c) True if 'i' explicitly specifies a device id
 * XkbSingleXIClass(c) True if 'c' specifies exactly one device class, including the default.
 * XkbSingleXIId(i) True if 'i' specifies exactly one device identifier, including the default.</p>
 */
	inline static public var XkbDfltXIClass:Int = 768;
/**
 * XkbUseCoreKbd is used to specify the core keyboard without having to look up its X input extension identifier.
 * XkbUseCorePtr is used to specify the core pointer without having to look up its X input extension identifier.
 * XkbDfltXIClass is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension device class.
 * XkbDfltXIId is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension feedback identifier.
 * XkbAllXIClasses is used to get information about all device indicators, whether they're part of the indicator feedback class or the keyboard feedback class.
 * XkbAllXIIds is used to get information about all device indicator feedbacks without having to list them.
 * XkbXINone is used to indicate that no class or id has been specified.
 * 
 * <p>XkbLegalXILedClass(c) True if 'c' specifies a legal class with LEDs
 * XkbLegalXIBellClass(c) True if 'c' specifies a legal class with bells
 * XkbExplicitXIDevice(d) True if 'd' explicitly specifies a device
 * XkbExplicitXIClass(c) True if 'c' explicitly specifies a device class
 * XkbExplicitXIId(c) True if 'i' explicitly specifies a device id
 * XkbSingleXIClass(c) True if 'c' specifies exactly one device class, including the default.
 * XkbSingleXIId(i) True if 'i' specifies exactly one device identifier, including the default.</p>
 */
	inline static public var XkbDfltXIId:Int = 1024;
/**
 * XkbUseCoreKbd is used to specify the core keyboard without having to look up its X input extension identifier.
 * XkbUseCorePtr is used to specify the core pointer without having to look up its X input extension identifier.
 * XkbDfltXIClass is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension device class.
 * XkbDfltXIId is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension feedback identifier.
 * XkbAllXIClasses is used to get information about all device indicators, whether they're part of the indicator feedback class or the keyboard feedback class.
 * XkbAllXIIds is used to get information about all device indicator feedbacks without having to list them.
 * XkbXINone is used to indicate that no class or id has been specified.
 * 
 * <p>XkbLegalXILedClass(c) True if 'c' specifies a legal class with LEDs
 * XkbLegalXIBellClass(c) True if 'c' specifies a legal class with bells
 * XkbExplicitXIDevice(d) True if 'd' explicitly specifies a device
 * XkbExplicitXIClass(c) True if 'c' explicitly specifies a device class
 * XkbExplicitXIId(c) True if 'i' explicitly specifies a device id
 * XkbSingleXIClass(c) True if 'c' specifies exactly one device class, including the default.
 * XkbSingleXIId(i) True if 'i' specifies exactly one device identifier, including the default.</p>
 */
	inline static public var XkbAllXIClasses:Int = 1280;
/**
 * XkbUseCoreKbd is used to specify the core keyboard without having to look up its X input extension identifier.
 * XkbUseCorePtr is used to specify the core pointer without having to look up its X input extension identifier.
 * XkbDfltXIClass is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension device class.
 * XkbDfltXIId is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension feedback identifier.
 * XkbAllXIClasses is used to get information about all device indicators, whether they're part of the indicator feedback class or the keyboard feedback class.
 * XkbAllXIIds is used to get information about all device indicator feedbacks without having to list them.
 * XkbXINone is used to indicate that no class or id has been specified.
 * 
 * <p>XkbLegalXILedClass(c) True if 'c' specifies a legal class with LEDs
 * XkbLegalXIBellClass(c) True if 'c' specifies a legal class with bells
 * XkbExplicitXIDevice(d) True if 'd' explicitly specifies a device
 * XkbExplicitXIClass(c) True if 'c' explicitly specifies a device class
 * XkbExplicitXIId(c) True if 'i' explicitly specifies a device id
 * XkbSingleXIClass(c) True if 'c' specifies exactly one device class, including the default.
 * XkbSingleXIId(i) True if 'i' specifies exactly one device identifier, including the default.</p>
 */
	inline static public var XkbAllXIIds:Int = 1536;
/**
 * XkbUseCoreKbd is used to specify the core keyboard without having to look up its X input extension identifier.
 * XkbUseCorePtr is used to specify the core pointer without having to look up its X input extension identifier.
 * XkbDfltXIClass is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension device class.
 * XkbDfltXIId is used to specify "don't care" any place that the XKB protocol is looking for an X Input Extension feedback identifier.
 * XkbAllXIClasses is used to get information about all device indicators, whether they're part of the indicator feedback class or the keyboard feedback class.
 * XkbAllXIIds is used to get information about all device indicator feedbacks without having to list them.
 * XkbXINone is used to indicate that no class or id has been specified.
 * 
 * <p>XkbLegalXILedClass(c) True if 'c' specifies a legal class with LEDs
 * XkbLegalXIBellClass(c) True if 'c' specifies a legal class with bells
 * XkbExplicitXIDevice(d) True if 'd' explicitly specifies a device
 * XkbExplicitXIClass(c) True if 'c' explicitly specifies a device class
 * XkbExplicitXIId(c) True if 'i' explicitly specifies a device id
 * XkbSingleXIClass(c) True if 'c' specifies exactly one device class, including the default.
 * XkbSingleXIId(i) True if 'i' specifies exactly one device identifier, including the default.</p>
 */
	inline static public var XkbXINone:Int = 65280;
	inline static public var XkbNumKbdGroups:Int = 4;
/** Assorted constants and limits.  */
	inline static public var XkbNumModifiers:Int = 8;
/** Assorted constants and limits.  */
	inline static public var XkbNumVirtualMods:Int = 16;
/** Assorted constants and limits.  */
	inline static public var XkbNumIndicators:Int = 32;
/** Assorted constants and limits.  */
	inline static public var XkbAllIndicatorsMask:Int = -1;
/** Assorted constants and limits.  */
	inline static public var XkbMaxRadioGroups:Int = 32;
/** Assorted constants and limits.  */
	inline static public var XkbAllRadioGroupsMask:Int = -1;
/** Assorted constants and limits.  */
	inline static public var XkbMaxShiftLevel:Int = 63;
/** Assorted constants and limits.  */
	inline static public var XkbMaxSymsPerKey:Int = 252;
/** Assorted constants and limits.  */
	inline static public var XkbRGMaxMembers:Int = 12;
/** Assorted constants and limits.  */
	inline static public var XkbActionMessageLength:Int = 6;
/** Assorted constants and limits.  */
	inline static public var XkbKeyNameLength:Int = 4;
/** Assorted constants and limits.  */
	inline static public var XkbMaxRedirectCount:Int = 8;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbControlsMask:Int = 1;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbServerMapMask:Int = 2;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbIClientMapMask:Int = 4;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbIndicatorMapMask:Int = 8;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbNamesMask:Int = 16;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbCompatMapMask:Int = 32;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbGeometryMask:Int = 64;
/** Mask bits for {@link XkbDescRec}.  */
	inline static public var XkbAllComponentsMask:Int = 127;
/** JNI method for {@link #XkbKeycodeToKeysym}  */
	static public function nXkbKeycodeToKeysym(display:haxe.Int64,kc:Int,group:Int,level:Int):haxe.Int64;
/** JNI method for {@link #XkbSetDetectableAutoRepeat}  */
	static public function nXkbSetDetectableAutoRepeat(display:haxe.Int64,detectable:Int,supported:haxe.Int64):Int;
/**
 * Allocates and returns a pointer to a keyboard description.
 *
 * @param display    the connection to the X server
 * @param which      the components to query
 * @param deviceSpec the device to query
 */
	static public function XkbGetKeyboard(display:haxe.Int64,which:Int,deviceSpec:Int):java.nio.ByteBuffer;
/** JNI method for {@link #XkbQueryExtension}  */
	static public function nXkbQueryExtension(display:haxe.Int64,opcodeReturn:haxe.Int64,eventBaseReturn:haxe.Int64,errorBaseReturn:haxe.Int64,majorRtrn:haxe.Int64,minorRtrn:haxe.Int64):Int;
/** JNI method for {@link #XkbGetKeyboard}  */
	static public function nXkbGetKeyboard(display:haxe.Int64,which:Int,deviceSpec:Int):haxe.Int64;
/**
 * Finds the keysym bound to a particular key at a specified group and shift level.
 *
 * @param display the connection to the X server
 * @param kc      key of interest
 * @param group   group of interest
 * @param level   shift level of interest
 */
	static public function XkbKeycodeToKeysym(display:haxe.Int64,kc:Int,group:Int,level:Int):haxe.Int64;
/**
 * Determines the compatibility of a library at runtime.
 *
 * @param display         the connection to the X server
 * @param opcodeReturn    backfilled with the major extension opcode
 * @param eventBaseReturn backfilled with the extension base event code
 * @param errorBaseReturn backfilled with the extension base error code
 * @param majorRtrn       compile time lib major version in, server major version out
 * @param minorRtrn       compile time lib min version in, server minor version out
 */
/** Alternative version of: {@link #XkbQueryExtension}  */
	static public function XkbQueryExtension(display:haxe.Int64,opcodeReturn:java.nio.IntBuffer,eventBaseReturn:java.nio.IntBuffer,errorBaseReturn:java.nio.IntBuffer,majorRtrn:java.nio.IntBuffer,minorRtrn:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,opcodeReturn:java.nio.ByteBuffer,eventBaseReturn:java.nio.ByteBuffer,errorBaseReturn:java.nio.ByteBuffer,majorRtrn:java.nio.ByteBuffer,minorRtrn:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XkbFreeKeyboard}  */
	static public function nXkbFreeKeyboard(xkb:haxe.Int64,which:Int,freeDesc:Int):Void;
/**
 * Sets DetectableAutorepeat.
 *
 * @param display    the connection to the X server
 * @param detectable if true will enable detectable auto-repeat
 * @param supported  backefilled with true if DetectableAutorepeat is supported
 */
/** Alternative version of: {@link #XkbSetDetectableAutoRepeat}  */
	static public function XkbSetDetectableAutoRepeat(display:haxe.Int64,detectable:Int,supported:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,detectable:Int,supported:java.nio.ByteBuffer):Int {})
/**
 * Destroys either an entire {@link XkbDescRec} or just some of its members.
 *
 * @param xkb      the keyboard description with components to free
 * @param which    the mask selecting components to free
 * @param freeDesc if true, free all components and {@code xkb}
 */
	static public function XkbFreeKeyboard(xkb:java.nio.ByteBuffer,which:Int,freeDesc:Int):Void;

}
