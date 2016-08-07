package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBBufferRegion")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_buffer_region.txt">WGL_ARB_buffer_region</a> extension.
 * 
 * <p>The buffer region extension is a mechanism that allows an area of an OpenGL window to be saved in off-screen memory for quick restores. The off-screen
 * memory can either be frame buffer memory or system memory, although frame buffer memory might offer optimal performance.</p>
 * 
 * <p>A buffer region can be created for the front color, back color, depth, and/or stencil buffer.  Multiple buffer regions for the same buffer type can
 * exist.</p>
 */
extern class WGLARBBufferRegion 
{
/** Accepted by the {@code type} parameter of {@link #wglCreateBufferRegionARB CreateBufferRegionARB}.  */
	inline static public var WGL_FRONT_COLOR_BUFFER_BIT_ARB:Int = 1;
/** Accepted by the {@code type} parameter of {@link #wglCreateBufferRegionARB CreateBufferRegionARB}.  */
	inline static public var WGL_BACK_COLOR_BUFFER_BIT_ARB:Int = 2;
/** Accepted by the {@code type} parameter of {@link #wglCreateBufferRegionARB CreateBufferRegionARB}.  */
	inline static public var WGL_DEPTH_BUFFER_BIT_ARB:Int = 4;
/** Accepted by the {@code type} parameter of {@link #wglCreateBufferRegionARB CreateBufferRegionARB}.  */
	inline static public var WGL_STENCIL_BUFFER_BIT_ARB:Int = 8;
/** Function address.  */
	public var CreateBufferRegionARB:haxe.Int64;
/** Function address.  */
	public var DeleteBufferRegionARB:haxe.Int64;
/** Function address.  */
	public var SaveBufferRegionARB:haxe.Int64;
/** Function address.  */
	public var RestoreBufferRegionARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #wglSaveBufferRegionARB SaveBufferRegionARB}  */
	static public function nwglSaveBufferRegionARB(region:haxe.Int64,x:Int,y:Int,width:Int,height:Int,__functionAddress:haxe.Int64):Int;
/** JNI method for {@link #wglCreateBufferRegionARB CreateBufferRegionARB}  */
	static public function nwglCreateBufferRegionARB(hdc:haxe.Int64,layerPlane:Int,type:Int,__functionAddress:haxe.Int64):haxe.Int64;
/**
 * Deletes a buffer region.
 *
 * @param region a handle to a buffer region previously created with {@link #wglCreateBufferRegionARB CreateBufferRegionARB}.
 */
	static public function wglDeleteBufferRegionARB(region:haxe.Int64):Void;
/**
 * Creates a buffer region and returns a handle associated with it.
 *
 * @param hdc        the device context for the device on which the buffer region is created
 * @param layerPlane the layer plane. Positive values identify overlay planes, negative values identify underlay planes. A value of 0 identifies the main plane.
 * @param type       a bitwise OR of any of the following values indicating which buffers can be saved or restored.  Multiple bits can be set and may result in better
 *                   performance if multiple buffers are saved or restored. One of:<br>{@link #WGL_FRONT_COLOR_BUFFER_BIT_ARB FRONT_COLOR_BUFFER_BIT_ARB}, {@link #WGL_BACK_COLOR_BUFFER_BIT_ARB BACK_COLOR_BUFFER_BIT_ARB}, {@link #WGL_DEPTH_BUFFER_BIT_ARB DEPTH_BUFFER_BIT_ARB}, {@link #WGL_STENCIL_BUFFER_BIT_ARB STENCIL_BUFFER_BIT_ARB}
 */
	static public function wglCreateBufferRegionARB(hdc:haxe.Int64,layerPlane:Int,type:Int):haxe.Int64;
/**
 * Saves image, depth, and stencil data into the buffer region.
 * 
 * <p>Data outside the window for the specified rectangle is undefined. The OpenGL coordinate system is used for specifying the rectangle ({@code x} and
 * {@code y} specify the lower-left corner of the rectangle).</p>
 * 
 * <p>If an RC is current to the calling thread, a flush will occur before the save operation.</p>
 * 
 * <p>The saved buffer region area can be freed by calling {@code wglSaveBufferRegionARB} with {@code width} or {@code height} set to a value of 0.</p>
 *
 * @param region a handle to a buffer region previously created with {@link #wglCreateBufferRegionARB CreateBufferRegionARB}.
 * @param x      the window x-coordinate for the source rectangle
 * @param y      the window y-coordinate for the source rectangle
 * @param width  the source rectangle width
 * @param height the source rectangle height
 */
	static public function wglSaveBufferRegionARB(region:haxe.Int64,x:Int,y:Int,width:Int,height:Int):Int;
/** JNI method for {@link #wglDeleteBufferRegionARB DeleteBufferRegionARB}  */
	static public function nwglDeleteBufferRegionARB(region:haxe.Int64,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #wglRestoreBufferRegionARB RestoreBufferRegionARB}  */
	static public function nwglRestoreBufferRegionARB(region:haxe.Int64,x:Int,y:Int,width:Int,height:Int,xSrc:Int,ySrc:Int,__functionAddress:haxe.Int64):Int;
/**
 * Restores a previously saved buffer region.
 *
 * @param region a handle to a buffer region previously created with {@link #wglCreateBufferRegionARB CreateBufferRegionARB}.
 * @param x      the window x-coordinate for the destination rectangle
 * @param y      the window y-coordinate for the destination rectangle
 * @param width  the destination rectangle width
 * @param height the destination rectangle height
 * @param xSrc   the buffer region x-coordinate for the source of the data
 * @param ySrc   the buffer region y-coordinate for the source of the data
 */
	static public function wglRestoreBufferRegionARB(region:haxe.Int64,x:Int,y:Int,width:Int,height:Int,xSrc:Int,ySrc:Int):Int;
/** Returns the {@link WGLARBBufferRegion} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLARBBufferRegion;

}
