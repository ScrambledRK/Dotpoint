package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBInvalidateSubdata")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/invalidate_subdata.txt">ARB_invalidate_subdata</a> extension.
 * 
 * <p>This extension adds a mechanism for an application to tell the GL that the previous contents of a subregion of an image or a range of a buffer may be
 * invalidated.</p>
 * 
 * <p>GL implementations often include several memory spaces, each with distinct performance characteristics, and the implementations transparently move
 * allocations between memory spaces. With this extension, an application can tell the GL that the contents of a texture or buffer are no longer needed,
 * and the implementation can avoid transferring the data unnecessarily.</p>
 * 
 * <p>Examples of when this may be useful include:
 * <ol>
 * <li>invalidating a multisample texture after resolving it into a non-multisample texture.</li>
 * <li>invalidating depth/stencil buffers after using them to generate a color buffer.</li>
 * <li>invalidating a subregion of a framebuffer rather than clearing it before rendering to it, when the whole subregion will be overwritten.</li>
 * <li>invalidating dynamically generated data (e.g. textures written by FBO rendering or CopyTexSubImage, buffers written by transform feedback, etc.)
 * after it is no longer needed but before the end of the frame.</li>
 * </ol>
 * It is expected that the situations in which the GL will take advantage of this knowledge and achieve increased performance as a result of its use will
 * be implementation-dependent. The first three examples may show benefit on tiled renderers where some data won't need to be copied into or out of on-chip
 * memory. The fourth example may show a benefit in multi-GPU systems where some data won't need to be copied between GPUs.</p>
 * 
 * <p>This extension is a superset of the <a href="http://www.opengl.org/registry/specs/EXT/discard_framebuffer.txt">EXT_discard_framebuffer</a> extension with the following additions:
 * <ul>
 * <li>The parameters to InvalidateFramebufferEXT are extended for MRT support and Desktop-GL-only buffer enums.</li>
 * <li>New functions to invalidate a region of a texture image or buffer object data store.</li>
 * </ul>
 * Requires {@link GL20 OpenGL 2.0}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBInvalidateSubdata 
{
/** Function address.  */
	public var InvalidateTexSubImage:haxe.Int64;
/** Function address.  */
	public var InvalidateTexImage:haxe.Int64;
/** Function address.  */
	public var InvalidateBufferSubData:haxe.Int64;
/** Function address.  */
	public var InvalidateBufferData:haxe.Int64;
/** Function address.  */
	public var InvalidateFramebuffer:haxe.Int64;
/** Function address.  */
	public var InvalidateSubFramebuffer:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Invalidates a region of a buffer object's data store.
 *
 * @param buffer the name of a buffer object, a subrange of whose data store to invalidate
 * @param offset the offset within the buffer's data store of the start of the range to be invalidated
 * @param length the length of the range within the buffer's data store to be invalidated
 */
	static public function glInvalidateBufferSubData(buffer:Int,offset:haxe.Int64,length:haxe.Int64):Void;
/** Single value version of: {@link #glInvalidateSubFramebuffer InvalidateSubFramebuffer}  */
/** Alternative version of: {@link #glInvalidateSubFramebuffer InvalidateSubFramebuffer}  */
/**
 * Invalidates the content of a region of some or all of a framebuffer object's attachments.
 *
 * @param target         the target to which the framebuffer is attached. One of:<br>{@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}
 * @param numAttachments the number of entries in the {@code attachments} array
 * @param attachments    an array identifying the attachments to be invalidated
 * @param x              the X offset of the region to be invalidated
 * @param y              the Y offset of the region to be invalidated
 * @param width          the width of the region to be invalidated
 * @param height         the height of the region to be invalidated
 */
	static public function glInvalidateSubFramebuffer(target:Int,numAttachments:Int,attachments:java.nio.ByteBuffer,x:Int,y:Int,width:Int,height:Int):Void;
	@:overload(function (target:Int,attachment:Int,x:Int,y:Int,width:Int,height:Int):Void {})
	@:overload(function (target:Int,attachments:java.nio.IntBuffer,x:Int,y:Int,width:Int,height:Int):Void {})
/**
 * Invalidates the entirety of a texture image.
 *
 * @param texture the name of a texture object to invalidate
 * @param level   the level of detail of the texture object to invalidate
 */
	static public function glInvalidateTexImage(texture:Int,level:Int):Void;
/** Single value version of: {@link #glInvalidateFramebuffer InvalidateFramebuffer}  */
/** Alternative version of: {@link #glInvalidateFramebuffer InvalidateFramebuffer}  */
/**
 * Invalidate the content some or all of a framebuffer object's attachments.
 *
 * @param target         the target to which the framebuffer is attached. One of:<br>{@link GL30#GL_FRAMEBUFFER FRAMEBUFFER}, {@link GL30#GL_DRAW_FRAMEBUFFER DRAW_FRAMEBUFFER}, {@link GL30#GL_READ_FRAMEBUFFER READ_FRAMEBUFFER}
 * @param numAttachments the number of entries in the {@code attachments} array
 * @param attachments    the address of an array identifying the attachments to be invalidated
 */
	static public function glInvalidateFramebuffer(target:Int,numAttachments:Int,attachments:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,attachment:Int):Void {})
	@:overload(function (target:Int,attachments:java.nio.IntBuffer):Void {})
/**
 * Invalidates the content of a buffer object's data store.
 *
 * @param buffer the name of a buffer object whose data store to invalidate
 */
	static public function glInvalidateBufferData(buffer:Int):Void;
/** Returns the {@link ARBInvalidateSubdata} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBInvalidateSubdata;
/**
 * Invalidates a region of a texture image.
 *
 * @param texture the name of a texture object a subregion of which to invalidate
 * @param level   the level of detail of the texture object within which the region resides
 * @param xoffset the X offset of the region to be invalidated
 * @param yoffset the Y offset of the region to be invalidated
 * @param zoffset the Z offset of the region to be invalidated
 * @param width   the width of the region to be invalidated
 * @param height  the height of the region to be invalidated
 * @param depth   the depth of the region to be invalidated
 */
	static public function glInvalidateTexSubImage(texture:Int,level:Int,xoffset:Int,yoffset:Int,zoffset:Int,width:Int,height:Int,depth:Int):Void;
/** Unsafe version of {@link #glInvalidateFramebuffer InvalidateFramebuffer}  */
	static public function nglInvalidateFramebuffer(target:Int,numAttachments:Int,attachments:haxe.Int64):Void;
/** Unsafe version of {@link #glInvalidateSubFramebuffer InvalidateSubFramebuffer}  */
	static public function nglInvalidateSubFramebuffer(target:Int,numAttachments:Int,attachments:haxe.Int64,x:Int,y:Int,width:Int,height:Int):Void;

}
