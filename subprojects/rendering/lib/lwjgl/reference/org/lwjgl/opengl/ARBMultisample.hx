package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBMultisample")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/multisample.txt">ARB_multisample</a> extension.
 * 
 * <p>This extension provides a mechanism to antialias all GL primitives: points, lines, polygons, bitmaps, and images. The technique is to sample all
 * primitives multiple times at each pixel. The color sample values are resolved to a single, displayable color each time a pixel is updated, so the
 * antialiasing appears to be automatic at the application level. Because each sample includes depth and stencil information, the depth and stencil
 * functions perform equivalently to the single-sample mode.</p>
 * 
 * <p>An additional buffer, called the multisample buffer, is added to the framebuffer. Pixel sample values, including color, depth, and stencil values, are
 * stored in this buffer. When the framebuffer includes a multisample buffer, it does not also include separate depth or stencil buffers, even if the
 * multisample buffer does not store depth or stencil values. Color buffers (left/right, front/back, and aux) do coexist with the multisample buffer,
 * however.</p>
 * 
 * <p>Multisample antialiasing is most valuable for rendering polygons, because it requires no sorting for hidden surface elimination, and it correctly
 * handles adjacent polygons, object silhouettes, and even intersecting polygons. If only points or lines are being rendered, the "smooth" antialiasing
 * mechanism provided by the base GL may result in a higher quality image. This extension is designed to allow multisample and smooth antialiasing
 * techniques to be alternated during the rendering of a single scene.</p>
 */
extern class ARBMultisample 
{
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_MULTISAMPLE_ARB:Int = 32925;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_ALPHA_TO_COVERAGE_ARB:Int = 32926;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_ALPHA_TO_ONE_ARB:Int = 32927;
/**
 * Accepted by the {@code cap} parameter of Enable, Disable, and IsEnabled, and by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and
 * GetDoublev.
 */
	inline static public var GL_SAMPLE_COVERAGE_ARB:Int = 32928;
/** Accepted by the {@code mask} parameter of PushAttrib.  */
	inline static public var GL_MULTISAMPLE_BIT_ARB:Int = 536870912;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLE_BUFFERS_ARB:Int = 32936;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLES_ARB:Int = 32937;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLE_COVERAGE_VALUE_ARB:Int = 32938;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetIntegerv, and GetFloatv.  */
	inline static public var GL_SAMPLE_COVERAGE_INVERT_ARB:Int = 32939;
/** Function address.  */
	public var SampleCoverageARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Specifies simultaneously the values of {@link #GL_SAMPLE_COVERAGE_VALUE_ARB SAMPLE_COVERAGE_VALUE_ARB} and {@link #GL_SAMPLE_COVERAGE_INVERT_ARB SAMPLE_COVERAGE_INVERT_ARB}.
 * 
 * <p>If {@link #GL_SAMPLE_COVERAGE_ARB SAMPLE_COVERAGE_ARB} is enabled, the fragment coverage is ANDed with another temporary coverage. This temporary coverage is a function of the value
 * of {@link #GL_SAMPLE_COVERAGE_VALUE_ARB SAMPLE_COVERAGE_VALUE_ARB}. If {@link #GL_SAMPLE_COVERAGE_INVERT_ARB SAMPLE_COVERAGE_INVERT_ARB} is {@link GL11#GL_TRUE TRUE}, the temporary coverage is inverted (all bit values are inverted) before it
 * is ANDed with the fragment coverage.</p>
 *
 * @param value  the desired coverage value
 * @param invert if true, the temporary coverage is inverted. One of:<br>{@link GL11#GL_TRUE TRUE}, {@link GL11#GL_FALSE FALSE}
 */
	static public function glSampleCoverageARB(value:Float,invert:Bool):Void;
/** Returns the {@link ARBMultisample} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBMultisample;
/** JNI method for {@link #glSampleCoverageARB SampleCoverageARB}  */
	static public function nglSampleCoverageARB(value:Float,invert:Bool,__functionAddress:haxe.Int64):Void;

}
