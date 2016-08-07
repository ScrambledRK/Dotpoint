package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTBlendMinmax")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/blend_minmax.txt">EXT_blend_minmax</a> extension.
 * 
 * <p>Blending capability is extended by respecifying the entire blend equation. While this document defines only two new equations, the {@link #glBlendEquationEXT BlendEquationEXT}
 * procedure that it defines will be used by subsequent extensions to define additional blending equations.</p>
 * 
 * <p>The two new equations defined by this extension produce the minimum (or maximum) color components of the source and destination colors. Taking the
 * maximum is useful for applications such as maximum projection in medical imaging.</p>
 * 
 * <p>Promoted to core in {@link GL14 OpenGL 1.4}.</p>
 */
extern class EXTBlendMinmax 
{
/** Accepted by the {@code mode} parameter of BlendEquationEXT.  */
	inline static public var GL_FUNC_ADD_EXT:Int = 32774;
/** Accepted by the {@code mode} parameter of BlendEquationEXT.  */
	inline static public var GL_MIN_EXT:Int = 32775;
/** Accepted by the {@code mode} parameter of BlendEquationEXT.  */
	inline static public var GL_MAX_EXT:Int = 32776;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_BLEND_EQUATION_EXT:Int = 32777;
/** Function address.  */
	public var BlendEquationEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glBlendEquationEXT BlendEquationEXT}  */
	static public function nglBlendEquationEXT(mode:Int,__functionAddress:haxe.Int64):Void;
/**
 * 
 *
 * @param mode 
 */
	static public function glBlendEquationEXT(mode:Int):Void;
/** Returns the {@link EXTBlendMinmax} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTBlendMinmax;

}
