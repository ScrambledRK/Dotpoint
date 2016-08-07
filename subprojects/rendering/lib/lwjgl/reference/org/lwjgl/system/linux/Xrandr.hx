package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Xrandr")
@:final
/** Native bindings to <X11/extensions/Xrandr.h>.  */
extern class Xrandr 
{
/** Event selection bits  */
	inline static public var RRScreenChangeNotifyMask:Int = 1;
/** Event selection bits  */
	inline static public var RRCrtcChangeNotifyMask:Int = 2;
/** Event selection bits  */
	inline static public var RROutputChangeNotifyMask:Int = 4;
/** Event selection bits  */
	inline static public var RROutputPropertyNotifyMask:Int = 8;
/** Event codes  */
	inline static public var RRScreenChangeNotify:Int = 0;
/** Event codes  */
	inline static public var RRNotify:Int = 1;
/** RRNotify Subcodes  */
	inline static public var RRNotify_CrtcChange:Int = 0;
/** RRNotify Subcodes  */
	inline static public var RRNotify_OutputChange:Int = 1;
/** RRNotify Subcodes  */
	inline static public var RRNotify_OutputProperty:Int = 2;
/** used in the rotation field; rotation and reflection in 0.1 proto.  */
	inline static public var RR_Rotate_0:Int16 = 1;
/** used in the rotation field; rotation and reflection in 0.1 proto.  */
	inline static public var RR_Rotate_90:Int16 = 2;
/** used in the rotation field; rotation and reflection in 0.1 proto.  */
	inline static public var RR_Rotate_180:Int16 = 4;
/** used in the rotation field; rotation and reflection in 0.1 proto.  */
	inline static public var RR_Rotate_270:Int16 = 8;
/** new in 1.0 protocol, to allow reflection of screen  */
	inline static public var RR_Reflect_X:Int16 = 16;
/** new in 1.0 protocol, to allow reflection of screen  */
	inline static public var RR_Reflect_Y:Int16 = 32;
/** Config status  */
	inline static public var RRSetConfigSuccess:Int = 0;
/** Config status  */
	inline static public var RRSetConfigInvalidConfigTime:Int = 1;
/** Config status  */
	inline static public var RRSetConfigInvalidTime:Int = 2;
/** Config status  */
	inline static public var RRSetConfigFailed:Int = 3;
/** Connection status  */
	inline static public var RR_Connected:Int = 0;
/** Connection status  */
	inline static public var RR_Disconnected:Int = 1;
/** Connection status  */
	inline static public var RR_UnknownConnection:Int = 2;
/** Error codes  */
	inline static public var BadRROutput:Int = 0;
/** Error codes  */
	inline static public var BadRRCrtc:Int = 1;
/** Error codes  */
	inline static public var BadRRMode:Int = 2;
/** new in 1.2 protocol  */
	inline static public var RR_HSyncPositive:Int = 1;
/** new in 1.2 protocol  */
	inline static public var RR_HSyncNegative:Int = 2;
/** new in 1.2 protocol  */
	inline static public var RR_VSyncPositive:Int = 4;
/** new in 1.2 protocol  */
	inline static public var RR_VSyncNegative:Int = 8;
/** new in 1.2 protocol  */
	inline static public var RR_Interlace:Int = 16;
/** new in 1.2 protocol  */
	inline static public var RR_DoubleScan:Int = 32;
/** new in 1.2 protocol  */
	inline static public var RR_CSync:Int = 64;
/** new in 1.2 protocol  */
	inline static public var RR_CSyncPositive:Int = 128;
/** new in 1.2 protocol  */
	inline static public var RR_CSyncNegative:Int = 256;
/** new in 1.2 protocol  */
	inline static public var RR_HSkewPresent:Int = 512;
/** new in 1.2 protocol  */
	inline static public var RR_BCast:Int = 1024;
/** new in 1.2 protocol  */
	inline static public var RR_PixelMultiplex:Int = 2048;
/** new in 1.2 protocol  */
	inline static public var RR_DoubleClock:Int = 4096;
/** new in 1.2 protocol  */
	inline static public var RR_ClockDivideBy2:Int = 8192;
/**
 * Frees a {@link XRROutputInfo} structure.
 *
 * @param outputInfo the {@link XRROutputInfo} structure to free
 */
	static public function XRRFreeOutputInfo(outputInfo:java.nio.ByteBuffer):Void;
/** JNI method for {@link #XRRUpdateConfiguration}  */
	static public function nXRRUpdateConfiguration(event:haxe.Int64):Int;
/**
 * Returns the event and error base codes.
 *
 * @param display           the connection to the X server
 * @param event_base_return the base event code
 * @param error_base_return the base error code
 */
/** Alternative version of: {@link #XRRQueryExtension}  */
	static public function XRRQueryExtension(display:haxe.Int64,event_base_return:java.nio.IntBuffer,error_base_return:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,event_base_return:java.nio.ByteBuffer,error_base_return:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XRRSelectInput}  */
	static public function nXRRSelectInput(display:haxe.Int64,w:haxe.Int64,mask:Int):Void;
/** JNI method for {@link #XRRGetScreenResources}  */
	static public function nXRRGetScreenResources(display:haxe.Int64,w:haxe.Int64):haxe.Int64;
/**
 * Sets the gamma ramp
 *
 * @param display the connection to the X server
 * @param crtc    
 * @param gamma   a pointer to a {@link XRRCrtcGamma} structure that contains the gamma ramp
 */
	static public function XRRSetCrtcGamma(display:haxe.Int64,crtc:haxe.Int64,gamma:java.nio.ByteBuffer):Void;
/** JNI method for {@link #XRRSetCrtcGamma}  */
	static public function nXRRSetCrtcGamma(display:haxe.Int64,crtc:haxe.Int64,gamma:haxe.Int64):Void;
/**
 * Returns the current version of the Xrandr extension.
 *
 * @param display              the connection to the X server
 * @param major_version_return the major version
 * @param minor_version_return the minor version
 */
/** Alternative version of: {@link #XRRQueryVersion}  */
	static public function XRRQueryVersion(display:haxe.Int64,major_version_return:java.nio.IntBuffer,minor_version_return:java.nio.IntBuffer):Int;
	@:overload(function (display:haxe.Int64,major_version_return:java.nio.ByteBuffer,minor_version_return:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XRRGetCrtcInfo}  */
	static public function nXRRGetCrtcInfo(display:haxe.Int64,resources:haxe.Int64,crtc:haxe.Int64):haxe.Int64;
/**
 * TODO: document
 *
 * @param display the connection to the X server
 * @param w       the window
 * @param mask    the mask
 */
	static public function XRRSelectInput(display:haxe.Int64,w:haxe.Int64,mask:Int):Void;
/** JNI method for {@link #XRRGetCrtcGamma}  */
	static public function nXRRGetCrtcGamma(display:haxe.Int64,crtc:haxe.Int64):haxe.Int64;
/**
 * Returns the current display gamma values in a {@link XRRCrtcGamma} structure.
 *
 * @param display the connection to the X server
 * @param crtc    
 */
	static public function XRRGetCrtcGamma(display:haxe.Int64,crtc:haxe.Int64):java.nio.ByteBuffer;
/** JNI method for {@link #XRRQueryExtension}  */
	static public function nXRRQueryExtension(display:haxe.Int64,event_base_return:haxe.Int64,error_base_return:haxe.Int64):Int;
/** JNI method for {@link #XRRFreeScreenResources}  */
	static public function nXRRFreeScreenResources(resources:haxe.Int64):Void;
/** JNI method for {@link #XRRGetOutputInfo}  */
	static public function nXRRGetOutputInfo(display:haxe.Int64,resources:haxe.Int64,output:haxe.Int64):haxe.Int64;
/** Alternative version of: {@link #XRRSetCrtcConfig}  */
/**
 * 
 *
 * @param display   the connection to the X server
 * @param resources 
 * @param crtc      
 * @param timestamp 
 * @param x         
 * @param y         
 * @param mode      
 * @param rotation  
 * @param outputs   
 * @param noutputs  
 */
	static public function XRRSetCrtcConfig(display:haxe.Int64,resources:java.nio.ByteBuffer,crtc:haxe.Int64,timestamp:haxe.Int64,x:Int,y:Int,mode:haxe.Int64,rotation:Int16,outputs:java.nio.ByteBuffer,noutputs:Int):Int;
	@:overload(function (display:haxe.Int64,resources:java.nio.ByteBuffer,crtc:haxe.Int64,timestamp:haxe.Int64,x:Int,y:Int,mode:haxe.Int64,rotation:Int16,outputs:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #XRRGetCrtcGammaSize}  */
	static public function nXRRGetCrtcGammaSize(display:haxe.Int64,crtc:haxe.Int64):Int;
/** JNI method for {@link #XRRQueryVersion}  */
	static public function nXRRQueryVersion(display:haxe.Int64,major_version_return:haxe.Int64,minor_version_return:haxe.Int64):Int;
/**
 * Frees the specified {@link XRRScreenResources} structure.
 *
 * @param resources the {@link XRRScreenResources} structure to free
 */
	static public function XRRFreeScreenResources(resources:java.nio.ByteBuffer):Void;
/**
 * Frees a {@link XRRCrtcInfo} structure.
 *
 * @param crtcInfo the {@link XRRCrtcInfo} structure to free
 */
	static public function XRRFreeCrtcInfo(crtcInfo:java.nio.ByteBuffer):Void;
/** JNI method for {@link #XRRAllocGamma}  */
	static public function nXRRAllocGamma(size:Int):haxe.Int64;
/**
 * Returns the primary output for the screen.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XRRGetOutputPrimary(display:haxe.Int64,w:haxe.Int64):haxe.Int64;
/**
 * Intended to take RRScreenChangeNotify, or ConfigureNotify (on the root window) returns 1 if it is an event type it understands, 0 if not.
 *
 * @param event the event
 */
	static public function XRRUpdateConfiguration(event:java.nio.ByteBuffer):Int;
/**
 * Allocates a {@link XRRCrtcGamma} structure of the specified {@code size}.
 *
 * @param size the gamma size
 */
	static public function XRRAllocGamma(size:Int):java.nio.ByteBuffer;
/** JNI method for {@link #XRRFreeOutputInfo}  */
	static public function nXRRFreeOutputInfo(outputInfo:haxe.Int64):Void;
/**
 * Returns information about a screen in a {@link XRRCrtcInfo} structure.
 *
 * @param display   the connection to the X server
 * @param resources a pointer to a {@link XRRScreenResources} structure
 * @param crtc      the screen to query
 */
	static public function XRRGetCrtcInfo(display:haxe.Int64,resources:java.nio.ByteBuffer,crtc:haxe.Int64):java.nio.ByteBuffer;
/**
 * Returns output information in a {@link XRROutputInfo} structure.
 *
 * @param display   the connection to the X server
 * @param resources a pointer to a {@link XRRScreenResources} structure
 * @param output    the output to query
 */
	static public function XRRGetOutputInfo(display:haxe.Int64,resources:java.nio.ByteBuffer,output:haxe.Int64):java.nio.ByteBuffer;
/**
 * Returns a {@link XRRScreenResources} structure for the specified window.
 *
 * @param display the connection to the X server
 * @param w       the window
 */
	static public function XRRGetScreenResources(display:haxe.Int64,w:haxe.Int64):java.nio.ByteBuffer;
/** JNI method for {@link #XRRSetCrtcConfig}  */
	static public function nXRRSetCrtcConfig(display:haxe.Int64,resources:haxe.Int64,crtc:haxe.Int64,timestamp:haxe.Int64,x:Int,y:Int,mode:haxe.Int64,rotation:Int16,outputs:haxe.Int64,noutputs:Int):Int;
/**
 * TODO: document
 *
 * @param display the connection to the X server
 * @param crtc    
 */
	static public function XRRGetCrtcGammaSize(display:haxe.Int64,crtc:haxe.Int64):Int;
/** JNI method for {@link #XRRFreeGamma}  */
	static public function nXRRFreeGamma(gamma:haxe.Int64):Void;
/**
 * Frees the specified {@link XRRCrtcGamma} structure.
 *
 * @param gamma the {@link XRRCrtcGamma} structure to free
 */
	static public function XRRFreeGamma(gamma:java.nio.ByteBuffer):Void;
/** JNI method for {@link #XRRGetOutputPrimary}  */
	static public function nXRRGetOutputPrimary(display:haxe.Int64,w:haxe.Int64):haxe.Int64;
/** JNI method for {@link #XRRFreeCrtcInfo}  */
	static public function nXRRFreeCrtcInfo(crtcInfo:haxe.Int64):Void;

}
