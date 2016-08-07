package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTBlendFuncSeparate")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/blend_func_separate.txt">EXT_blend_func_separate</a> extension.
 * 
 * <p>Blending capability is extended by defining a function that allows independent setting of the RGB and alpha blend factors for blend operations that
 * require source and destination blend factors. It is not always desired that the blending used for RGB is also applied to alpha.</p>
 * 
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class EXTBlendFuncSeparate 
{
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_DST_RGB_EXT:Int = 32968;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_SRC_RGB_EXT:Int = 32969;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_DST_ALPHA_EXT:Int = 32970;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_SRC_ALPHA_EXT:Int = 32971;
/** Function address.  */
	public var BlendFuncSeparateEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Returns the {@link EXTBlendFuncSeparate} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTBlendFuncSeparate;
/**
 * 
 *
 * @param sfactorRGB   
 * @param dfactorRGB   
 * @param sfactorAlpha 
 * @param dfactorAlpha 
 */
	static public function glBlendFuncSeparateEXT(sfactorRGB:Int,dfactorRGB:Int,sfactorAlpha:Int,dfactorAlpha:Int):Void;
/** JNI method for {@link #glBlendFuncSeparateEXT BlendFuncSeparateEXT}  */
	static public function nglBlendFuncSeparateEXT(sfactorRGB:Int,dfactorRGB:Int,sfactorAlpha:Int,dfactorAlpha:Int,__functionAddress:haxe.Int64):Void;

}
