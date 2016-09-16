package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBDrawBuffersBlend")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/draw_buffers_blend.txt">ARB_draw_buffers_blend</a> extension.
 * 
 * <p>This extension builds upon the {@link ARBDrawBuffers ARB_draw_buffers} and <a href="http://www.opengl.org/registry/specs/EXT/draw_buffers2.txt">EXT_draw_buffers2</a> extensions. In ARB_draw_buffers (part of OpenGL
 * 2.0), separate values could be written to each color buffer. This was further enhanced by EXT_draw_buffers2 by adding in the ability to enable blending
 * and to set color write masks independently per color output.</p>
 * 
 * <p>This extension provides the ability to set individual blend equations and blend functions for each color output.</p>
 * 
 * <p>Requires {@link GL20 OpenGL 2.0} and <a href="http://www.opengl.org/registry/specs/EXT/draw_buffers2.txt">EXT_draw_buffers2</a>. Promoted to core in {@link GL40 OpenGL 4.0}.</p>
 */
extern class ARBDrawBuffersBlend 
{
/** Function address.  */
	public var BlendEquationiARB:haxe.Int64;
/** Function address.  */
	public var BlendEquationSeparateiARB:haxe.Int64;
/** Function address.  */
	public var BlendFunciARB:haxe.Int64;
/** Function address.  */
	public var BlendFuncSeparateiARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Provides a way to enable blending and set color write masks independently per color output.
 * 
 * <p>This call modifies the blend equations associated with an individual draw buffer.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if the {@code buf} parameter is outside the range [0, {@link GL20#GL_MAX_DRAW_BUFFERS MAX_DRAW_BUFFERS} &ndash; 1].</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if either {@code modeRGB} or {@code modeAlpha} are not one of {@link GL14#GL_FUNC_ADD FUNC_ADD},
 * {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MAX MAX}, or {@link GL14#GL_MIN MIN}.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated if this method is executed between the execution of {@link GL11#glBegin Begin} and the corresponding execution
 * of {@link GL11#glEnd End}.</p>
 *
 * @param buf       an integer that indicates the {@link GL11#GL_DRAW_BUFFER DRAW_BUFFER} to modify.
 * @param modeRGB   the RGB blend equation. One of:<br>{@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MIN MIN}, {@link GL14#GL_MAX MAX}
 * @param modeAlpha the alpha blend equation. One of:<br>{@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MIN MIN}, {@link GL14#GL_MAX MAX}
 */
	static public function glBlendEquationSeparateiARB(buf:Int,modeRGB:Int,modeAlpha:Int):Void;
/** JNI method for {@link #glBlendEquationSeparateiARB BlendEquationSeparateiARB}  */
	static public function nglBlendEquationSeparateiARB(buf:Int,modeRGB:Int,modeAlpha:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBlendFuncSeparateiARB BlendFuncSeparateiARB}  */
	static public function nglBlendFuncSeparateiARB(buf:Int,srcRGB:Int,dstRGB:Int,srcAlpha:Int,dstAlpha:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBlendFunciARB BlendFunciARB}  */
	static public function nglBlendFunciARB(buf:Int,src:Int,dst:Int,__functionAddress:haxe.Int64):Void;
/**
 * Provides a way to enable blending and set color write masks independently per color output.
 * 
 * <p>This call modifies the blend functions associated with an individual draw buffer.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if the {@code buf} parameter is outside the range [0, {@link GL20#GL_MAX_DRAW_BUFFERS MAX_DRAW_BUFFERS} &ndash; 1].</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if either {@code src}, or {@code dst} is not an accepted value.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated if this method is executed between the execution of {@link GL11#glBegin Begin} and the corresponding execution
 * of {@link GL11#glEnd End}.</p>
 *
 * @param buf an integer that indicates the {@link GL11#GL_DRAW_BUFFER DRAW_BUFFER} to modify.
 * @param src determines both RGB and alpha source functions
 * @param dst determines both RGB and alpha destination functions
 */
	static public function glBlendFunciARB(buf:Int,src:Int,dst:Int):Void;
/** JNI method for {@link #glBlendEquationiARB BlendEquationiARB}  */
	static public function nglBlendEquationiARB(buf:Int,mode:Int,__functionAddress:haxe.Int64):Void;
/**
 * Provides a way to enable blending and set color write masks independently per color output.
 * 
 * <p>This call modifies the blend functions associated with an individual draw buffer.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if the {@code buf} parameter is outside the range [0, {@link GL20#GL_MAX_DRAW_BUFFERS MAX_DRAW_BUFFERS} &ndash; 1].</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if either {@code srcRGB}, {@code dstRGB}, {@code srcAlpha}, or {@code dstAlpha} is not an accepted value.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated if this method is executed between the execution of {@link GL11#glBegin Begin} and the corresponding execution
 * of {@link GL11#glEnd End}.</p>
 *
 * @param buf      an integer that indicates the {@link GL11#GL_DRAW_BUFFER DRAW_BUFFER} to modify.
 * @param srcRGB   the source RGB blend function
 * @param dstRGB   the destination RGB blend function
 * @param srcAlpha the source alpha blend function
 * @param dstAlpha the destination alpha blend function
 */
	static public function glBlendFuncSeparateiARB(buf:Int,srcRGB:Int,dstRGB:Int,srcAlpha:Int,dstAlpha:Int):Void;
/** Returns the {@link ARBDrawBuffersBlend} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBDrawBuffersBlend;
/**
 * Provides a way to enable blending and set color write masks independently per color output.
 * 
 * <p>This call modifies the blend equations associated with an individual draw buffer.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if the {@code buf} parameter is outside the range [0, {@link GL20#GL_MAX_DRAW_BUFFERS MAX_DRAW_BUFFERS} &ndash; 1].</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_ENUM INVALID_ENUM} is generated if {@code mode} is not one of {@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT},
 * {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MAX MAX}, or {@link GL14#GL_MIN MIN}.</p>
 * 
 * <p>The error {@link GL11#GL_INVALID_OPERATION INVALID_OPERATION} is generated if this method is executed between the execution of {@link GL11#glBegin Begin} and the corresponding execution
 * of {@link GL11#glEnd End}.</p>
 *
 * @param buf  an integer that indicates the {@link GL11#GL_DRAW_BUFFER DRAW_BUFFER} to modify.
 * @param mode determines both the RGB and alpha blend equations. One of:<br>{@link GL14#GL_FUNC_ADD FUNC_ADD}, {@link GL14#GL_FUNC_SUBTRACT FUNC_SUBTRACT}, {@link GL14#GL_FUNC_REVERSE_SUBTRACT FUNC_REVERSE_SUBTRACT}, {@link GL14#GL_MIN MIN}, {@link GL14#GL_MAX MAX}
 */
	static public function glBlendEquationiARB(buf:Int,mode:Int):Void;

}