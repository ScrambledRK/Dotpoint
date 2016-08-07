package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTFramebufferBlit")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/framebuffer_blit.txt">EXT_framebuffer_blit</a> extension.
 * 
 * <p>This extension modifies EXT_framebuffer_object by splitting the framebuffer object binding point into separate DRAW and READ bindings. This allows
 * copying directly from one framebuffer to another. In addition, a new high performance blit function is added to facilitate these blits and perform some
 * data conversion where allowed.</p>
 * 
 * <p>Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class EXTFramebufferBlit 
{
/**
 * Accepted by the {@code target} parameter of BindFramebufferEXT, CheckFramebufferStatusEXT, FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT,
 * and GetFramebufferAttachmentParameterivEXT.
 */
	inline static public var GL_READ_FRAMEBUFFER_EXT:Int = 36008;
/**
 * Accepted by the {@code target} parameter of BindFramebufferEXT, CheckFramebufferStatusEXT, FramebufferTexture{1D|2D|3D}EXT, FramebufferRenderbufferEXT,
 * and GetFramebufferAttachmentParameterivEXT.
 */
	inline static public var GL_DRAW_FRAMEBUFFER_EXT:Int = 36009;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_DRAW_FRAMEBUFFER_BINDING_EXT:Int = 36006;
/** Accepted by the {@code pname} parameters of GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_READ_FRAMEBUFFER_BINDING_EXT:Int = 36010;
/** Function address.  */
	public var BlitFramebufferEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glBlitFramebufferEXT BlitFramebufferEXT}  */
	static public function nglBlitFramebufferEXT(srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param srcX0  
 * @param srcY0  
 * @param srcX1  
 * @param srcY1  
 * @param dstX0  
 * @param dstY0  
 * @param dstX1  
 * @param dstY1  
 * @param mask   
 * @param filter 
 */
	static public function glBlitFramebufferEXT(srcX0:Int,srcY0:Int,srcX1:Int,srcY1:Int,dstX0:Int,dstY0:Int,dstX1:Int,dstY1:Int,mask:Int,filter:Int):Void;
/** Returns the {@link EXTFramebufferBlit} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTFramebufferBlit;

}
