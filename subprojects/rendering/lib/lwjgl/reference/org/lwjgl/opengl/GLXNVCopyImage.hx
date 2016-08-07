package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXNVCopyImage")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/copy_image.txt">GLX_NV_copy_image</a> extension.
 * 
 * <p>This extension enables efficient image data transfer between image objects (i.e. textures and renderbuffers) without the need to bind the objects or
 * otherwise configure the rendering pipeline. The GLX version allows copying between images in different contexts, even if those contexts are in different
 * sharelists or even on different physical devices.</p>
 */
extern class GLXNVCopyImage 
{
/** Function address.  */
	public var CopyImageSubDataNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Behaves identically to the core function {@link NVCopyImage#glCopyImageSubDataNV}, except that the {@code srcCtx} and {@code dstCtx} parameters specify
 * the contexts in which to look up the source and destination objects, respectively. A value of {@code NULL} for either context indicates that the value which is
 * returned by {@link GLX#glXGetCurrentContext GetCurrentContext} should be used instead. Both contexts must share the same address space.
 *
 * @param display   the connection to the X server
 * @param srcCtx    the source context
 * @param srcName   
 * @param srcTarget 
 * @param srcLevel  
 * @param srcX      
 * @param srcY      
 * @param srcZ      
 * @param dstCtx    the destination context
 * @param dstName   
 * @param dstTarget 
 * @param dstLevel  
 * @param dstX      
 * @param dstY      
 * @param dstZ      
 * @param width     
 * @param height    
 * @param depth     
 */
	static public function glXCopyImageSubDataNV(display:haxe.Int64,srcCtx:haxe.Int64,srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstCtx:haxe.Int64,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,width:Int,height:Int,depth:Int):Void;
/** Returns the {@link GLXNVCopyImage} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXNVCopyImage;
/** JNI method for {@link #glXCopyImageSubDataNV CopyImageSubDataNV}  */
	static public function nglXCopyImageSubDataNV(display:haxe.Int64,srcCtx:haxe.Int64,srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstCtx:haxe.Int64,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,width:Int,height:Int,depth:Int,__functionAddress:haxe.Int64):Void;

}
