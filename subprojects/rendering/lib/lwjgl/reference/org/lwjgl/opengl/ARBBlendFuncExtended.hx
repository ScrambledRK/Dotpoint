package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBBlendFuncExtended")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/blend_func_extended.txt">ARB_blend_func_extended</a> extension.
 * 
 * <p>Traditional OpenGL includes fixed-function blending that combines source colors with the existing content of a render buffer in a variety of ways. A
 * number of extensions have enhanced this functionality by adding further sources of blending weights and methods to combine them. However, the inputs to
 * the fixed-function blending units are constrained to a source color (as output from fragment shading), destination color (as the current content of the
 * frame buffer) or constants that may be used in their place.</p>
 * 
 * <p>This extension adds new blending functions whereby a fragment shader may output two colors, one of which is treated as the source color, and the other
 * used as a blending factor for either source or destination colors. Furthermore, this extension increases orthogonality by allowing the
 * {@link GL11#GL_SRC_ALPHA_SATURATE SRC_ALPHA_SATURATE} function to be used as the destination weight.</p>
 * 
 * <p>Requires {@link ARBFragmentShader ARB_fragment_shader} and <a href="http://www.opengl.org/registry/specs/EXT/gpu_shader4.txt">EXT_gpu_shader4</a>. Promoted to core in {@link GL33 OpenGL 3.3}.</p>
 */
extern class ARBBlendFuncExtended 
{
/**
 * Accepted by the {@code src} and {@code dst} parameters of BlendFunc and BlendFunci, and by the {@code srcRGB}, {@code dstRGB}, {@code srcAlpha} and
 * {@code dstAlpha} parameters of BlendFuncSeparate and BlendFuncSeparatei.
 */
	inline static public var GL_SRC1_COLOR:Int = 35065;
/**
 * Accepted by the {@code src} and {@code dst} parameters of BlendFunc and BlendFunci, and by the {@code srcRGB}, {@code dstRGB}, {@code srcAlpha} and
 * {@code dstAlpha} parameters of BlendFuncSeparate and BlendFuncSeparatei.
 */
	inline static public var GL_ONE_MINUS_SRC1_COLOR:Int = 35066;
/**
 * Accepted by the {@code src} and {@code dst} parameters of BlendFunc and BlendFunci, and by the {@code srcRGB}, {@code dstRGB}, {@code srcAlpha} and
 * {@code dstAlpha} parameters of BlendFuncSeparate and BlendFuncSeparatei.
 */
	inline static public var GL_ONE_MINUS_SRC1_ALPHA:Int = 35067;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv and GetDoublev.  */
	inline static public var GL_MAX_DUAL_SOURCE_DRAW_BUFFERS:Int = 35068;
/** Function address.  */
	public var BindFragDataLocationIndexed:haxe.Int64;
/** Function address.  */
	public var GetFragDataIndex:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** CharSequence version of: {@link #glGetFragDataIndex GetFragDataIndex}  */
/**
 * Queries the bindings of color indices to user-defined varying out variables.
 *
 * @param program the name of the program containing varying out variable whose binding to query
 * @param name    the name of the user-defined varying out variable whose index to query
 */
	static public function glGetFragDataIndex(program:Int,name:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,name:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glBindFragDataLocationIndexed BindFragDataLocationIndexed}  */
	static public function nglBindFragDataLocationIndexed(program:Int,colorNumber:Int,index:Int,name:haxe.Int64):Void;
/** Unsafe version of {@link #glGetFragDataIndex GetFragDataIndex}  */
	static public function nglGetFragDataIndex(program:Int,name:haxe.Int64):Int;
/** Returns the {@link ARBBlendFuncExtended} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBBlendFuncExtended;
/** CharSequence version of: {@link #glBindFragDataLocationIndexed BindFragDataLocationIndexed}  */
/**
 * Binds a user-defined varying out variable to a fragment shader color number and index.
 *
 * @param program     the name of the program containing varying out variable whose binding to modify
 * @param colorNumber the color number to bind the user-defined varying out variable to
 * @param index       the index of the color input to bind the user-defined varying out variable to
 * @param name        the name of the user-defined varying out variable whose binding to modify
 */
	static public function glBindFragDataLocationIndexed(program:Int,colorNumber:Int,index:Int,name:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,colorNumber:Int,index:Int,name:java.lang.CharSequence):Void {})

}
