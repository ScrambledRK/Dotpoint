package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.NVFragmentCoverageToColor")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/NV/fragment_coverage_to_color.txt">NV_fragment_coverage_to_color</a> extension.
 * 
 * <p>This extension allows the fragment coverage value, represented as an
 * integer bitfield, to be substituted for a color output being written to a
 * single-component color buffer with integer components (e.g., R8UI).  The
 * capability provided by this extension is different from simply writing the
 * gl_SampleMask fragment shader output in that the coverage value written to
 * the framebuffer is taken after alpha test, stencil test, and depth test,
 * as well as after the multisample fragment operations such as
 * alpha-to-coverage.</p>
 */
extern class NVFragmentCoverageToColor 
{
/** Accepted by the {@code cap} parameter of Enable, Disable, IsEnabled.  */
	inline static public var GL_FRAGMENT_COVERAGE_TO_COLOR_NV:Int = 37597;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_FRAGMENT_COVERAGE_COLOR_NV:Int = 37598;
/** Function address.  */
	public var FragmentCoverageColorNV:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glFragmentCoverageColorNV FragmentCoverageColorNV}  */
	static public function nglFragmentCoverageColorNV(color:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link NVFragmentCoverageToColor} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.NVFragmentCoverageToColor;
/**
 * 
 *
 * @param color the draw buffer index that the coverage value will be written to. Must be between 0 and the value of MAX_DRAW_BUFFERS minus one, inclusive.
 */
	static public function glFragmentCoverageColorNV(color:Int):Void;

}
