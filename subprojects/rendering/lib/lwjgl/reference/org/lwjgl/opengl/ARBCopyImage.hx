package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBCopyImage")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/copy_image.txt">ARB_copy_image</a> extension.
 * 
 * <p>This extension enables efficient image data transfer between image objects (i.e. textures and renderbuffers) without the need to bind the objects or
 * otherwise configure the rendering pipeline.</p>
 * 
 * <p>This is accomplised by adding a new entry-point {@link #glCopyImageSubData CopyImageSubData}, which takes a named source and destination.</p>
 * 
 * <p>CopyImageSubData does not perform general-purpose conversions such as scaling, resizing, blending, color-space, or format conversions. It should be
 * considered to operate in a manner similar to a CPU {@code memcpy}, but using the GPU for the copy.</p>
 * 
 * <p>CopyImageSubData supports copies between images with different internal formats, if the formats are compatible for TextureViews.</p>
 * 
 * <p>CopyImageSubData also supports copying between compressed and uncompressed images if the compressed block / uncompressed texel sizes are the same.</p>
 * 
 * <p>Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBCopyImage 
{
/** Function address.  */
	public var CopyImageSubData:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Performs a raw data copy between two images.
 *
 * @param srcName   the name of a texture or renderbuffer object from which to copy
 * @param srcTarget the target representing the namespace of the source name {@code srcName}
 * @param srcLevel  the mipmap level to read from the source
 * @param srcX      the X coordinate of the left edge of the souce region to copy
 * @param srcY      the Y coordinate of the top edge of the souce region to copy
 * @param srcZ      the Z coordinate of the near edge of the souce region to copy
 * @param dstName   the name of a texture or renderbuffer object to which to copy
 * @param dstTarget the target representing the namespace of the destination name {@code dstName}
 * @param dstLevel  the mipmap level to write to the source
 * @param dstX      the X coordinate of the left edge of the destination region
 * @param dstY      the Y coordinate of the top edge of the destination region
 * @param dstZ      the Z coordinate of the near edge of the destination region
 * @param srcWidth  the width of the region to be copied
 * @param srcHeight the height of the region to be copied
 * @param srcDepth  the depth of the region to be copied
 */
	static public function glCopyImageSubData(srcName:Int,srcTarget:Int,srcLevel:Int,srcX:Int,srcY:Int,srcZ:Int,dstName:Int,dstTarget:Int,dstLevel:Int,dstX:Int,dstY:Int,dstZ:Int,srcWidth:Int,srcHeight:Int,srcDepth:Int):Void;
/** Returns the {@link ARBCopyImage} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBCopyImage;

}
