package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.CGL")
@:final
/** Native bindings to CGL.  */
extern class CGL 
{
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAllRenderers:Int = 1;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFATripleBuffer:Int = 3;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFADoubleBuffer:Int = 5;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAStereo:Int = 6;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAColorSize:Int = 8;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAlphaSize:Int = 11;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFADepthSize:Int = 12;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAStencilSize:Int = 13;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAMinimumPolicy:Int = 51;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAMaximumPolicy:Int = 52;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFASampleBuffers:Int = 55;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFASamples:Int = 56;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAColorFloat:Int = 58;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAMultisample:Int = 59;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFASupersample:Int = 60;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFASampleAlpha:Int = 61;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFARendererID:Int = 70;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFASingleRenderer:Int = 71;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFANoRecovery:Int = 72;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAccelerated:Int = 73;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAClosestPolicy:Int = 74;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFABackingStore:Int = 76;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFABackingVolatile:Int = 77;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFADisplayMask:Int = 84;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAllowOfflineRenderers:Int = 96;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAcceleratedCompute:Int = 97;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAOpenGLProfile:Int = 99;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFASupportsAutomaticGraphicsSwitching:Int = 101;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAVirtualScreenCount:Int = 128;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAuxBuffers:Int = 7;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAccumSize:Int = 14;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAOffScreen:Int = 53;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAAuxDepthStencil:Int = 57;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAWindow:Int = 80;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFACompliant:Int = 83;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAPBuffer:Int = 90;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFARemotePBuffer:Int = 91;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFARobust:Int = 75;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAMPSafe:Int = 78;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAMultiScreen:Int = 81;
/** Attribute names for {@link #CGLChoosePixelFormat ChoosePixelFormat} and {@link #CGLDescribePixelFormat DescribePixelFormat}.  */
	inline static public var kCGLPFAFullScreen:Int = 54;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPOffScreen:Int = 53;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPRendererID:Int = 70;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPAccelerated:Int = 73;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPBackingStore:Int = 76;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPWindow:Int = 80;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPCompliant:Int = 83;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPDisplayMask:Int = 84;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPBufferModes:Int = 100;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPColorModes:Int = 103;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPAccumModes:Int = 104;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPDepthModes:Int = 105;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPStencilModes:Int = 106;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPMaxAuxBuffers:Int = 107;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPMaxSampleBuffers:Int = 108;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPMaxSamples:Int = 109;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPSampleModes:Int = 110;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPSampleAlpha:Int = 111;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPVideoMemory:Int = 120;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPTextureMemory:Int = 121;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPGPUVertProcCapable:Int = 122;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPGPUFragProcCapable:Int = 123;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPRendererCount:Int = 128;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPOnline:Int = 129;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPAcceleratedCompute:Int = 130;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPVideoMemoryMegabytes:Int = 131;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPTextureMemoryMegabytes:Int = 132;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPRobust:Int = 75;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPMPSafe:Int = 78;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPMultiScreen:Int = 81;
/** Property names for {@link #CGLDescribeRenderer DescribeRenderer}.  */
	inline static public var kCGLRPFullScreen:Int = 54;
/** Enable names for {@link #CGLEnable Enable}, {@link #CGLDisable Disable}, and {@link #CGLIsEnabled IsEnabled}.  */
	inline static public var kCGLCESwapRectangle:Int = 201;
/** Enable names for {@link #CGLEnable Enable}, {@link #CGLDisable Disable}, and {@link #CGLIsEnabled IsEnabled}.  */
	inline static public var kCGLCESwapLimit:Int = 203;
/** Enable names for {@link #CGLEnable Enable}, {@link #CGLDisable Disable}, and {@link #CGLIsEnabled IsEnabled}.  */
	inline static public var kCGLCERasterization:Int = 221;
/** Enable names for {@link #CGLEnable Enable}, {@link #CGLDisable Disable}, and {@link #CGLIsEnabled IsEnabled}.  */
	inline static public var kCGLCEStateValidation:Int = 301;
/** Enable names for {@link #CGLEnable Enable}, {@link #CGLDisable Disable}, and {@link #CGLIsEnabled IsEnabled}.  */
	inline static public var kCGLCESurfaceBackingSize:Int = 305;
/** Enable names for {@link #CGLEnable Enable}, {@link #CGLDisable Disable}, and {@link #CGLIsEnabled IsEnabled}.  */
	inline static public var kCGLCEDisplayListOptimization:Int = 307;
/** Enable names for {@link #CGLEnable Enable}, {@link #CGLDisable Disable}, and {@link #CGLIsEnabled IsEnabled}.  */
	inline static public var kCGLCEMPEngine:Int = 313;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPSwapRectangle:Int = 200;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPSwapInterval:Int = 222;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPDispatchTableSize:Int = 224;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPClientStorage:Int = 226;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPSurfaceTexture:Int = 228;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPSurfaceOrder:Int = 235;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPSurfaceOpacity:Int = 236;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPSurfaceBackingSize:Int = 304;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPSurfaceSurfaceVolatile:Int = 306;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPReclaimResources:Int = 308;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPCurrentRendererID:Int = 309;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPGPUVertexProcessing:Int = 310;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPGPUFragmentProcessing:Int = 311;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPHasDrawable:Int = 314;
/** Parameter names for {@link #CGLSetParameter SetParameter} and {@link #CGLGetParameter GetParameter}.  */
	inline static public var kCGLCPMPSwapsInFlight:Int = 315;
/** Option names for {@link #CGLSetGlobalOption SetGlobalOption} and {@link #CGLGetGlobalOption GetGlobalOption}.  */
	inline static public var kCGLGOFormatCacheSize:Int = 501;
/** Option names for {@link #CGLSetGlobalOption SetGlobalOption} and {@link #CGLGetGlobalOption GetGlobalOption}.  */
	inline static public var kCGLGOClearFormatCache:Int = 502;
/** Option names for {@link #CGLSetGlobalOption SetGlobalOption} and {@link #CGLGetGlobalOption GetGlobalOption}.  */
	inline static public var kCGLGORetainRenderers:Int = 503;
/** Option names for {@link #CGLSetGlobalOption SetGlobalOption} and {@link #CGLGetGlobalOption GetGlobalOption}.  */
	inline static public var kCGLGOResetLibrary:Int = 504;
/** Option names for {@link #CGLSetGlobalOption SetGlobalOption} and {@link #CGLGetGlobalOption GetGlobalOption}.  */
	inline static public var kCGLGOUseErrorHandler:Int = 505;
/** Option names for {@link #CGLSetGlobalOption SetGlobalOption} and {@link #CGLGetGlobalOption GetGlobalOption}.  */
	inline static public var kCGLGOUseBuildCache:Int = 506;
/** OpenGL Implementation Profiles.  */
	inline static public var kCGLOGLPVersion_Legacy:Int = 4096;
/** OpenGL Implementation Profiles.  */
	inline static public var kCGLOGLPVersion_3_2_Core:Int = 12800;
/** CGL error return values.  */
	inline static public var kCGLNoError:Int = 0;
/** CGL error return values.  */
	inline static public var kCGLBadAttribute:Int = 10000;
/** CGL error return values.  */
	inline static public var kCGLBadProperty:Int = 10001;
/** CGL error return values.  */
	inline static public var kCGLBadPixelFormat:Int = 10002;
/** CGL error return values.  */
	inline static public var kCGLBadRendererInfo:Int = 10003;
/** CGL error return values.  */
	inline static public var kCGLBadContext:Int = 10004;
/** CGL error return values.  */
	inline static public var kCGLBadDrawable:Int = 10005;
/** CGL error return values.  */
	inline static public var kCGLBadDisplay:Int = 10006;
/** CGL error return values.  */
	inline static public var kCGLBadState:Int = 10007;
/** CGL error return values.  */
	inline static public var kCGLBadValue:Int = 10008;
/** CGL error return values.  */
	inline static public var kCGLBadMatch:Int = 10009;
/** CGL error return values.  */
	inline static public var kCGLBadEnumeration:Int = 10010;
/** CGL error return values.  */
	inline static public var kCGLBadOffScreen:Int = 10011;
/** CGL error return values.  */
	inline static public var kCGLBadFullScreen:Int = 10012;
/** CGL error return values.  */
	inline static public var kCGLBadWindow:Int = 10013;
/** CGL error return values.  */
	inline static public var kCGLBadAddress:Int = 10014;
/** CGL error return values.  */
	inline static public var kCGLBadCodeModule:Int = 10015;
/** CGL error return values.  */
	inline static public var kCGLBadAlloc:Int = 10016;
/** CGL error return values.  */
	inline static public var kCGLBadConnection:Int = 10017;
/** Buffer modes.  */
	inline static public var kCGLMonoscopicBit:Int = 1;
/** Buffer modes.  */
	inline static public var kCGLStereoscopicBit:Int = 2;
/** Buffer modes.  */
	inline static public var kCGLSingleBufferBit:Int = 4;
/** Buffer modes.  */
	inline static public var kCGLDoubleBufferBit:Int = 8;
/** Buffer modes.  */
	inline static public var kCGLTripleBufferBit:Int = 16;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL0Bit:Int = 1;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL1Bit:Int = 2;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL2Bit:Int = 4;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL3Bit:Int = 8;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL4Bit:Int = 16;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL5Bit:Int = 32;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL6Bit:Int = 64;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL8Bit:Int = 128;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL10Bit:Int = 256;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL12Bit:Int = 512;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL16Bit:Int = 1024;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL24Bit:Int = 2048;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL32Bit:Int = 4096;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL48Bit:Int = 8192;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL64Bit:Int = 16384;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL96Bit:Int = 32768;
/** Depth and stencil buffer depths.  */
	inline static public var kCGL128Bit:Int = 65536;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB444Bit:Int = 64;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLARGB4444Bit:Int = 128;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB444A8Bit:Int = 256;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB555Bit:Int = 512;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLARGB1555Bit:Int = 1024;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB555A8Bit:Int = 2048;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB565Bit:Int = 4096;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB565A8Bit:Int = 8192;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB888Bit:Int = 16384;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLARGB8888Bit:Int = 32768;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB888A8Bit:Int = 65536;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB101010Bit:Int = 131072;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLARGB2101010Bit:Int = 262144;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB101010_A8Bit:Int = 524288;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB121212Bit:Int = 1048576;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLARGB12121212Bit:Int = 2097152;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGB161616Bit:Int = 4194304;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGBA16161616Bit:Int = 8388608;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGBFloat64Bit:Int = 16777216;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGBAFloat64Bit:Int = 33554432;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGBFloat128Bit:Int = 67108864;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGBAFloat128Bit:Int = 134217728;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGBFloat256Bit:Int = 268435456;
/** Color and accumulation buffer formats.  */
	inline static public var kCGLRGBAFloat256Bit:Int = 536870912;
/** Sampling modes.  */
	inline static public var kCGLSupersampleBit:Int = 1;
/** Sampling modes.  */
	inline static public var kCGLMultisampleBit:Int = 2;
/**
 * Increments the receiver's reference count.
 * 
 * <p>Each call to CGLRetainPixelFormat increases the reference count by 1. Each call to CGLRetainPixelFormat must be matched with a call to
 * {@link #CGLReleasePixelFormat ReleasePixelFormat}.</p>
 *
 * @param pix the pixel format object whose reference count should be incremented
 */
	static public function CGLRetainPixelFormat(pix:haxe.Int64):haxe.Int64;
/** JNI method for {@link #CGLQueryRendererInfo QueryRendererInfo}  */
	static public function nCGLQueryRendererInfo(display_mask:Int,rend:haxe.Int64,nrend:haxe.Int64):Int;
/**
 * Disables an option for a rendering context.
 *
 * @param ctx   a rendering context
 * @param pname the option to disable. One of:<br>{@link #kCGLCESwapRectangle CESwapRectangle}, {@link #kCGLCESwapLimit CESwapLimit}, {@link #kCGLCERasterization CERasterization}, {@link #kCGLCEStateValidation CEStateValidation}, {@link #kCGLCESurfaceBackingSize CESurfaceBackingSize}, {@link #kCGLCEDisplayListOptimization CEDisplayListOptimization}, {@link #kCGLCEMPEngine CEMPEngine}
 */
	static public function CGLDisable(ctx:haxe.Int64,pname:Int):Int;
/**
 * Reports whether an option is enabled for a rendering context.
 *
 * @param ctx    a rendering context
 * @param pname  the option to query. One of:<br>{@link #kCGLCESwapRectangle CESwapRectangle}, {@link #kCGLCESwapLimit CESwapLimit}, {@link #kCGLCERasterization CERasterization}, {@link #kCGLCEStateValidation CEStateValidation}, {@link #kCGLCESurfaceBackingSize CESurfaceBackingSize}, {@link #kCGLCEDisplayListOptimization CEDisplayListOptimization}, {@link #kCGLCEMPEngine CEMPEngine}
 * @param enable on return, enable is set to true if the option is enabled
 */
/** Alternative version of: {@link #CGLIsEnabled IsEnabled}  */
	static public function CGLIsEnabled(ctx:haxe.Int64,pname:Int,enable:java.nio.IntBuffer):Int;
	@:overload(function (ctx:haxe.Int64,pname:Int,enable:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #CGLErrorString ErrorString}  */
	static public function nCGLErrorString(error:Int):haxe.Int64;
/** JNI method for {@link #CGLUpdateContext UpdateContext}  */
	static public function nCGLUpdateContext(ctx:haxe.Int64):Int;
/**
 * Frees the resources associated with a rendering context.
 * 
 * <p>Starting in Mac OS 10.5, CGL rendering contexts are reference counted. For compatibility reasons, calling CGLDestroyContext clears the drawable
 * associated with the rendering context. Calling CGLDestroyContext is the equivalent of calling both {@link #CGLClearDrawable ClearDrawable} and
 * {@link #CGLReleaseContext ReleaseContext}.</p>
 *
 * @param ctx the rendering context to destroy
 */
	static public function CGLDestroyContext(ctx:haxe.Int64):Int;
/** JNI method for {@link #CGLCopyContext CopyContext}  */
	static public function nCGLCopyContext(src:haxe.Int64,dst:haxe.Int64,mask:Int):Int;
/** JNI method for {@link #CGLDescribeRenderer DescribeRenderer}  */
	static public function nCGLDescribeRenderer(rend:haxe.Int64,rend_num:Int,prop:Int,value:haxe.Int64):Int;
/** JNI method for {@link #CGLSetVirtualScreen SetVirtualScreen}  */
	static public function nCGLSetVirtualScreen(ctx:haxe.Int64,screen:Int):Int;
/**
 * Returns the current retain count of a CGL rendering context.
 *
 * @param ctx the CGL rendering context whose retain count you wish to discover
 */
	static public function CGLGetContextRetainCount(ctx:haxe.Int64):Int;
/** Single value version of: {@link #CGLSetParameter SetParameter}  */
/**
 * Sets the value of a rendering context parameter.
 *
 * @param ctx    a rendering context
 * @param pname  the parameter whose value you want to set. One of:<br>{@link #kCGLCPSwapRectangle CPSwapRectangle}, {@link #kCGLCPSwapInterval CPSwapInterval}, {@link #kCGLCPDispatchTableSize CPDispatchTableSize}, {@link #kCGLCPClientStorage CPClientStorage}, {@link #kCGLCPSurfaceTexture CPSurfaceTexture}, {@link #kCGLCPSurfaceOrder CPSurfaceOrder}, {@link #kCGLCPSurfaceOpacity CPSurfaceOpacity}, {@link #kCGLCPSurfaceBackingSize CPSurfaceBackingSize}, {@link #kCGLCPSurfaceSurfaceVolatile CPSurfaceSurfaceVolatile}, {@link #kCGLCPReclaimResources CPReclaimResources}, {@link #kCGLCPCurrentRendererID CPCurrentRendererID}, {@link #kCGLCPGPUVertexProcessing CPGPUVertexProcessing}, {@link #kCGLCPGPUFragmentProcessing CPGPUFragmentProcessing}, {@link #kCGLCPHasDrawable CPHasDrawable}, {@link #kCGLCPMPSwapsInFlight CPMPSwapsInFlight}
 * @param params a pointer to the value to set the parameter to
 */
/** Alternative version of: {@link #CGLSetParameter SetParameter}  */
	static public function CGLSetParameter(ctx:haxe.Int64,pname:Int,params:java.nio.IntBuffer):Int;
	@:overload(function (ctx:haxe.Int64,pname:Int,param:Int):Int {})
	@:overload(function (ctx:haxe.Int64,pname:Int,params:java.nio.ByteBuffer):Int {})
/**
 * Returns the sharegroup of the specified rendering context.
 *
 * @param ctx a rendering context
 */
	static public function CGLGetShareGroup(ctx:haxe.Int64):haxe.Int64;
/**
 * 
 *
 * @param ctx a rendering context
 */
	static public function CGLUpdateContext(ctx:haxe.Int64):Int;
/** JNI method for {@link #CGLGetPixelFormat GetPixelFormat}  */
	static public function nCGLGetPixelFormat(ctx:haxe.Int64):haxe.Int64;
/**
 * Creates a CGL rendering context.
 *
 * @param pix   a pixel format object created by calling the function {@link #CGLChoosePixelFormat ChoosePixelFormat}
 * @param share the rendering context with which to share the OpenGL object state — including texture objects, programs and shader display lists, vertex array
 *              objects, vertex buffer objects, pixel buffer objects, and frame buffer objects — and the object state associated which each of these object types.
 *              Pass {@code NULL} to indicate that no sharing is to take place.
 * @param ctx   the memory address of a context object. On return, points to a new context object with the buffers and attributes specified by the {@code pix}
 *              parameter. If the context can not be created as specified, the value of {@code ctx} is set to {@code NULL}.
 */
/** Alternative version of: {@link #CGLCreateContext CreateContext}  */
	static public function CGLCreateContext(pix:haxe.Int64,share:haxe.Int64,ctx:org.lwjgl.PointerBuffer):Int;
	@:overload(function (pix:haxe.Int64,share:haxe.Int64,ctx:java.nio.ByteBuffer):Int {})
/**
 * Retrieves the values of an attribute associated with a pixel format object.
 *
 * @param pix     the pixel format object to query
 * @param pix_num the virtual screen number whose attribute value you want to retrieve. This value must be between 0 and the number of virtual screens minus one.
 * @param attrib  the attribute whose value you want to obtain. One of:<br>{@link #kCGLPFAAllRenderers PFAAllRenderers}, {@link #kCGLPFATripleBuffer PFATripleBuffer}, {@link #kCGLPFADoubleBuffer PFADoubleBuffer}, {@link #kCGLPFAStereo PFAStereo}, {@link #kCGLPFAColorSize PFAColorSize}, {@link #kCGLPFAAlphaSize PFAAlphaSize}, {@link #kCGLPFADepthSize PFADepthSize}, {@link #kCGLPFAStencilSize PFAStencilSize}, {@link #kCGLPFAMinimumPolicy PFAMinimumPolicy}, {@link #kCGLPFAMaximumPolicy PFAMaximumPolicy}, {@link #kCGLPFASampleBuffers PFASampleBuffers}, {@link #kCGLPFASamples PFASamples}, {@link #kCGLPFAColorFloat PFAColorFloat}, {@link #kCGLPFAMultisample PFAMultisample}, {@link #kCGLPFASupersample PFASupersample}, {@link #kCGLPFASampleAlpha PFASampleAlpha}, {@link #kCGLPFARendererID PFARendererID}, {@link #kCGLPFASingleRenderer PFASingleRenderer}, {@link #kCGLPFANoRecovery PFANoRecovery}, {@link #kCGLPFAAccelerated PFAAccelerated}, {@link #kCGLPFAClosestPolicy PFAClosestPolicy}, {@link #kCGLPFABackingStore PFABackingStore}, {@link #kCGLPFABackingVolatile PFABackingVolatile}, {@link #kCGLPFADisplayMask PFADisplayMask}, {@link #kCGLPFAAllowOfflineRenderers PFAAllowOfflineRenderers}, {@link #kCGLPFAAcceleratedCompute PFAAcceleratedCompute}, {@link #kCGLPFAOpenGLProfile PFAOpenGLProfile}, {@link #kCGLPFASupportsAutomaticGraphicsSwitching PFASupportsAutomaticGraphicsSwitching}, {@link #kCGLPFAVirtualScreenCount PFAVirtualScreenCount}, {@link #kCGLPFAAuxBuffers PFAAuxBuffers}, {@link #kCGLPFAAccumSize PFAAccumSize}, {@link #kCGLPFAOffScreen PFAOffScreen}, {@link #kCGLPFAAuxDepthStencil PFAAuxDepthStencil}, {@link #kCGLPFAWindow PFAWindow}, {@link #kCGLPFACompliant PFACompliant}, {@link #kCGLPFAPBuffer PFAPBuffer}, {@link #kCGLPFARemotePBuffer PFARemotePBuffer}, {@link #kCGLPFARobust PFARobust}, {@link #kCGLPFAMPSafe PFAMPSafe}, {@link #kCGLPFAMultiScreen PFAMultiScreen}, {@link #kCGLPFAFullScreen PFAFullScreen}
 * @param value   on return, points to the value of the attribute
 */
/** Alternative version of: {@link #CGLDescribePixelFormat DescribePixelFormat}  */
	static public function CGLDescribePixelFormat(pix:haxe.Int64,pix_num:Int,attrib:Int,value:java.nio.IntBuffer):Int;
	@:overload(function (pix:haxe.Int64,pix_num:Int,attrib:Int,value:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #CGLDescribePixelFormat DescribePixelFormat}  */
	static public function nCGLDescribePixelFormat(pix:haxe.Int64,pix_num:Int,attrib:Int,value:haxe.Int64):Int;
/**
 * Locks a CGL rendering context.
 * 
 * <p>The function CGLLockContext blocks the thread it is on until all other threads have unlocked the same context using the function
 * {@link #CGLUnlockContext UnlockContext}. You can use CGLLockContext recursively. Context-specific CGL calls by themselves do not require locking, but you can
 * guarantee serial processing for a group of calls by surrounding them with CGLLockContext and CGLUnlockContext. Keep in mind that calls from the OpenGL
 * API (the API provided by the Architecture Review Board) require locking.</p>
 * 
 * <p>Applications that use NSOpenGL classes with multithreading can lock contexts using the functions CGLLockContext and CGLUnlockContext. To perform
 * rendering in a thread other than the main one, you can lock the context that you want to access and safely execute OpenGL commands. The locking calls
 * must be placed around all OpenGL calls in all threads.</p>
 *
 * @param context a rendering context
 */
	static public function CGLLockContext(context:haxe.Int64):Int;
/** JNI method for {@link #CGLFlushDrawable FlushDrawable}  */
	static public function nCGLFlushDrawable(ctx:haxe.Int64):Int;
/** JNI method for {@link #CGLGetGlobalOption GetGlobalOption}  */
	static public function nCGLGetGlobalOption(pname:Int,params:haxe.Int64):Int;
/**
 * Decrements the reference count of a pixel format object.
 * 
 * <p>The system retains the pixel format object when you call the function {@link #CGLCreateContext CreateContext}, so you can release a pixel format object immediately
 * after passing it to the context creation function.</p>
 * 
 * <p>Each call to CGLReleasePixelFormat decreases the reference count by 1. If the reference count reaches 0, the pixel format object is destroyed.</p>
 *
 * @param pix the pixel format object whose reference count should be decremented
 */
	static public function CGLReleasePixelFormat(pix:haxe.Int64):Void;
/**
 * Gets the major and minor version numbers of the CGL library.
 *
 * @param majorvers on return, points to the major version number of the CGL library
 * @param minorvers on return, points to the minor version number of the CGL library
 */
/** Alternative version of: {@link #CGLGetVersion GetVersion}  */
	static public function CGLGetVersion(majorvers:java.nio.IntBuffer,minorvers:java.nio.IntBuffer):Void;
	@:overload(function (majorvers:java.nio.ByteBuffer,minorvers:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #CGLGetVersion GetVersion}  */
	static public function nCGLGetVersion(majorvers:haxe.Int64,minorvers:haxe.Int64):Void;
/**
 * Frees resources associated with a renderer information object.
 *
 * @param rend the renderer information object to destroy
 */
	static public function CGLDestroyRendererInfo(rend:haxe.Int64):Int;
/** JNI method for {@link #CGLDestroyContext DestroyContext}  */
	static public function nCGLDestroyContext(ctx:haxe.Int64):Int;
/**
 * Gets the current virtual screen number associated with a rendering context.
 * 
 * <p>The current virtual screen can change when a drawable object is moved or resized across graphics device boundaries. A change in the current virtual
 * screen can affect the return values of some OpenGL functions and in most cases also means that the renderer has changed.</p>
 *
 * @param ctx    a rendering context
 * @param screen on return, points to the virtual screen associated with the context. The value is always 0 on a single-display system and –1 if the function fails
 *               for any reason.
 */
/** Alternative version of: {@link #CGLGetVirtualScreen GetVirtualScreen}  */
	static public function CGLGetVirtualScreen(ctx:haxe.Int64,screen:java.nio.IntBuffer):Int;
	@:overload(function (ctx:haxe.Int64,screen:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #CGLSetCurrentContext SetCurrentContext}  */
	static public function nCGLSetCurrentContext(context:haxe.Int64):Int;
/**
 * Creates a pixel format object that satisfies the constraints of the specified buffer and renderer attributes.
 *
 * @param attribs a 0 terminated array that contains a list of buffer and renderer attributes. Attributes can be Boolean or integer. If an attribute is integer, you
 *                must supply the desired value immediately following the attribute. If the attribute is Boolean, do not supply a value because its presence in the
 *                attributes array implies a true value. One of:<br>{@link #kCGLPFAAllRenderers PFAAllRenderers}, {@link #kCGLPFATripleBuffer PFATripleBuffer}, {@link #kCGLPFADoubleBuffer PFADoubleBuffer}, {@link #kCGLPFAStereo PFAStereo}, {@link #kCGLPFAColorSize PFAColorSize}, {@link #kCGLPFAAlphaSize PFAAlphaSize}, {@link #kCGLPFADepthSize PFADepthSize}, {@link #kCGLPFAStencilSize PFAStencilSize}, {@link #kCGLPFAMinimumPolicy PFAMinimumPolicy}, {@link #kCGLPFAMaximumPolicy PFAMaximumPolicy}, {@link #kCGLPFASampleBuffers PFASampleBuffers}, {@link #kCGLPFASamples PFASamples}, {@link #kCGLPFAColorFloat PFAColorFloat}, {@link #kCGLPFAMultisample PFAMultisample}, {@link #kCGLPFASupersample PFASupersample}, {@link #kCGLPFASampleAlpha PFASampleAlpha}, {@link #kCGLPFARendererID PFARendererID}, {@link #kCGLPFASingleRenderer PFASingleRenderer}, {@link #kCGLPFANoRecovery PFANoRecovery}, {@link #kCGLPFAAccelerated PFAAccelerated}, {@link #kCGLPFAClosestPolicy PFAClosestPolicy}, {@link #kCGLPFABackingStore PFABackingStore}, {@link #kCGLPFABackingVolatile PFABackingVolatile}, {@link #kCGLPFADisplayMask PFADisplayMask}, {@link #kCGLPFAAllowOfflineRenderers PFAAllowOfflineRenderers}, {@link #kCGLPFAAcceleratedCompute PFAAcceleratedCompute}, {@link #kCGLPFAOpenGLProfile PFAOpenGLProfile}, {@link #kCGLPFASupportsAutomaticGraphicsSwitching PFASupportsAutomaticGraphicsSwitching}, {@link #kCGLPFAVirtualScreenCount PFAVirtualScreenCount}, {@link #kCGLPFAAuxBuffers PFAAuxBuffers}, {@link #kCGLPFAAccumSize PFAAccumSize}, {@link #kCGLPFAOffScreen PFAOffScreen}, {@link #kCGLPFAAuxDepthStencil PFAAuxDepthStencil}, {@link #kCGLPFAWindow PFAWindow}, {@link #kCGLPFACompliant PFACompliant}, {@link #kCGLPFAPBuffer PFAPBuffer}, {@link #kCGLPFARemotePBuffer PFARemotePBuffer}, {@link #kCGLPFARobust PFARobust}, {@link #kCGLPFAMPSafe PFAMPSafe}, {@link #kCGLPFAMultiScreen PFAMultiScreen}, {@link #kCGLPFAFullScreen PFAFullScreen}
 * @param pix     the memory address of a pixel format object. On return, points to a new pixel format object that contains pixel format information and a list of
 *                virtual screens. If there are no pixel formats or virtual screens that satisfy the constraints of the buffer and renderer attributes, the value of
 *                pix is set to {@code NULL}.
 * @param npix    on return, points to the number of virtual screens referenced by pix. If pix is {@code NULL}, the value of {@code npix} is set to 0.
 */
/** Alternative version of: {@link #CGLChoosePixelFormat ChoosePixelFormat}  */
	static public function CGLChoosePixelFormat(attribs:java.nio.IntBuffer,pix:org.lwjgl.PointerBuffer,npix:java.nio.IntBuffer):Int;
	@:overload(function (attribs:java.nio.ByteBuffer,pix:java.nio.ByteBuffer,npix:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #CGLRetainPixelFormat RetainPixelFormat}  */
	static public function nCGLRetainPixelFormat(pix:haxe.Int64):haxe.Int64;
/**
 * Copies the back buffer of a double-buffered context to the front buffer.
 * 
 * <p>To create a double-buffered context, specify the {@link #kCGLPFADoubleBuffer PFADoubleBuffer} attribute when you create the pixel format object for the rendering
 * context. If the backing store attribute is set to false, the buffers can be exchanged rather than copied. This is often the case in full-screen mode. If
 * the receiver is not a double-buffered context, this call does nothing.</p>
 * 
 * <p>If you set the swap interval attribute ({@link #kCGLCPSwapInterval CPSwapInterval}) appropriately, the copy takes place during the vertical retrace of the display,
 * rather than immediately after CGLFlushDrawable is called. An implicit {@link GL11#glFlush} operation is performed by CGLFlushDrawable
 * before it returns. For optimal performance, an application should not call glFlush immediately before calling CGLFlushDrawable. Subsequent OpenGL
 * commands can be issued immediately after calling CGLFlushDrawable, but are not executed until the buffer copy is completed.</p>
 *
 * @param ctx the context object
 */
	static public function CGLFlushDrawable(ctx:haxe.Int64):Int;
/** JNI method for {@link #CGLGetPixelFormatRetainCount GetPixelFormatRetainCount}  */
	static public function nCGLGetPixelFormatRetainCount(pix:haxe.Int64):Int;
/**
 * Disassociates a rendering context from any drawable objects attached to it.
 *
 * @param ctx a rendering context
 */
	static public function CGLClearDrawable(ctx:haxe.Int64):Int;
/**
 * Enables an option for a rendering context.
 *
 * @param ctx   a rendering context
 * @param pname the option to enable. One of:<br>{@link #kCGLCESwapRectangle CESwapRectangle}, {@link #kCGLCESwapLimit CESwapLimit}, {@link #kCGLCERasterization CERasterization}, {@link #kCGLCEStateValidation CEStateValidation}, {@link #kCGLCESurfaceBackingSize CESurfaceBackingSize}, {@link #kCGLCEDisplayListOptimization CEDisplayListOptimization}, {@link #kCGLCEMPEngine CEMPEngine}
 */
	static public function CGLEnable(ctx:haxe.Int64,pname:Int):Int;
/** JNI method for {@link #CGLUnlockContext UnlockContext}  */
	static public function nCGLUnlockContext(context:haxe.Int64):Int;
/** JNI method for {@link #CGLDestroyPixelFormat DestroyPixelFormat}  */
	static public function nCGLDestroyPixelFormat(pix:haxe.Int64):Int;
/** JNI method for {@link #CGLGetContextRetainCount GetContextRetainCount}  */
	static public function nCGLGetContextRetainCount(ctx:haxe.Int64):Int;
/**
 * Sets the specified rendering context as the current rendering context.
 * 
 * <p>There can be only one current rendering context. Subsequent OpenGL rendering calls operate on the current rendering context to modify the drawable
 * object associated with it.</p>
 * 
 * <p>You can use AGL macros to bypass the current rendering context mechanism and maintain your own current rendering context.</p>
 * 
 * <p>A context is current on a per-thread basis. Multiple threads must serialize calls into the same context.</p>
 *
 * @param context the rendering context to set as the current rendering context. Pass {@code NULL} to release the current rendering context without assigning a new one.
 */
	static public function CGLSetCurrentContext(context:haxe.Int64):Int;
/** JNI method for {@link #CGLReleasePixelFormat ReleasePixelFormat}  */
	static public function nCGLReleasePixelFormat(pix:haxe.Int64):Void;
/** JNI method for {@link #CGLLockContext LockContext}  */
	static public function nCGLLockContext(context:haxe.Int64):Int;
/** JNI method for {@link #CGLClearDrawable ClearDrawable}  */
	static public function nCGLClearDrawable(ctx:haxe.Int64):Int;
/**
 * Increments the retain count on a CGL rendering context.
 * 
 * <p>Each call to CGLRetainContext increases the retain count by 1. To prevent memory leaks, each retain call must be balanced with a call to
 * {@link #CGLReleaseContext ReleaseContext}.</p>
 *
 * @param ctx the rendering context to be retained
 *
 * @return the same context that was passed into the function.
 */
	static public function CGLRetainContext(ctx:haxe.Int64):haxe.Int64;
/**
 * Retrieves the current pixel format associated with a CGL rendering context.
 * 
 * <p>The pixel format object is not retained before being returned to your application. If your application needs to maintain this object, it should call
 * {@link #CGLRetainPixelFormat RetainPixelFormat}.</p>
 *
 * @param ctx the CGL rendering context whose format you want to receive
 */
	static public function CGLGetPixelFormat(ctx:haxe.Int64):haxe.Int64;
/**
 * Forces subsequent OpenGL commands to the specified virtual screen.
 * 
 * <p>Setting the virtual screen forces the renderer associated with the virtual screen to process OpenGL commands issued to the specified context. Changing
 * the virtual screen changes the current renderer. You should use this function only when it is necessary to override the default behavior. The current
 * virtual screen is normally set automatically. Because the current virtual screen determines which OpenGL renderer is processing commands, the return
 * values of all glGetXXX functions can be affected by the current virtual screen.</p>
 *
 * @param ctx    a rendering context
 * @param screen a virtual screen number, which must be a value between 0 and the number of virtual screens minus one. The number of virtual screens available in a
 *               context can be obtained by calling the function {@link #CGLDescribePixelFormat DescribePixelFormat}, passing in the pixel format object used to create the rendering
 *               context, 0 for the virtual screen number ({@code pix_num} parameter), and the attribute constant {@link #kCGLPFAVirtualScreenCount PFAVirtualScreenCount}.
 */
	static public function CGLSetVirtualScreen(ctx:haxe.Int64,screen:Int):Int;
/** JNI method for {@link #CGLDestroyRendererInfo DestroyRendererInfo}  */
	static public function nCGLDestroyRendererInfo(rend:haxe.Int64):Int;
/**
 * Unlocks a CGL rendering context.
 *
 * @param context the CGL context to unlock
 */
	static public function CGLUnlockContext(context:haxe.Int64):Int;
/**
 * Obtains the value associated with a renderer property.
 *
 * @param rend     an opaque renderer information object that contains a description of the renderer capabilities you want to inspect. You can obtain a renderer
 *                 information object by calling the function {@link #CGLQueryRendererInfo QueryRendererInfo}. You must call {@link #CGLDestroyRendererInfo DestroyRendererInfo} when you no longer need this
 *                 object.
 * @param rend_num the index of the renderer inside the renderer information object — a value between 0 and the number of renderers minus one. The number of renderers
 *                 can be obtained by calling {@link #CGLDescribeRenderer DescribeRenderer}, passing in {@code rend}, renderer number 0, and the renderer property
 *                 {@link #kCGLRPRendererCount RPRendererCount}.
 * @param prop     the renderer property whose value you want to obtain. One of:<br>{@link #kCGLRPOffScreen RPOffScreen}, {@link #kCGLRPRendererID RPRendererID}, {@link #kCGLRPAccelerated RPAccelerated}, {@link #kCGLRPBackingStore RPBackingStore}, {@link #kCGLRPWindow RPWindow}, {@link #kCGLRPCompliant RPCompliant}, {@link #kCGLRPDisplayMask RPDisplayMask}, {@link #kCGLRPBufferModes RPBufferModes}, {@link #kCGLRPColorModes RPColorModes}, {@link #kCGLRPAccumModes RPAccumModes}, {@link #kCGLRPDepthModes RPDepthModes}, {@link #kCGLRPStencilModes RPStencilModes}, {@link #kCGLRPMaxAuxBuffers RPMaxAuxBuffers}, {@link #kCGLRPMaxSampleBuffers RPMaxSampleBuffers}, {@link #kCGLRPMaxSamples RPMaxSamples}, {@link #kCGLRPSampleModes RPSampleModes}, {@link #kCGLRPSampleAlpha RPSampleAlpha}, {@link #kCGLRPVideoMemory RPVideoMemory}, {@link #kCGLRPTextureMemory RPTextureMemory}, {@link #kCGLRPGPUVertProcCapable RPGPUVertProcCapable}, {@link #kCGLRPGPUFragProcCapable RPGPUFragProcCapable}, {@link #kCGLRPRendererCount RPRendererCount}, {@link #kCGLRPOnline RPOnline}, {@link #kCGLRPAcceleratedCompute RPAcceleratedCompute}, {@link #kCGLRPVideoMemoryMegabytes RPVideoMemoryMegabytes}, {@link #kCGLRPTextureMemoryMegabytes RPTextureMemoryMegabytes}, {@link #kCGLRPRobust RPRobust}, {@link #kCGLRPMPSafe RPMPSafe}, {@link #kCGLRPMultiScreen RPMultiScreen}, {@link #kCGLRPFullScreen RPFullScreen}
 * @param value    on return, points to the value of the requested property
 */
/** Alternative version of: {@link #CGLDescribeRenderer DescribeRenderer}  */
	static public function CGLDescribeRenderer(rend:haxe.Int64,rend_num:Int,prop:Int,value:java.nio.IntBuffer):Int;
	@:overload(function (rend:haxe.Int64,rend_num:Int,prop:Int,value:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #CGLSetParameter SetParameter}  */
	static public function nCGLSetParameter(ctx:haxe.Int64,pname:Int,params:haxe.Int64):Int;
/**
 * Creates a renderer information object that contains properties and values for renderers able to drive all the specified displays in a given display
 * mask.
 *
 * @param display_mask a bit field that contains the bitwise OR of OpenGL display masks returned by the CGDisplayIDToOpenGLDisplayMask function. If you want to obtain
 *                     information for all renderers in the system you must call CGLQueryRendererInfo once for each display bit.
 * @param rend         the memory address of a renderer information object. On return, points to a renderer information object that describes all renderers that are able
 *                     to drive the displays specified by the {@code display_mask} parameter. If {@code display_mask} does not specify any displays, the value of
 *                     {@code rend} is set to {@code NULL}. You must call {@link #CGLDestroyRendererInfo DestroyRendererInfo} when you no longer need this object.
 * @param nrend        on return, points to the number of renderers described in the renderer information object. If {@code display_mask} does not specify any displays,
 *                     the value of {@code nrend} is set to 0.
 */
/** Alternative version of: {@link #CGLQueryRendererInfo QueryRendererInfo}  */
	static public function CGLQueryRendererInfo(display_mask:Int,rend:org.lwjgl.PointerBuffer,nrend:java.nio.IntBuffer):Int;
	@:overload(function (display_mask:Int,rend:java.nio.ByteBuffer,nrend:java.nio.ByteBuffer):Int {})
/**
 * Copies the specified state variables from one rendering context to another.
 *
 * @param src  the source rendering context
 * @param dst  the destination rendering context
 * @param mask a mask that specifies the state variables to copy. Pass a bit field that contains the bitwise OR of the state variable names that you want to copy.
 *             Use the symbolic mask constants that are passed to the OpenGL function {@link GL11#glPushAttrib}. To copy as many state variables
 *             as possible, supply the constant {@link GL11#GL_ALL_ATTRIB_BITS}.
 */
	static public function CGLCopyContext(src:haxe.Int64,dst:haxe.Int64,mask:Int):Int;
/**
 * Retrieves the value of a global option.
 *
 * @param pname  the name of the option whose value you want to get. One of:<br>{@link #kCGLGOFormatCacheSize GOFormatCacheSize}, {@link #kCGLGOClearFormatCache GOClearFormatCache}, {@link #kCGLGORetainRenderers GORetainRenderers}, {@link #kCGLGOResetLibrary GOResetLibrary}, {@link #kCGLGOUseErrorHandler GOUseErrorHandler}, {@link #kCGLGOUseBuildCache GOUseBuildCache}
 * @param params on return, a pointer to the value of the option
 */
/** Alternative version of: {@link #CGLGetGlobalOption GetGlobalOption}  */
	static public function CGLGetGlobalOption(pname:Int,params:java.nio.IntBuffer):Int;
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #CGLSetGlobalOption SetGlobalOption}  */
	static public function nCGLSetGlobalOption(pname:Int,params:haxe.Int64):Int;
/** Returns the current rendering context. If there is none, returns {@code NULL}.  */
	static public function CGLGetCurrentContext():haxe.Int64;
/**
 * Frees the memory associated with a pixel format object. Calling this function is equivalent to calling {@link #CGLReleasePixelFormat ReleasePixelFormat}.
 *
 * @param pix the pixel format object to destroy
 */
	static public function CGLDestroyPixelFormat(pix:haxe.Int64):Int;
/** JNI method for {@link #CGLCreateContext CreateContext}  */
	static public function nCGLCreateContext(pix:haxe.Int64,share:haxe.Int64,ctx:haxe.Int64):Int;
/** JNI method for {@link #CGLEnable Enable}  */
	static public function nCGLEnable(ctx:haxe.Int64,pname:Int):Int;
/** JNI method for {@link #CGLIsEnabled IsEnabled}  */
	static public function nCGLIsEnabled(ctx:haxe.Int64,pname:Int,enable:haxe.Int64):Int;
/**
 * Returns a string that describes the specified result code.
 *
 * @param error the CGL result code constant returned from a CGL function. One of:<br>{@link #kCGLNoError NoError}, {@link #kCGLBadAttribute BadAttribute}, {@link #kCGLBadProperty BadProperty}, {@link #kCGLBadPixelFormat BadPixelFormat}, {@link #kCGLBadRendererInfo BadRendererInfo}, {@link #kCGLBadContext BadContext}, {@link #kCGLBadDrawable BadDrawable}, {@link #kCGLBadDisplay BadDisplay}, {@link #kCGLBadState BadState}, {@link #kCGLBadValue BadValue}, {@link #kCGLBadMatch BadMatch}, {@link #kCGLBadEnumeration BadEnumeration}, {@link #kCGLBadOffScreen BadOffScreen}, {@link #kCGLBadFullScreen BadFullScreen}, {@link #kCGLBadWindow BadWindow}, {@link #kCGLBadAddress BadAddress}, {@link #kCGLBadCodeModule BadCodeModule}, {@link #kCGLBadAlloc BadAlloc}, {@link #kCGLBadConnection BadConnection}
 */
	static public function CGLErrorString(error:Int):String;
/** JNI method for {@link #CGLDisable Disable}  */
	static public function nCGLDisable(ctx:haxe.Int64,pname:Int):Int;
/** JNI method for {@link #CGLGetShareGroup GetShareGroup}  */
	static public function nCGLGetShareGroup(ctx:haxe.Int64):haxe.Int64;
/** JNI method for {@link #CGLChoosePixelFormat ChoosePixelFormat}  */
	static public function nCGLChoosePixelFormat(attribs:haxe.Int64,pix:haxe.Int64,npix:haxe.Int64):Int;
/**
 * Returns the retain count of a pixel format object.
 *
 * @param pix a pixel format object
 */
	static public function CGLGetPixelFormatRetainCount(pix:haxe.Int64):Int;
/** JNI method for {@link #CGLRetainContext RetainContext}  */
	static public function nCGLRetainContext(ctx:haxe.Int64):haxe.Int64;
/** JNI method for {@link #CGLGetVirtualScreen GetVirtualScreen}  */
	static public function nCGLGetVirtualScreen(ctx:haxe.Int64,screen:haxe.Int64):Int;
/**
 * Retrieves the value of a rendering context parameter.
 *
 * @param ctx    a rendering context
 * @param pname  the parameter whose value you want to retrieve. One of:<br>{@link #kCGLCPSwapRectangle CPSwapRectangle}, {@link #kCGLCPSwapInterval CPSwapInterval}, {@link #kCGLCPDispatchTableSize CPDispatchTableSize}, {@link #kCGLCPClientStorage CPClientStorage}, {@link #kCGLCPSurfaceTexture CPSurfaceTexture}, {@link #kCGLCPSurfaceOrder CPSurfaceOrder}, {@link #kCGLCPSurfaceOpacity CPSurfaceOpacity}, {@link #kCGLCPSurfaceBackingSize CPSurfaceBackingSize}, {@link #kCGLCPSurfaceSurfaceVolatile CPSurfaceSurfaceVolatile}, {@link #kCGLCPReclaimResources CPReclaimResources}, {@link #kCGLCPCurrentRendererID CPCurrentRendererID}, {@link #kCGLCPGPUVertexProcessing CPGPUVertexProcessing}, {@link #kCGLCPGPUFragmentProcessing CPGPUFragmentProcessing}, {@link #kCGLCPHasDrawable CPHasDrawable}, {@link #kCGLCPMPSwapsInFlight CPMPSwapsInFlight}
 * @param params on return, points to the value of the parameter
 */
/** Alternative version of: {@link #CGLGetParameter GetParameter}  */
	static public function CGLGetParameter(ctx:haxe.Int64,pname:Int,params:java.nio.IntBuffer):Int;
	@:overload(function (ctx:haxe.Int64,pname:Int,params:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #CGLGetParameter GetParameter}  */
	static public function nCGLGetParameter(ctx:haxe.Int64,pname:Int,params:haxe.Int64):Int;
/** Single value version of: {@link #CGLSetGlobalOption SetGlobalOption}  */
/**
 * Sets the value of a global option.
 *
 * @param pname  the name of the option whose value you want to set. One of:<br>{@link #kCGLGOFormatCacheSize GOFormatCacheSize}, {@link #kCGLGOClearFormatCache GOClearFormatCache}, {@link #kCGLGORetainRenderers GORetainRenderers}, {@link #kCGLGOResetLibrary GOResetLibrary}, {@link #kCGLGOUseErrorHandler GOUseErrorHandler}, {@link #kCGLGOUseBuildCache GOUseBuildCache}
 * @param params the value to set the option to
 */
/** Alternative version of: {@link #CGLSetGlobalOption SetGlobalOption}  */
	static public function CGLSetGlobalOption(pname:Int,params:java.nio.IntBuffer):Int;
	@:overload(function (pname:Int,param:Int):Int {})
	@:overload(function (pname:Int,params:java.nio.ByteBuffer):Int {})
/**
 * Decrements the retain count on a CGL rendering context.
 * 
 * <p>Each call to CGLReleaseContext decreases the retain count by 1.</p>
 * 
 * <p>When the retain count reaches 0, all resources associated with the rendering context are freed. If the rendering context that you pass is the current
 * rendering context and it is freed, the current context is set to {@code NULL} and there is no current rendering context after the function executes. After the
 * context is freed, you must make sure you do not use the destroyed rendering context. This includes using CGL macros in which the rendering context is
 * explicitly passed to OpenGL.</p>
 *
 * @param ctx the rendering context to be released
 */
	static public function CGLReleaseContext(ctx:haxe.Int64):Void;
/** JNI method for {@link #CGLReleaseContext ReleaseContext}  */
	static public function nCGLReleaseContext(ctx:haxe.Int64):Void;

}
