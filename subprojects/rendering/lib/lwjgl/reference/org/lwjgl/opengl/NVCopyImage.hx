package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVCopyImage")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/copy_image.txt">NV_copy_image</a> extension.
 * 
 * <p>This extension enables efficient image data transfer between image objects (i.e. textures and renderbuffers) without the need to bind the objects or
 * otherwise configure the rendering pipeline. The WGL and GLX versions allow copying between images in different contexts, even if those contexts are in
 * different sharelists or even on different physical devices.</p>
 */
extern class NVCopyImage 
{
/** Function address.  */
	public var CopyImageSubDataNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glCopyImageSubDataNV CopyImageSubDataNV}  */
	static public function nglCopyImageSubDataNV(srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,width:Int,height:Int,depth:Int,__functionAddress:haxe.Int64):Void;
/**
 * Copies a region of texel data between two image objects. An image object may be either a texture or a renderbuffer.
 *
 * @param srcName   
 * @param srcTarget 
 * @param srcLevel  
 * @param srcX      
 * @param srcY      
 * @param srcZ      
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
	static public function glCopyImageSubDataNV(srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,width:Int,height:Int,depth:Int):Void;
/** Returns the {@link NVCopyImage} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVCopyImage;

}
