package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTBlendColor")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/blend_color.txt">EXT_blend_color</a> extension.
 * 
 * <p>Blending capability is extended by defining a constant color that can be included in blending equations. A typical usage is blending two RGB images.
 * Without the constant blend factor, one image must have an alpha channel with each pixel set to the desired blend factor.</p>
 * 
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class EXTBlendColor 
{
/** Accepted by the {@code sfactor} and {@code dfactor} parameters of BlendFunc.  */
	inline static public var GL_CONSTANT_COLOR_EXT:Int = 32769;
/** Accepted by the {@code sfactor} and {@code dfactor} parameters of BlendFunc.  */
	inline static public var GL_ONE_MINUS_CONSTANT_COLOR_EXT:Int = 32770;
/** Accepted by the {@code sfactor} and {@code dfactor} parameters of BlendFunc.  */
	inline static public var GL_CONSTANT_ALPHA_EXT:Int = 32771;
/** Accepted by the {@code sfactor} and {@code dfactor} parameters of BlendFunc.  */
	inline static public var GL_ONE_MINUS_CONSTANT_ALPHA_EXT:Int = 32772;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_COLOR_EXT:Int = 32773;
/** Function address.  */
	public var BlendColorEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Returns the {@link EXTBlendColor} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTBlendColor;
/** JNI method for {@link #glBlendColorEXT BlendColorEXT}  */
	static public function nglBlendColorEXT(red:Float,green:Float,blue:Float,alpha:Float,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param red   
 * @param green 
 * @param blue  
 * @param alpha 
 */
	static public function glBlendColorEXT(red:Float,green:Float,blue:Float,alpha:Float):Void;

}
