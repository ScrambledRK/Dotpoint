package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLNVCopyImage")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/copy_image.txt">WGL_NV_copy_image</a> extension.
 * 
 * <p>This extension enables efficient image data transfer between image objects (i.e. textures and renderbuffers) without the need to bind the objects or
 * otherwise configure the rendering pipeline. The WGL version allows copying between images in different contexts, even if those contexts are in
 * different sharelists or even on different physical devices.</p>
 */
extern class WGLNVCopyImage 
{
/** Function address.  */
	public var CopyImageSubDataNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Behaves identically to the core function {@link NVCopyImage#glCopyImageSubDataNV}, except that the {@code srcRC} and {@code dstRC} parameters specify
 * the contexts in which to look up the source and destination objects, respectively. A value of zero indicates that the currently bound context should be
 * used instead.
 *
 * @param srcRC     the source OpenGL context
 * @param srcName   the source object
 * @param srcTarget the source object target
 * @param srcLevel  the source level-of-detail number
 * @param srcX      the source texel x coordinate
 * @param srcY      the source texel y coordinate
 * @param srcZ      the source texel z coordinate
 * @param dstRC     the destination OpenGL context
 * @param dstName   the destination object
 * @param dstTarget the destination object target
 * @param dstLevel  the destination level-of-detail number
 * @param dstX      the destination texel x coordinate
 * @param dstY      the destination texel y coordinate
 * @param dstZ      the destination texel z coordinate
 * @param width     the number of texels to copy in the x-dimension
 * @param height    the number of texels to copy in the y-dimension
 * @param depth     the number of texels to copy in the z-dimension
 */
	static public function wglCopyImageSubDataNV(srcRC:haxe.Int64,srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstRC:haxe.Int64,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,width:Int,height:Int,depth:Int):Int;
/** JNI method for {@link #wglCopyImageSubDataNV CopyImageSubDataNV}  */
	static public function nwglCopyImageSubDataNV(srcRC:haxe.Int64,srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstRC:haxe.Int64,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,width:Int,height:Int,depth:Int,__functionAddress:haxe.Int64):Int;
/** Returns the {@link WGLNVCopyImage} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLNVCopyImage;

}
