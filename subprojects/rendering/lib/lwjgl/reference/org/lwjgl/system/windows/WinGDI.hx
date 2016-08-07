package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WinGDI")
@:final
/** Native bindings to WinGDI.h  */
extern class WinGDI 
{
/** DEVMODE field selection bits.  */
	inline static public var DM_DISPLAYORIENTATION:Int = 128;
/** DEVMODE field selection bits.  */
	inline static public var DM_LOGPIXELS:Int = 131072;
/** DEVMODE field selection bits.  */
	inline static public var DM_BITSPERPEL:Int = 262144;
/** DEVMODE field selection bits.  */
	inline static public var DM_PELSWIDTH:Int = 524288;
/** DEVMODE field selection bits.  */
	inline static public var DM_PELSHEIGHT:Int = 1048576;
/** DEVMODE field selection bits.  */
	inline static public var DM_DISPLAYFLAGS:Int = 2097152;
/** DEVMODE field selection bits.  */
	inline static public var DM_DISPLAYFREQUENCY:Int = 4194304;
/** DEVMODE field selection bits.  */
	inline static public var DM_DISPLAYFIXEDOUTPUT:Int = 536870912;
/** Stock logical objects.  */
	inline static public var WHITE_BRUSH:Int = 0;
/** Stock logical objects.  */
	inline static public var LTGRAY_BRUSH:Int = 1;
/** Stock logical objects.  */
	inline static public var GRAY_BRUSH:Int = 2;
/** Stock logical objects.  */
	inline static public var DKGRAY_BRUSH:Int = 3;
/** Stock logical objects.  */
	inline static public var BLACK_BRUSH:Int = 4;
/** Stock logical objects.  */
	inline static public var NULL_BRUSH:Int = 5;
/** Stock logical objects.  */
	inline static public var HOLLOW_BRUSH:Int = 5;
/** Stock logical objects.  */
	inline static public var WHITE_PEN:Int = 6;
/** Stock logical objects.  */
	inline static public var BLACK_PEN:Int = 7;
/** Stock logical objects.  */
	inline static public var NULL_PEN:Int = 8;
/** Stock logical objects.  */
	inline static public var OEM_FIXED_FONT:Int = 10;
/** Stock logical objects.  */
	inline static public var ANSI_FIXED_FONT:Int = 11;
/** Stock logical objects.  */
	inline static public var ANSI_VAR_FONT:Int = 12;
/** Stock logical objects.  */
	inline static public var SYSTEM_FONT:Int = 13;
/** Stock logical objects.  */
	inline static public var DEVICE_DEFAULT_FONT:Int = 14;
/** Stock logical objects.  */
	inline static public var DEFAULT_PALETTE:Int = 15;
/** Stock logical objects.  */
	inline static public var SYSTEM_FIXED_FONT:Int = 16;
/** Stock logical objects.  */
	inline static public var DEFAULT_GUI_FONT:Int = 17;
/** Stock logical objects.  */
	inline static public var DC_BRUSH:Int = 18;
/** Stock logical objects.  */
	inline static public var DC_PEN:Int = 19;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_PEN:Int = 1;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_BRUSH:Int = 2;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_DC:Int = 3;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_METADC:Int = 4;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_PAL:Int = 5;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_FONT:Int = 6;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_BITMAP:Int = 7;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_REGION:Int = 8;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_METAFILE:Int = 9;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_MEMDC:Int = 10;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_EXTPEN:Int = 11;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_ENHMETADC:Int = 12;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_ENHMETAFILE:Int = 13;
/** Object types for {@link #EnumObjects} and {@link #GetCurrentObject}.  */
	inline static public var OBJ_COLORSPACE:Int = 14;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var DRIVERVERSION:Int = 0;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var TECHNOLOGY:Int = 2;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var HORZSIZE:Int = 4;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var VERTSIZE:Int = 6;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var HORZRES:Int = 8;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var VERTRES:Int = 10;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var BITSPIXEL:Int = 12;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var PLANES:Int = 14;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var NUMBRUSHES:Int = 16;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var NUMPENS:Int = 18;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var NUMMARKERS:Int = 20;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var NUMFONTS:Int = 22;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var NUMCOLORS:Int = 24;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var PDEVICESIZE:Int = 26;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var CURVECAPS:Int = 28;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var LINECAPS:Int = 30;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var POLYGONALCAPS:Int = 32;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var TEXTCAPS:Int = 34;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var CLIPCAPS:Int = 36;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var RASTERCAPS:Int = 38;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var ASPECTX:Int = 40;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var ASPECTY:Int = 42;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var ASPECTXY:Int = 44;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var LOGPIXELSX:Int = 88;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var LOGPIXELSY:Int = 90;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var SIZEPALETTE:Int = 104;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var NUMRESERVED:Int = 106;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var COLORRES:Int = 108;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var VREFRESH:Int = 116;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var DESKTOPVERTRES:Int = 117;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var DESKTOPHORZRES:Int = 118;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var BLTALIGNMENT:Int = 119;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var SHADEBLENDCAPS:Int = 120;
/** Used by the index parameter of {@link #GetDeviceCaps}.  */
	inline static public var COLORMGMTCAPS:Int = 121;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_DOUBLEBUFFER:Int = 1;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_STEREO:Int = 2;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_DRAW_TO_WINDOW:Int = 4;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_DRAW_TO_BITMAP:Int = 8;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_SUPPORT_GDI:Int = 16;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_SUPPORT_OPENGL:Int = 32;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_GENERIC_FORMAT:Int = 64;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_NEED_PALETTE:Int = 128;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_NEED_SYSTEM_PALETTE:Int = 256;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_SWAP_EXCHANGE:Int = 512;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_SWAP_COPY:Int = 1024;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_SWAP_LAYER_BUFFERS:Int = 2048;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_GENERIC_ACCELERATED:Int = 4096;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_SUPPORT_DIRECTDRAW:Int = 8192;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_DIRECT3D_ACCELERATED:Int = 16384;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_SUPPORT_COMPOSITION:Int = 32768;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_DEPTH_DONTCARE:Int = 536870912;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_DOUBLEBUFFER_DONTCARE:Int = 1073741824;
/** {@link PIXELFORMATDESCRIPTOR} flags.  */
	inline static public var PFD_STEREO_DONTCARE:Int = -2147483648;
/** {@link PIXELFORMATDESCRIPTOR} pixel types.  */
	inline static public var PFD_TYPE_RGBA:Int = 0;
/** {@link PIXELFORMATDESCRIPTOR} pixel types.  */
	inline static public var PFD_TYPE_COLORINDEX:Int = 1;
/** {@link PIXELFORMATDESCRIPTOR} layer types.  */
	inline static public var PFD_MAIN_PLANE:Int = 0;
/** {@link PIXELFORMATDESCRIPTOR} layer types.  */
	inline static public var PFD_OVERLAY_PLANE:Int = 1;
/** {@link PIXELFORMATDESCRIPTOR} layer types.  */
	inline static public var PFD_UNDERLAY_PLANE:Int = -1;
/** CharSequence version of: {@link #CreateDC}  */
/**
 * Creates a device context (DC) for a device using the specified name.
 *
 * @param lpszDriver A pointer to a null-terminated character string that specifies either DISPLAY or the name of a specific display device. For printing, we recommend
 *                   that you pass {@code NULL} to {@code lpszDriver} because GDI ignores {@code lpszDriver} for printer devices.
 * @param lpszDevice A pointer to a null-terminated character string that specifies the name of the specific output device being used, as shown by the Print Manager (for
 *                   example, Epson FX-80). It is not the printer model name. The {@code lpszDevice} parameter must be used.
 *                   
 *                   <p>To obtain valid names for displays, call {@link #EnumDisplayDevices}.</p>
 *                   
 *                   <p>If {@code lpszDriver} is DISPLAY or the device name of a specific display device, then {@code lpszDevice} must be {@code NULL} or that same device name. If
 *                   {@code lpszDevice} is {@code NULL}, then a DC is created for the primary display device.</p>
 *                   
 *                   <p>If there are multiple monitors on the system, calling {@code CreateDC(TEXT("DISPLAY"),NULL,NULL,NULL)} will create a DC covering all the monitors.</p>
 * @param lpszOutput this parameter is ignored and should be set to {@code NULL}
 * @param lpInitData A pointer to a {@link DEVMODE} structure containing device-specific initialization data for the device driver. The {@code DocumentProperties}
 *                   function retrieves this structure filled in for a specified device. The {@code lpInitData} parameter must be {@code NULL} if the device driver is to use
 *                   the default initialization (if any) specified by the user.
 *                   
 *                   <p>If {@code lpszDriver} is DISPLAY, {@code lpInitData} must be {@code NULL}; GDI then uses the display device's current {@link DEVMODE}.</p>
 */
	static public function CreateDC(lpszDriver:java.nio.ByteBuffer,lpszDevice:java.nio.ByteBuffer,lpszOutput:java.nio.ByteBuffer,lpInitData:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (lpszDriver:java.lang.CharSequence,lpszDevice:java.lang.CharSequence,lpszOutput:java.nio.ByteBuffer,lpInitData:java.nio.ByteBuffer):haxe.Int64 {})
/** JNI method for {@link #SelectObject}  */
	static public function nSelectObject(hdc:haxe.Int64,object:haxe.Int64):haxe.Int64;
/** JNI method for {@link #GetObjectType}  */
	static public function nGetObjectType(object:haxe.Int64):Int;
/**
 * Creates a {@link EnumObjectsCallback} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link EnumObjectsCallback} instance
 */
	static public function EnumObjectsCallback(sam:org.lwjgl.system.windows.EnumObjectsCallback_SAM):org.lwjgl.system.windows.EnumObjectsCallback;
/**
 * Deletes a logical pen, brush, font, bitmap, region, or palette, freeing all system resources associated with the object. After the object is deleted,
 * the specified handle is no longer valid.
 *
 * @param object a handle to a logical pen, brush, font, bitmap, region, or palette
 */
	static public function DeleteObject(object:haxe.Int64):Int;
/** JNI method for {@link #GetDCOrgEx}  */
	static public function nGetDCOrgEx(hdc:haxe.Int64,point:haxe.Int64):Int;
/**
 * Retrieves a handle to an object of the specified type that has been selected into the specified device context (DC).
 *
 * @param hdc        a handle to the DC
 * @param objectType the object type to be queried
 */
	static public function GetCurrentObject(hdc:haxe.Int64,objectType:Int):haxe.Int64;
/** JNI method for {@link #SetDeviceGammaRamp}  */
	static public function nSetDeviceGammaRamp(hdc:haxe.Int64,lpRamp:haxe.Int64):Int;
/** JNI method for {@link #CreateDC}  */
	static public function nCreateDC(lpszDriver:haxe.Int64,lpszDevice:haxe.Int64,lpszOutput:haxe.Int64,lpInitData:haxe.Int64):haxe.Int64;
/**
 * Retrieves device-specific information for the specified device.
 *
 * @param hdc   a handle to the DC
 * @param index the item to be returned
 */
	static public function GetDeviceCaps(hdc:haxe.Int64,index:Int):Int;
/**
 * Exchanges the front and back buffers if the current pixel format for the window referenced by the specified device context includes a back buffer.
 *
 * @param dc a device context. If the current pixel format for the window referenced by this device context includes a back buffer, the function exchanges the
 *           front and back buffers.
 */
	static public function SwapBuffers(dc:haxe.Int64):Int;
/** JNI method for {@link #GetDeviceCaps}  */
	static public function nGetDeviceCaps(hdc:haxe.Int64,index:Int):Int;
/** JNI method for {@link #SwapBuffers}  */
	static public function nSwapBuffers(dc:haxe.Int64):Int;
/**
 * Enumerates the pens or brushes available for the specified device context (DC). This function calls the application-defined callback function once for
 * each available object, supplying data describing that object. EnumObjects continues calling the callback function until the callback function returns
 * zero or until all of the objects have been enumerated.
 *
 * @param hdc        a handle to the DC
 * @param objectType the object type. One of:<br>{@link #OBJ_BRUSH}, {@link #OBJ_PEN}
 * @param objectFunc the application-defined callback function
 * @param param      the data passed to the callback function along with the object information.
 */
	static public function EnumObjects(hdc:haxe.Int64,objectType:Int,objectFunc:org.lwjgl.system.windows.EnumObjectsCallback,param:haxe.Int64):Int;
/** JNI method for {@link #SaveDC}  */
	static public function nSaveDC(hdc:haxe.Int64):Int;
/**
 * Sets the gamma ramp on direct color display boards having drivers that support downloadable gamma ramps in hardware.
 *
 * @param hdc    the device context of the direct color display board in question
 * @param lpRamp pointer to a buffer containing the gamma ramp to be set. The gamma ramp is specified in three arrays of 256 WORD elements each, which contain the
 *               mapping between RGB values in the frame buffer and digital-analog-converter (DAC ) values. The sequence of the arrays is red, green, blue. The RGB
 *               values must be stored in the most significant bits of each WORD to increase DAC independence.
 */
	static public function GetDeviceGammaRamp(hdc:haxe.Int64,lpRamp:haxe.Int64):Int;
/** JNI method for {@link #GetPixelFormat}  */
	static public function nGetPixelFormat(hdc:haxe.Int64):Int;
/**
 * Retrieves the type of the specified object.
 *
 * @param object a handle to the graphics object
 */
	static public function GetObjectType(object:haxe.Int64):Int;
/**
 * Cancels any pending operation on the specified device context (DC).
 *
 * @param hdc a handle to the DC
 */
	static public function CancelDC(hdc:haxe.Int64):Int;
/**
 * Obtains the index of the currently selected pixel format of the specified device context.
 *
 * @param hdc the device context of the currently selected pixel format index returned by the function
 */
	static public function GetPixelFormat(hdc:haxe.Int64):Int;
/**
 * Retrieves a handle to one of the stock pens, brushes, fonts, or palettes.
 *
 * @param object the type of stock object
 */
	static public function GetStockObject(object:Int):haxe.Int64;
/**
 * Restores a device context (DC) to the specified state. The DC is restored by popping state information off a stack created by earlier calls to the
 * {@link #SaveDC} function.
 *
 * @param hdc     a handle to the DC
 * @param savedDC the saved state to be restored. If this parameter is positive, {@code savedDC} represents a specific instance of the state to be restored. If this
 *                parameter is negative, {@code savedDC} represents an instance relative to the current state. For example, -1 restores the most recently saved state.
 */
	static public function RestoreDC(hdc:haxe.Int64,savedDC:Int):Int;
/**
 * Selects an object into the specified device context (DC). The new object replaces the previous object of the same type.
 *
 * @param hdc    a handle to the DC
 * @param object a handle to the object to be selected
 */
	static public function SelectObject(hdc:haxe.Int64,object:haxe.Int64):haxe.Int64;
/** JNI method for {@link #DescribePixelFormat}  */
	static public function nDescribePixelFormat(hdc:haxe.Int64,pixelFormat:Int,bytes:Int,pixelFormatDescriptor:haxe.Int64):Int;
/** JNI method for {@link #SetPixelFormat}  */
	static public function nSetPixelFormat(hdc:haxe.Int64,pixelFormat:Int,pixelFormatDescriptor:haxe.Int64):Int;
/** JNI method for {@link #DeleteDC}  */
	static public function nDeleteDC(hdc:haxe.Int64):Int;
/** Alternative version of: {@link #DescribePixelFormat}  */
/**
 * Obtains information about the pixel format identified by pixelFormat of the device associated with dc. The function sets the members of the
 * {@link PIXELFORMATDESCRIPTOR} structure pointed to by pixelFormatDescriptor with that pixel format data. The return value is the maximum pixel format
 * index of the device context.
 *
 * @param hdc                   the device context
 * @param pixelFormat           index that specifies the pixel format. The pixel formats that a device context supports are identified by positive one-based integer indexes.
 * @param bytes                 the size, in bytes, of the structure pointed to by {@code pixelFormatDescriptor}. The {@code wglDescribePixelFormat} function stores no more than
 *                              {@code bytes} bytes of data to that structure. Set this value to {@link PIXELFORMATDESCRIPTOR#SIZEOF}.
 * @param pixelFormatDescriptor a {@link PIXELFORMATDESCRIPTOR} structure whose members the function sets with pixel format data. The function stores the number of bytes copied to
 *                              the structure in the structure's {@code size} member. If, upon entry, {@code pixelFormatDescriptor} is {@code NULL}, the function writes no data to the
 *                              structure. This is useful when you only want to obtain the maximum pixel format index of a device context.
 */
	static public function DescribePixelFormat(hdc:haxe.Int64,pixelFormat:Int,bytes:Int,pixelFormatDescriptor:java.nio.ByteBuffer):Int;
	@:overload(function (hdc:haxe.Int64,pixelFormat:Int,pixelFormatDescriptor:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #GetDeviceGammaRamp}  */
	static public function nGetDeviceGammaRamp(hdc:haxe.Int64,lpRamp:haxe.Int64):Int;
/**
 * Saves the current state of the specified device context (DC) by copying data describing selected objects and graphic modes (such as the bitmap, brush,
 * palette, font, pen, region, drawing mode, and mapping mode) to a context stack.
 *
 * @param hdc a handle to the DC whose state is to be saved
 */
	static public function SaveDC(hdc:haxe.Int64):Int;
/** JNI method for {@link #CancelDC}  */
	static public function nCancelDC(hdc:haxe.Int64):Int;
/** JNI method for {@link #DeleteObject}  */
	static public function nDeleteObject(object:haxe.Int64):Int;
/**
 * Gets the gamma ramp on direct color display boards having drivers that support downloadable gamma ramps in hardware.
 *
 * @param hdc    the device context of the direct color display board in question
 * @param lpRamp points to a buffer where the function can place the current gamma ramp of the color display board. The gamma ramp is specified in three arrays of
 *               256 WORD elements each, which contain the mapping between RGB values in the frame buffer and digital-analog-converter (DAC) values. The sequence of
 *               the arrays is red, green, blue.
 */
	static public function SetDeviceGammaRamp(hdc:haxe.Int64,lpRamp:haxe.Int64):Int;
/** JNI method for {@link #GetCurrentObject}  */
	static public function nGetCurrentObject(hdc:haxe.Int64,objectType:Int):haxe.Int64;
/**
 * Retrieves the final translation origin for a specified device context (DC). The final translation origin specifies an offset that the system uses to
 * translate device coordinates into client coordinates (for coordinates in an application's window).
 *
 * @param hdc   a handle to the DC whose final translation origin is to be retrieved
 * @param point a {@link POINT} structure that receives the final translation origin, in device coordinates
 */
	static public function GetDCOrgEx(hdc:haxe.Int64,point:java.nio.ByteBuffer):Int;
/**
 * Creates a memory device context (DC) compatible with the specified device.
 *
 * @param hdc a handle to an existing DC. If this handle is {@code NULL}, the function creates a memory DC compatible with the application's current screen.
 */
	static public function CreateCompatibleDC(hdc:haxe.Int64):haxe.Int64;
/** JNI method for {@link #ChoosePixelFormat}  */
	static public function nChoosePixelFormat(hdc:haxe.Int64,pixelFormatDescriptor:haxe.Int64):Int;
/**
 * Attempts to match an appropriate pixel format supported by a device context to a given pixel format specification.
 *
 * @param hdc                   the device context that the function examines to determine the best match for the pixel format descriptor pointed to by {@code pixelFormatDescriptor}
 * @param pixelFormatDescriptor a {@link PIXELFORMATDESCRIPTOR} structure that specifies the requested pixel format
 */
	static public function ChoosePixelFormat(hdc:haxe.Int64,pixelFormatDescriptor:java.nio.ByteBuffer):Int;
/**
 * Sets the pixel format of the specified device context to the format specified by the pixelFormat index.
 *
 * @param hdc                   the device context whose pixel format the function attempts to set
 * @param pixelFormat           index that identifies the pixel format to set. The various pixel formats supported by a device context are identified by one-based indexes.
 * @param pixelFormatDescriptor a {@link PIXELFORMATDESCRIPTOR} structure that contains the logical pixel format specification. The system's metafile component uses this structure
 *                              to record the logical pixel format specification. The structure has no other effect upon the behavior of the SetPixelFormat function.
 */
	static public function SetPixelFormat(hdc:haxe.Int64,pixelFormat:Int,pixelFormatDescriptor:java.nio.ByteBuffer):Int;
/**
 * Deletes the specified device context (DC).
 *
 * @param hdc a handle to the device context
 */
	static public function DeleteDC(hdc:haxe.Int64):Int;
/** JNI method for {@link #EnumObjects}  */
	static public function nEnumObjects(hdc:haxe.Int64,objectType:Int,objectFunc:haxe.Int64,param:haxe.Int64):Int;
/** JNI method for {@link #RestoreDC}  */
	static public function nRestoreDC(hdc:haxe.Int64,savedDC:Int):Int;

}
